.class public final Lvd/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvd/a0;


# static fields
.field public static final s:Lorg/slf4j/Logger;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public b:I

.field public final c:Ljava/util/ArrayList;

.field public final d:Lvd/b0;

.field public e:J

.field public f:Ljava/lang/String;

.field public final g:Lvc/b;

.field public final h:Lvd/j;

.field public i:[B

.field public j:Z

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m:J

.field public n:Lad/h;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public r:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/z;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvc/b;Ljava/lang/String;Ljava/lang/String;Lvd/b0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lvd/z;->f:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    const-wide/16 v2, 0x1

    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lvd/z;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lvd/z;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    iput-object p1, p0, Lvd/z;->g:Lvc/b;

    .line 32
    .line 33
    iput-object p3, p0, Lvd/z;->p:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lvd/z;->q:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p4}, Lvd/b0;->b0()V

    .line 38
    .line 39
    .line 40
    iput-object p4, p0, Lvd/z;->d:Lvd/b0;

    .line 41
    .line 42
    new-instance p2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lvd/z;->c:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-interface {p1}, Lvc/b;->g()Lvd/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lvd/j;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-class p2, Lvd/j;

    .line 59
    .line 60
    const-class p3, Lvd/a;

    .line 61
    .line 62
    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_0

    .line 67
    .line 68
    move-object v0, p1

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance p1, Lvd/j;

    .line 73
    .line 74
    invoke-direct {p1}, Lvd/j;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object p2, v0, Lvd/j;->b:Ljava/lang/String;

    .line 78
    .line 79
    iput-object p2, p1, Lvd/j;->b:Ljava/lang/String;

    .line 80
    .line 81
    iget-object p2, v0, Lvd/j;->c:Ljava/lang/String;

    .line 82
    .line 83
    iput-object p2, p1, Lvd/j;->c:Ljava/lang/String;

    .line 84
    .line 85
    iget-object p2, v0, Lvd/j;->d:Ljava/lang/String;

    .line 86
    .line 87
    iput-object p2, p1, Lvd/j;->d:Ljava/lang/String;

    .line 88
    .line 89
    iget p2, v0, Lvd/j;->a:I

    .line 90
    .line 91
    iput p2, p1, Lvd/j;->a:I

    .line 92
    .line 93
    iput-object p1, p0, Lvd/z;->h:Lvd/j;

    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final A(Lvd/b0;Ljava/lang/String;Lod/f;Z)Lvd/o;
    .locals 2

    .line 1
    iget-object p2, p0, Lvd/z;->q:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p1, Lvd/b0;->n:Lsd/k;

    .line 8
    .line 9
    invoke-virtual {p2}, Lsd/k;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :try_start_0
    iget-object p1, p1, Lvd/b0;->n:Lsd/k;

    .line 14
    .line 15
    invoke-virtual {p1}, Lsd/k;->c()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    const-string v1, "Failed to resolve host name"

    .line 22
    .line 23
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Remote host is "

    .line 35
    .line 36
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lvd/z;->h:Lvd/j;

    .line 50
    .line 51
    iget-object v0, p0, Lvd/z;->d:Lvd/b0;

    .line 52
    .line 53
    iget-object v0, v0, Lvd/b0;->z:Lvc/b;

    .line 54
    .line 55
    iget-object p3, p3, Lod/f;->O:[B

    .line 56
    .line 57
    invoke-virtual {p1, v0, p2, p3, p4}, Lvd/j;->a(Lvc/b;Ljava/lang/String;[BZ)Lvd/o;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public final J()Lad/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/z;->n:Lad/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lvd/z;->d:Lvd/b0;

    .line 7
    .line 8
    iget-object v0, v0, Lvd/b0;->C:Lad/h;

    .line 9
    .line 10
    return-object v0
.end method

.method public final K(Ljava/lang/String;)Lvd/h0;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "IPC$"

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lvd/z;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lvd/z;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lvd/h0;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v2, p1, v4}, Lvd/h0;->L(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lvd/h0;->r(Z)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-object v2

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance v1, Lvd/h0;

    .line 42
    .line 43
    invoke-direct {v1, p0, p1}, Lvd/h0;-><init>(Lvd/z;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Lvd/h0;->r(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lvd/z;->c:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-object v1

    .line 56
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_2

    .line 58
    :goto_1
    throw p1

    .line 59
    :goto_2
    goto :goto_1
.end method

.method public final L()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvd/z;->J()Lad/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lvd/z;->d:Lvd/b0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lvd/b0;->o0()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_1
    iget-object v0, p0, Lvd/z;->d:Lvd/b0;

    .line 20
    .line 21
    invoke-virtual {v0}, Lvd/b0;->l0()Lad/k;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lad/k;->m()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public final M(ZZ)Z
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Logging off session while still in use "

    .line 4
    .line 5
    const-string v3, "Logging off session on "

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    iget-object v5, p0, Lvd/z;->d:Lvd/b0;

    .line 9
    .line 10
    invoke-virtual {v5}, Lvd/b0;->b0()V
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 11
    .line 12
    .line 13
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 14
    :try_start_2
    iget-object v6, p0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    const/4 v8, 0x3

    .line 18
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :try_start_3
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_3
    .catch Lvd/r; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 31
    .line 32
    .line 33
    iput-object v4, p0, Lvd/z;->n:Lad/h;

    .line 34
    .line 35
    iget-object p1, p0, Lvd/z;->d:Lvd/b0;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    const/4 p2, 0x0

    .line 43
    goto/16 :goto_9

    .line 44
    .line 45
    :catchall_0
    move-exception p1

    .line 46
    const/4 p2, 0x0

    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_0
    :try_start_4
    sget-object v6, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 50
    .line 51
    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v6, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iput-object v4, p0, Lvd/z;->f:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v3, p0, Lvd/z;->c:Ljava/util/ArrayList;

    .line 75
    .line 76
    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    :try_start_5
    iget-object v7, p0, Lvd/z;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    const-wide/16 v9, 0x1

    .line 86
    .line 87
    cmp-long v11, v7, v9

    .line 88
    .line 89
    if-nez v11, :cond_3

    .line 90
    .line 91
    :cond_2
    if-nez p2, :cond_4

    .line 92
    .line 93
    const-wide/16 v9, 0x0

    .line 94
    .line 95
    cmp-long p2, v7, v9

    .line 96
    .line 97
    if-lez p2, :cond_4

    .line 98
    .line 99
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, ":"

    .line 108
    .line 109
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lvd/z;->c:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-interface {v6, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    .line 123
    .line 124
    const/4 p2, 0x1

    .line 125
    goto :goto_0

    .line 126
    :catchall_1
    move-exception p1

    .line 127
    const/4 p2, 0x0

    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_4
    const/4 p2, 0x0

    .line 131
    :goto_0
    :try_start_6
    iget-object v2, p0, Lvd/z;->c:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_5

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Lvd/h0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 148
    .line 149
    :try_start_7
    sget-object v7, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 150
    .line 151
    const-string v8, "Disconnect tree on logoff"

    .line 152
    .line 153
    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, p1, v1}, Lvd/h0;->R(ZZ)Z

    .line 157
    .line 158
    .line 159
    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 160
    or-int/2addr p2, v6

    .line 161
    goto :goto_1

    .line 162
    :catchall_2
    move-exception p1

    .line 163
    goto/16 :goto_5

    .line 164
    .line 165
    :catch_1
    move-exception v7

    .line 166
    :try_start_8
    sget-object v8, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 167
    .line 168
    new-instance v9, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v10, "Failed to disconnect tree "

    .line 174
    .line 175
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-interface {v8, v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_5
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 190
    if-nez p1, :cond_6

    .line 191
    .line 192
    :try_start_9
    invoke-virtual {v5}, Lvd/b0;->n0()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_6

    .line 197
    .line 198
    new-instance p1, Lpd/a;

    .line 199
    .line 200
    iget-object v2, p0, Lvd/z;->g:Lvc/b;

    .line 201
    .line 202
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-direct {p1, v2}, Lpd/a;-><init>(Lvc/f;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lvd/z;->J()Lad/h;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {p1, v2}, Lid/b;->i(Lad/h;)V

    .line 214
    .line 215
    .line 216
    iget-wide v2, p0, Lvd/z;->m:J

    .line 217
    .line 218
    invoke-virtual {p1, v2, v3}, Lid/b;->f(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 219
    .line 220
    .line 221
    :try_start_a
    iget-object v2, p0, Lvd/z;->d:Lvd/b0;

    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v2, p1, v4, v3}, Lvd/b0;->t0(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;
    :try_end_a
    .catch Lvd/r; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :catchall_3
    move-exception p1

    .line 235
    goto :goto_6

    .line 236
    :catch_2
    move-exception p1

    .line 237
    :try_start_b
    sget-object v2, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 238
    .line 239
    const-string v3, "Smb2LogoffRequest failed"

    .line 240
    .line 241
    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_6
    if-nez p1, :cond_8

    .line 246
    .line 247
    invoke-virtual {v5}, Lvd/b0;->l0()Lad/k;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Lfd/j;

    .line 252
    .line 253
    iget-object p1, p1, Lfd/j;->H:Lfd/b;

    .line 254
    .line 255
    iget p1, p1, Lfd/b;->g:I

    .line 256
    .line 257
    if-nez p1, :cond_7

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_7
    new-instance p1, Lfd/f;

    .line 261
    .line 262
    iget-object v2, p0, Lvd/z;->g:Lvc/b;

    .line 263
    .line 264
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-direct {p1, v2}, Lfd/f;-><init>(Lvc/f;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lvd/z;->J()Lad/h;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Led/b;

    .line 276
    .line 277
    iput-object v2, p1, Led/c;->v:Led/b;

    .line 278
    .line 279
    iget v2, p0, Lvd/z;->b:I

    .line 280
    .line 281
    iput v2, p1, Led/c;->i:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 282
    .line 283
    :try_start_c
    iget-object v2, p0, Lvd/z;->d:Lvd/b0;

    .line 284
    .line 285
    new-instance v3, Lfd/c;

    .line 286
    .line 287
    iget-object v6, p0, Lvd/z;->g:Lvc/b;

    .line 288
    .line 289
    invoke-interface {v6}, Lvc/b;->e()Lvc/f;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-direct {v3, v6}, Lfd/c;-><init>(Lvc/f;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-virtual {v2, p1, v3, v6}, Lvd/b0;->t0(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;
    :try_end_c
    .catch Lvd/r; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 304
    .line 305
    .line 306
    goto :goto_2

    .line 307
    :catch_3
    move-exception p1

    .line 308
    :try_start_d
    sget-object v2, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 309
    .line 310
    const-string v3, "SmbComLogoffAndX failed"

    .line 311
    .line 312
    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    :goto_2
    iput v1, p0, Lvd/z;->b:I

    .line 316
    .line 317
    :cond_8
    :goto_3
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 318
    :try_start_e
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_e
    .catch Lvd/r; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 319
    .line 320
    .line 321
    :goto_4
    iget-object p1, p0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 322
    .line 323
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 324
    .line 325
    .line 326
    iput-object v4, p0, Lvd/z;->n:Lad/h;

    .line 327
    .line 328
    iget-object p1, p0, Lvd/z;->d:Lvd/b0;

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 331
    .line 332
    .line 333
    goto :goto_a

    .line 334
    :goto_5
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 335
    :try_start_10
    throw p1

    .line 336
    :goto_6
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 337
    :try_start_11
    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 338
    :catchall_4
    move-exception p1

    .line 339
    goto :goto_7

    .line 340
    :catchall_5
    move-exception p1

    .line 341
    const/4 p2, 0x0

    .line 342
    :goto_7
    :try_start_12
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 343
    .line 344
    .line 345
    goto :goto_8

    .line 346
    :catchall_6
    move-exception v2

    .line 347
    :try_start_13
    const-class v3, Ljava/lang/Throwable;
    :try_end_13
    .catch Lvd/r; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 348
    .line 349
    :try_start_14
    const-string v5, "addSuppressed"

    .line 350
    .line 351
    new-array v6, v0, [Ljava/lang/Class;

    .line 352
    .line 353
    aput-object v3, v6, v1

    .line 354
    .line 355
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    new-array v0, v0, [Ljava/lang/Object;

    .line 360
    .line 361
    aput-object v2, v0, v1

    .line 362
    .line 363
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 364
    .line 365
    .line 366
    :catch_4
    :goto_8
    :try_start_15
    throw p1
    :try_end_15
    .catch Lvd/r; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 367
    :catchall_7
    move-exception p1

    .line 368
    goto :goto_b

    .line 369
    :catch_5
    move-exception p1

    .line 370
    :goto_9
    :try_start_16
    sget-object v0, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 371
    .line 372
    const-string v2, "Error in logoff"

    .line 373
    .line 374
    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 375
    .line 376
    .line 377
    goto :goto_4

    .line 378
    :goto_a
    return p2

    .line 379
    :goto_b
    iget-object p2, p0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 380
    .line 381
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 382
    .line 383
    .line 384
    iput-object v4, p0, Lvd/z;->n:Lad/h;

    .line 385
    .line 386
    iget-object p2, p0, Lvd/z;->d:Lvd/b0;

    .line 387
    .line 388
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 389
    .line 390
    .line 391
    goto :goto_d

    .line 392
    :goto_c
    throw p1

    .line 393
    :goto_d
    goto :goto_c
.end method

.method public final N(Lvd/b0;Ljava/lang/String;Lad/c;Ljava/util/Set;)Lad/d;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lvd/b0;->l0()Lad/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v4, v0

    .line 12
    check-cast v4, Lod/f;

    .line 13
    .line 14
    iget-object v0, v4, Lod/f;->O:[B

    .line 15
    .line 16
    iget v5, v4, Lod/f;->D:I

    .line 17
    .line 18
    iget-object v6, v1, Lvd/z;->h:Lvd/j;

    .line 19
    .line 20
    invoke-virtual {v6}, Lvd/j;->d()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const/4 v8, 0x1

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v5, 0x0

    .line 32
    :goto_0
    iget-wide v13, v1, Lvd/z;->m:J

    .line 33
    .line 34
    monitor-enter p1

    .line 35
    :try_start_0
    iget-object v6, v1, Lvd/z;->h:Lvd/j;

    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v6, v1, Lvd/z;->h:Lvd/j;

    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-object/from16 v6, p2

    .line 46
    .line 47
    invoke-virtual {v1, v2, v6, v4, v5}, Lvd/z;->A(Lvd/b0;Ljava/lang/String;Lod/f;Z)Lvd/o;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/4 v6, 0x0

    .line 52
    move-object v9, v6

    .line 53
    move-object/from16 v16, v9

    .line 54
    .line 55
    :goto_1
    if-nez v0, :cond_1

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    array-length v10, v0

    .line 60
    :goto_2
    invoke-interface {v5, v10, v0}, Lvd/o;->a(I[B)[B

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    if-eqz v15, :cond_a

    .line 65
    .line 66
    new-instance v12, Lpd/b;

    .line 67
    .line 68
    iget-object v0, v1, Lvd/z;->d:Lvd/b0;

    .line 69
    .line 70
    iget-object v10, v0, Lvd/b0;->z:Lvc/b;

    .line 71
    .line 72
    iget v11, v4, Lod/f;->D:I

    .line 73
    .line 74
    iget v0, v4, Lod/f;->H:I

    .line 75
    .line 76
    move-object v9, v12

    .line 77
    move-object v7, v12

    .line 78
    move v12, v0

    .line 79
    move-wide/from16 v17, v13

    .line 80
    .line 81
    invoke-direct/range {v9 .. v15}, Lpd/b;-><init>(Lvc/b;IIJ[B)V

    .line 82
    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    move-object v0, v3

    .line 87
    check-cast v0, Lid/b;

    .line 88
    .line 89
    invoke-virtual {v7, v0}, Lpd/b;->g0(Lid/b;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto/16 :goto_b

    .line 95
    .line 96
    :cond_2
    :goto_3
    iget-object v0, v1, Lvd/z;->n:Lad/h;

    .line 97
    .line 98
    invoke-virtual {v7, v0}, Lid/b;->i(Lad/h;)V

    .line 99
    .line 100
    .line 101
    move-wide/from16 v10, v17

    .line 102
    .line 103
    invoke-virtual {v7, v10, v11}, Lid/b;->f(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    :try_start_1
    sget-object v0, Lvd/l;->c:Lvd/l;

    .line 107
    .line 108
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v2, v7, v6, v0}, Lvd/b0;->t0(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lpd/c;

    .line 117
    .line 118
    iget-wide v12, v0, Lid/b;->s:J

    .line 119
    .line 120
    cmp-long v9, v12, v10

    .line 121
    .line 122
    if-nez v9, :cond_4

    .line 123
    .line 124
    :cond_3
    :goto_4
    move-object v9, v0

    .line 125
    goto :goto_6

    .line 126
    :cond_4
    new-instance v0, Lvd/p;

    .line 127
    .line 128
    const-string v9, "Server did not reauthenticate after expiration"

    .line 129
    .line 130
    invoke-direct {v0, v9}, Lvd/p;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0
    :try_end_1
    .catch Lvd/p; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lvd/r; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    move-object/from16 v16, v0

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :catch_1
    move-exception v0

    .line 139
    goto :goto_9

    .line 140
    :goto_5
    :try_start_2
    iget-object v0, v7, Lid/c;->x:Lid/d;

    .line 141
    .line 142
    check-cast v0, Lpd/c;

    .line 143
    .line 144
    iget-boolean v9, v0, Lid/d;->x:Z

    .line 145
    .line 146
    if-eqz v9, :cond_9

    .line 147
    .line 148
    iget-boolean v9, v0, Lid/d;->y:Z

    .line 149
    .line 150
    if-nez v9, :cond_9

    .line 151
    .line 152
    iget v9, v0, Lid/b;->j:I

    .line 153
    .line 154
    if-eqz v9, :cond_3

    .line 155
    .line 156
    const v12, -0x3fffffea    # -2.0000052f

    .line 157
    .line 158
    .line 159
    if-ne v9, v12, :cond_9

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :goto_6
    iget-object v0, v1, Lvd/z;->g:Lvc/b;

    .line 163
    .line 164
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lwc/a;

    .line 169
    .line 170
    iget-boolean v0, v0, Lwc/a;->x0:Z

    .line 171
    .line 172
    if-nez v0, :cond_7

    .line 173
    .line 174
    iget v0, v9, Lpd/c;->D:I

    .line 175
    .line 176
    and-int/lit8 v0, v0, 0x3

    .line 177
    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    const/4 v0, 0x1

    .line 181
    goto :goto_7

    .line 182
    :cond_5
    const/4 v0, 0x0

    .line 183
    :goto_7
    if-eqz v0, :cond_7

    .line 184
    .line 185
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 186
    .line 187
    invoke-virtual {v0}, Lvd/j;->f()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_7

    .line 192
    .line 193
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 194
    .line 195
    invoke-virtual {v0}, Lvd/j;->d()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_6
    new-instance v0, Lvd/p;

    .line 203
    .line 204
    const v3, -0x3fffff93    # -2.000026f

    .line 205
    .line 206
    .line 207
    invoke-direct {v0, v3}, Lvd/p;-><init>(I)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_7
    :goto_8
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    iget-object v0, v7, Lid/b;->g:Lid/f;

    .line 217
    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    sget-object v0, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 221
    .line 222
    const-string v12, "Setting digest"

    .line 223
    .line 224
    invoke-interface {v0, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v7, Lid/b;->g:Lid/f;

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Lvd/z;->T(Lad/h;)V

    .line 230
    .line 231
    .line 232
    :cond_8
    iget-object v0, v9, Lpd/c;->E:[B

    .line 233
    .line 234
    goto :goto_a

    .line 235
    :cond_9
    throw v16

    .line 236
    :goto_9
    throw v0

    .line 237
    :cond_a
    move-wide v10, v13

    .line 238
    move-object v0, v15

    .line 239
    :goto_a
    if-nez v16, :cond_e

    .line 240
    .line 241
    invoke-interface {v5}, Lvd/o;->b()Z

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-eqz v7, :cond_d

    .line 246
    .line 247
    iput-boolean v8, v1, Lvd/z;->j:Z

    .line 248
    .line 249
    iget-object v0, v1, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 250
    .line 251
    const/4 v4, 0x2

    .line 252
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 253
    .line 254
    .line 255
    iget-wide v4, v9, Lid/b;->s:J

    .line 256
    .line 257
    iput-wide v4, v1, Lvd/z;->m:J

    .line 258
    .line 259
    iget-object v0, v9, Lid/b;->w:Lid/b;

    .line 260
    .line 261
    check-cast v0, Lad/d;

    .line 262
    .line 263
    if-eqz v0, :cond_b

    .line 264
    .line 265
    invoke-interface {v0}, Lhe/d;->c0()Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_b

    .line 270
    .line 271
    monitor-exit p1

    .line 272
    return-object v0

    .line 273
    :cond_b
    if-eqz v3, :cond_c

    .line 274
    .line 275
    iget-object v0, v1, Lvd/z;->d:Lvd/b0;

    .line 276
    .line 277
    move-object/from16 v7, p4

    .line 278
    .line 279
    invoke-virtual {v0, v3, v6, v7}, Lvd/b0;->t0(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    monitor-exit p1

    .line 284
    return-object v0

    .line 285
    :cond_c
    monitor-exit p1

    .line 286
    return-object v6

    .line 287
    :cond_d
    move-object/from16 v7, p4

    .line 288
    .line 289
    move-wide v13, v10

    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :cond_e
    throw v16

    .line 293
    :goto_b
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    goto :goto_d

    .line 295
    :goto_c
    throw v0

    .line 296
    :goto_d
    goto :goto_c
.end method

.method public final O()V
    .locals 6

    .line 1
    iget-object v0, p0, Lvd/z;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 8
    .line 9
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Release session "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, " "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    cmp-long v5, v0, v3

    .line 43
    .line 44
    if-nez v5, :cond_3

    .line 45
    .line 46
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "Usage dropped to zero, release connection "

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lvd/z;->d:Lvd/b0;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lvd/z;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, p0, Lvd/z;->d:Lvd/b0;

    .line 83
    .line 84
    invoke-virtual {v0}, Lhe/e;->Y()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    :goto_0
    monitor-exit p0

    .line 91
    goto :goto_2

    .line 92
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw v0

    .line 94
    :cond_3
    cmp-long v2, v0, v3

    .line 95
    .line 96
    if-ltz v2, :cond_4

    .line 97
    .line 98
    :goto_2
    return-void

    .line 99
    :cond_4
    new-instance v0, Landroidx/fragment/app/b0;

    .line 100
    .line 101
    const-string v1, "Usage count dropped below zero"

    .line 102
    .line 103
    const/16 v2, 0xa

    .line 104
    .line 105
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    throw v0
.end method

.method public final P(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    sget-object v7, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 10
    .line 11
    const-string v0, "\\IPC$"

    .line 12
    .line 13
    const-string v8, "Have referral "

    .line 14
    .line 15
    const-string v9, "Response: "

    .line 16
    .line 17
    const-string v10, "Request: "

    .line 18
    .line 19
    const-string v11, "Response "

    .line 20
    .line 21
    const-string v12, "Request "

    .line 22
    .line 23
    const-string v13, "\\\\"

    .line 24
    .line 25
    iget-object v14, v1, Lvd/z;->d:Lvd/b0;

    .line 26
    .line 27
    invoke-virtual {v14}, Lvd/b0;->b0()V

    .line 28
    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lhe/d;->O()V

    .line 33
    .line 34
    .line 35
    iget-boolean v15, v1, Lvd/z;->j:Z

    .line 36
    .line 37
    invoke-interface {v3, v15}, Lad/b;->B(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object v2, v0

    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_0
    :goto_0
    const/4 v15, 0x0

    .line 46
    :try_start_1
    sget-object v5, Lvd/l;->a:Lvd/l;

    .line 47
    .line 48
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    move-object/from16 v16, v7

    .line 55
    .line 56
    const-wide/16 v6, -0x1

    .line 57
    .line 58
    iput-wide v6, v1, Lvd/z;->e:J

    .line 59
    .line 60
    move-object/from16 v17, v8

    .line 61
    .line 62
    move-object/from16 v18, v9

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_1
    move-object/from16 v16, v7

    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    iget-object v5, v1, Lvd/z;->g:Lvc/b;

    .line 75
    .line 76
    invoke-interface {v5}, Lvc/b;->e()Lvc/f;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lwc/a;

    .line 81
    .line 82
    iget v5, v5, Lwc/a;->B:I

    .line 83
    .line 84
    move-object/from16 v17, v8

    .line 85
    .line 86
    move-object/from16 v18, v9

    .line 87
    .line 88
    int-to-long v8, v5

    .line 89
    add-long/2addr v6, v8

    .line 90
    iput-wide v6, v1, Lvd/z;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .line 92
    :goto_1
    :try_start_2
    invoke-virtual/range {p0 .. p2}, Lvd/z;->Q(Lad/c;Lad/d;)Lad/b;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Lad/d;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    :try_start_3
    invoke-interface {v5}, Lhe/d;->c0()Z

    .line 101
    .line 102
    .line 103
    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    if-eqz v6, :cond_2

    .line 105
    .line 106
    :try_start_4
    invoke-interface {v2, v15}, Lad/b;->i(Lad/h;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    iget-object v0, v1, Lvd/z;->g:Lvc/b;

    .line 114
    .line 115
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lwc/a;

    .line 120
    .line 121
    iget v0, v0, Lwc/a;->B:I

    .line 122
    .line 123
    int-to-long v6, v0

    .line 124
    add-long/2addr v2, v6

    .line 125
    iput-wide v2, v1, Lvd/z;->e:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    .line 127
    invoke-virtual {v14}, Lhe/e;->Y()V

    .line 128
    .line 129
    .line 130
    return-object v5

    .line 131
    :cond_2
    :try_start_5
    instance-of v5, v2, Lfd/u;

    .line 132
    .line 133
    if-eqz v5, :cond_3

    .line 134
    .line 135
    move-object v5, v2

    .line 136
    check-cast v5, Lfd/u;

    .line 137
    .line 138
    iget-object v6, v1, Lvd/z;->f:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v6, :cond_3

    .line 141
    .line 142
    iget-object v6, v5, Led/c;->t:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_3

    .line 149
    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v7, v1, Lvd/z;->f:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iput-object v0, v5, Led/c;->t:Ljava/lang/String;

    .line 168
    .line 169
    :cond_3
    iget-wide v5, v1, Lvd/z;->m:J

    .line 170
    .line 171
    invoke-interface {v2, v5, v6}, Lad/b;->f(J)V

    .line 172
    .line 173
    .line 174
    iget v0, v1, Lvd/z;->b:I

    .line 175
    .line 176
    invoke-interface {v2, v0}, Lad/b;->X(I)V

    .line 177
    .line 178
    .line 179
    invoke-interface/range {p1 .. p1}, Lad/b;->getDigest()Lad/h;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-nez v0, :cond_4

    .line 184
    .line 185
    invoke-virtual/range {p0 .. p0}, Lvd/z;->J()Lad/h;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v2, v0}, Lad/b;->i(Lad/h;)V

    .line 190
    .line 191
    .line 192
    :cond_4
    instance-of v0, v2, Lad/f;

    .line 193
    .line 194
    if-eqz v0, :cond_5

    .line 195
    .line 196
    move-object v0, v2

    .line 197
    check-cast v0, Lad/f;

    .line 198
    .line 199
    move-object v5, v2

    .line 200
    check-cast v5, Lad/f;

    .line 201
    .line 202
    iget-object v6, v1, Lvd/z;->p:Ljava/lang/String;

    .line 203
    .line 204
    iget-object v7, v1, Lvd/z;->q:Ljava/lang/String;

    .line 205
    .line 206
    invoke-interface {v0}, Lad/f;->W()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-interface {v5, v6, v7, v0}, Lad/f;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 211
    .line 212
    .line 213
    :cond_5
    :try_start_6
    invoke-interface/range {v16 .. v16}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_6

    .line 218
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0
    :try_end_6
    .catch Lvd/e; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lvd/r; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 231
    move-object/from16 v5, v16

    .line 232
    .line 233
    :try_start_7
    invoke-interface {v5, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_7
    .catch Lvd/e; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lvd/r; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    goto/16 :goto_4

    .line 239
    .line 240
    :catch_1
    move-exception v0

    .line 241
    goto/16 :goto_5

    .line 242
    .line 243
    :catch_2
    move-exception v0

    .line 244
    move-object/from16 v5, v16

    .line 245
    .line 246
    goto/16 :goto_4

    .line 247
    .line 248
    :catch_3
    move-exception v0

    .line 249
    move-object/from16 v5, v16

    .line 250
    .line 251
    goto/16 :goto_5

    .line 252
    .line 253
    :cond_6
    move-object/from16 v5, v16

    .line 254
    .line 255
    :goto_2
    :try_start_8
    iget-object v0, v1, Lvd/z;->d:Lvd/b0;

    .line 256
    .line 257
    invoke-virtual {v0, v2, v3, v4}, Lvd/b0;->t0(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 258
    .line 259
    .line 260
    move-result-object v3
    :try_end_8
    .catch Lvd/r; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 261
    :try_start_9
    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_7

    .line 266
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-interface {v5, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_9
    .catch Lvd/e; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lvd/r; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 280
    .line 281
    .line 282
    :cond_7
    :try_start_a
    invoke-interface {v2, v15}, Lad/b;->i(Lad/h;)V

    .line 283
    .line 284
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 286
    .line 287
    .line 288
    move-result-wide v4

    .line 289
    iget-object v0, v1, Lvd/z;->g:Lvc/b;

    .line 290
    .line 291
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, Lwc/a;

    .line 296
    .line 297
    iget v0, v0, Lwc/a;->B:I

    .line 298
    .line 299
    int-to-long v6, v0

    .line 300
    add-long/2addr v4, v6

    .line 301
    iput-wide v4, v1, Lvd/z;->e:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 302
    .line 303
    invoke-virtual {v14}, Lhe/e;->Y()V

    .line 304
    .line 305
    .line 306
    return-object v3

    .line 307
    :catch_4
    move-exception v0

    .line 308
    move-object v6, v0

    .line 309
    :try_start_b
    iget v0, v6, Lvd/r;->a:I

    .line 310
    .line 311
    const v7, -0x3ffffca4    # -2.000205f

    .line 312
    .line 313
    .line 314
    const v8, -0x3ffffdfd    # -2.0001228f

    .line 315
    .line 316
    .line 317
    if-eq v0, v7, :cond_8

    .line 318
    .line 319
    if-ne v0, v8, :cond_a

    .line 320
    .line 321
    :cond_8
    invoke-virtual {v14}, Lvd/b0;->n0()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_a

    .line 326
    .line 327
    iget v0, v6, Lvd/r;->a:I
    :try_end_b
    .catch Lvd/e; {:try_start_b .. :try_end_b} :catch_1
    .catch Lvd/r; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 328
    .line 329
    if-ne v0, v8, :cond_9

    .line 330
    .line 331
    :try_start_c
    const-string v0, "Got NT_STATUS_USER_SESSION_DELETED, disconnecting transport"

    .line 332
    .line 333
    invoke-interface {v5, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v0, v1, Lvd/z;->d:Lvd/b0;

    .line 337
    .line 338
    invoke-virtual {v0}, Lhe/e;->J()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :catch_5
    move-exception v0

    .line 343
    :try_start_d
    const-string v7, "Got NT_STATUS_USER_SESSION_DELETED, disconnected transport with error"

    .line 344
    .line 345
    invoke-interface {v5, v7, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    .line 347
    .line 348
    :cond_9
    :goto_3
    const-string v0, "Session expired, trying reauth"

    .line 349
    .line 350
    invoke-interface {v5, v0, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v1, Lvd/z;->p:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v1, v14, v0, v2, v4}, Lvd/z;->N(Lvd/b0;Ljava/lang/String;Lad/c;Ljava/util/Set;)Lad/d;

    .line 356
    .line 357
    .line 358
    move-result-object v0
    :try_end_d
    .catch Lvd/e; {:try_start_d .. :try_end_d} :catch_1
    .catch Lvd/r; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 359
    :try_start_e
    invoke-interface {v2, v15}, Lad/b;->i(Lad/h;)V

    .line 360
    .line 361
    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 363
    .line 364
    .line 365
    move-result-wide v2

    .line 366
    iget-object v4, v1, Lvd/z;->g:Lvc/b;

    .line 367
    .line 368
    invoke-interface {v4}, Lvc/b;->e()Lvc/f;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    check-cast v4, Lwc/a;

    .line 373
    .line 374
    iget v4, v4, Lwc/a;->B:I

    .line 375
    .line 376
    int-to-long v4, v4

    .line 377
    add-long/2addr v2, v4

    .line 378
    iput-wide v2, v1, Lvd/z;->e:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 379
    .line 380
    invoke-virtual {v14}, Lhe/e;->Y()V

    .line 381
    .line 382
    .line 383
    return-object v0

    .line 384
    :cond_a
    :try_start_f
    throw v6
    :try_end_f
    .catch Lvd/e; {:try_start_f .. :try_end_f} :catch_1
    .catch Lvd/r; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 385
    :goto_4
    :try_start_10
    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    if-eqz v4, :cond_b

    .line 390
    .line 391
    const-string v4, "Send failed"

    .line 392
    .line 393
    invoke-interface {v5, v4, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    .line 395
    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    move-object/from16 v6, v18

    .line 414
    .line 415
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    invoke-interface {v5, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    :cond_b
    throw v0

    .line 429
    :goto_5
    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-eqz v3, :cond_c

    .line 434
    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    move-object/from16 v4, v17

    .line 438
    .line 439
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    invoke-interface {v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :cond_c
    throw v0

    .line 453
    :catch_6
    move-exception v0

    .line 454
    new-instance v3, Lvd/r;

    .line 455
    .line 456
    const-string v4, "Session setup failed"

    .line 457
    .line 458
    invoke-direct {v3, v4, v0}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 459
    .line 460
    .line 461
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 462
    :goto_6
    :try_start_11
    invoke-interface {v2, v15}, Lad/b;->i(Lad/h;)V

    .line 463
    .line 464
    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 466
    .line 467
    .line 468
    move-result-wide v2

    .line 469
    iget-object v4, v1, Lvd/z;->g:Lvc/b;

    .line 470
    .line 471
    invoke-interface {v4}, Lvc/b;->e()Lvc/f;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    check-cast v4, Lwc/a;

    .line 476
    .line 477
    iget v4, v4, Lwc/a;->B:I

    .line 478
    .line 479
    int-to-long v4, v4

    .line 480
    add-long/2addr v2, v4

    .line 481
    iput-wide v2, v1, Lvd/z;->e:J

    .line 482
    .line 483
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 484
    :goto_7
    :try_start_12
    invoke-virtual {v14}, Lhe/e;->Y()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 485
    .line 486
    .line 487
    goto :goto_8

    .line 488
    :catchall_2
    move-exception v0

    .line 489
    move-object v3, v0

    .line 490
    const-class v0, Ljava/lang/Throwable;

    .line 491
    .line 492
    :try_start_13
    const-string v4, "addSuppressed"

    .line 493
    .line 494
    const/4 v5, 0x1

    .line 495
    new-array v6, v5, [Ljava/lang/Class;

    .line 496
    .line 497
    const/4 v7, 0x0

    .line 498
    aput-object v0, v6, v7

    .line 499
    .line 500
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    new-array v4, v5, [Ljava/lang/Object;

    .line 505
    .line 506
    aput-object v3, v4, v7

    .line 507
    .line 508
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    .line 509
    .line 510
    .line 511
    :catch_7
    :goto_8
    throw v2
.end method

.method public final Q(Lad/c;Lad/d;)Lad/b;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lvd/z;->d:Lvd/b0;

    .line 4
    .line 5
    invoke-virtual {v2}, Lvd/b0;->b0()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :goto_0
    :try_start_1
    iget-object v3, p0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 20
    .line 21
    .line 22
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq v3, v4, :cond_1

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    if-ne v3, v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :try_start_2
    iget-object v3, p0, Lvd/z;->d:Lvd/b0;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :catch_0
    move-exception p1

    .line 40
    :try_start_3
    new-instance p2, Lvd/r;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-direct {p2, v3, p1}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    throw p2

    .line 50
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    invoke-virtual {v2}, Lhe/e;->Y()V

    .line 52
    .line 53
    .line 54
    return-object p2

    .line 55
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lvd/b0;->j0()Z

    .line 56
    .line 57
    .line 58
    sget-object v3, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 59
    .line 60
    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v5, "sessionSetup: "

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v5, p0, Lvd/z;->h:Lvd/j;

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_1
    move-exception p1

    .line 90
    goto :goto_4

    .line 91
    :catch_1
    move-exception p1

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    :goto_2
    iput v1, p0, Lvd/z;->b:I

    .line 94
    .line 95
    invoke-virtual {v2}, Lvd/b0;->n0()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    iget-object p2, p0, Lvd/z;->p:Ljava/lang/String;

    .line 102
    .line 103
    check-cast p1, Lid/c;

    .line 104
    .line 105
    invoke-virtual {p0, v2, p2}, Lvd/z;->S(Lvd/b0;Ljava/lang/String;)Lad/d;

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 110
    .line 111
    .line 112
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    invoke-virtual {v2}, Lhe/e;->Y()V

    .line 114
    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_4
    :try_start_6
    iget-object v3, p0, Lvd/z;->p:Ljava/lang/String;

    .line 118
    .line 119
    check-cast p1, Led/c;

    .line 120
    .line 121
    move-object v4, p2

    .line 122
    check-cast v4, Led/c;

    .line 123
    .line 124
    invoke-virtual {p0, v2, v3, p1, v4}, Lvd/z;->R(Lvd/b0;Ljava/lang/String;Led/c;Led/c;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 125
    .line 126
    .line 127
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 128
    .line 129
    .line 130
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 131
    invoke-virtual {v2}, Lhe/e;->Y()V

    .line 132
    .line 133
    .line 134
    return-object p2

    .line 135
    :goto_3
    :try_start_8
    sget-object p2, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 136
    .line 137
    const-string v3, "Session setup failed"

    .line 138
    .line 139
    invoke-interface {p2, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    iget-object p2, p0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    .line 144
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-eqz p2, :cond_5

    .line 149
    .line 150
    invoke-virtual {p0, v0, v0}, Lvd/z;->M(ZZ)Z

    .line 151
    .line 152
    .line 153
    :cond_5
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 154
    :goto_4
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :goto_5
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 159
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 160
    :catchall_2
    move-exception p1

    .line 161
    :try_start_b
    invoke-virtual {v2}, Lhe/e;->Y()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :catchall_3
    move-exception p2

    .line 166
    const-class v2, Ljava/lang/Throwable;

    .line 167
    .line 168
    :try_start_c
    const-string v3, "addSuppressed"

    .line 169
    .line 170
    new-array v4, v0, [Ljava/lang/Class;

    .line 171
    .line 172
    aput-object v2, v4, v1

    .line 173
    .line 174
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    new-array v0, v0, [Ljava/lang/Object;

    .line 179
    .line 180
    aput-object p2, v0, v1

    .line 181
    .line 182
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 183
    .line 184
    .line 185
    :catch_2
    :goto_6
    goto :goto_8

    .line 186
    :goto_7
    throw p1

    .line 187
    :goto_8
    goto :goto_7
.end method

.method public final R(Lvd/b0;Ljava/lang/String;Led/c;Led/c;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    new-array v0, v3, [B

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lvd/b0;->l0()Lad/k;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    check-cast v4, Lfd/j;

    .line 13
    .line 14
    iget-object v5, v1, Lvd/z;->h:Lvd/j;

    .line 15
    .line 16
    invoke-virtual {v5}, Lvd/j;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x0

    .line 21
    const/16 v7, 0xa

    .line 22
    .line 23
    move v8, v5

    .line 24
    move-object v10, v6

    .line 25
    move-object v11, v10

    .line 26
    move-object v12, v11

    .line 27
    move-object v13, v12

    .line 28
    const/16 v9, 0xa

    .line 29
    .line 30
    move-object v5, v0

    .line 31
    :goto_0
    const/4 v0, 0x4

    .line 32
    const/16 v14, 0x14

    .line 33
    .line 34
    const/4 v15, 0x1

    .line 35
    if-eq v9, v7, :cond_15

    .line 36
    .line 37
    if-ne v9, v14, :cond_14

    .line 38
    .line 39
    iget-object v14, v1, Lvd/z;->h:Lvd/j;

    .line 40
    .line 41
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    if-nez v8, :cond_0

    .line 45
    .line 46
    iget v14, v4, Lfd/j;->I:I

    .line 47
    .line 48
    and-int/2addr v0, v14

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const/4 v14, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    const/4 v14, 0x0

    .line 54
    :goto_1
    if-nez v10, :cond_3

    .line 55
    .line 56
    iget-object v0, v1, Lvd/z;->q:Ljava/lang/String;

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, v2, Lvd/b0;->n:Lsd/k;

    .line 61
    .line 62
    invoke-virtual {v0}, Lsd/k;->b()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    :try_start_0
    iget-object v0, v2, Lvd/b0;->n:Lsd/k;

    .line 67
    .line 68
    invoke-virtual {v0}, Lsd/k;->c()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget-object v7, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 75
    .line 76
    const-string v3, "Failed to resolve host name"

    .line 77
    .line 78
    invoke-interface {v7, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    move-object v0, v10

    .line 82
    :cond_1
    :goto_2
    sget-object v3, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 83
    .line 84
    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_2

    .line 89
    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v10, "Remote host is "

    .line 93
    .line 94
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-interface {v3, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v3, v1, Lvd/z;->h:Lvd/j;

    .line 108
    .line 109
    iget-object v7, v1, Lvd/z;->d:Lvd/b0;

    .line 110
    .line 111
    iget-object v7, v7, Lvd/b0;->z:Lvc/b;

    .line 112
    .line 113
    iget-object v10, v4, Lfd/j;->H:Lfd/b;

    .line 114
    .line 115
    iget-object v10, v10, Lfd/b;->p:[B

    .line 116
    .line 117
    invoke-virtual {v3, v7, v0, v10, v14}, Lvd/j;->a(Lvc/b;Ljava/lang/String;[BZ)Lvd/o;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    :cond_3
    sget-object v0, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 122
    .line 123
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_4

    .line 128
    .line 129
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    if-nez v5, :cond_5

    .line 137
    .line 138
    const/4 v3, 0x0

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    :try_start_1
    array-length v3, v5

    .line 141
    :goto_3
    invoke-interface {v10, v3, v5}, Lvd/o;->a(I[B)[B

    .line 142
    .line 143
    .line 144
    move-result-object v3
    :try_end_1
    .catch Lvd/r; {:try_start_1 .. :try_end_1} :catch_4

    .line 145
    if-eqz v3, :cond_e

    .line 146
    .line 147
    new-instance v12, Lfd/s;

    .line 148
    .line 149
    iget-object v5, v1, Lvd/z;->d:Lvd/b0;

    .line 150
    .line 151
    iget-object v5, v5, Lvd/b0;->z:Lvc/b;

    .line 152
    .line 153
    invoke-direct {v12, v5, v4, v6, v3}, Lfd/s;-><init>(Lvc/b;Lfd/j;Led/c;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p0 .. p0}, Lvd/z;->J()Lad/h;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Led/b;

    .line 161
    .line 162
    iput-object v3, v12, Led/c;->v:Led/b;

    .line 163
    .line 164
    if-eqz v14, :cond_7

    .line 165
    .line 166
    invoke-interface {v10}, Lvd/o;->b()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_7

    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Lvd/z;->L()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_7

    .line 177
    .line 178
    invoke-interface {v10}, Lvd/o;->c()[B

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    new-instance v3, Led/b;

    .line 185
    .line 186
    invoke-direct {v3, v0}, Led/b;-><init>([B)V

    .line 187
    .line 188
    .line 189
    iput-object v3, v12, Led/c;->v:Led/b;

    .line 190
    .line 191
    :cond_6
    iput-object v0, v1, Lvd/z;->i:[B

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_7
    const-string v3, "Not yet initializing signing"

    .line 195
    .line 196
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :goto_4
    new-instance v13, Lfd/t;

    .line 200
    .line 201
    iget-object v0, v1, Lvd/z;->d:Lvd/b0;

    .line 202
    .line 203
    iget-object v0, v0, Lvd/b0;->z:Lvc/b;

    .line 204
    .line 205
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-direct {v13, v0, v6}, Lfd/t;-><init>(Lvc/f;Led/c;)V

    .line 210
    .line 211
    .line 212
    iput-boolean v15, v13, Led/c;->p:Z

    .line 213
    .line 214
    iget v0, v1, Lvd/z;->b:I

    .line 215
    .line 216
    iput v0, v12, Led/c;->i:I

    .line 217
    .line 218
    const/4 v3, 0x0

    .line 219
    iput v3, v1, Lvd/z;->b:I

    .line 220
    .line 221
    :try_start_2
    invoke-virtual {v2, v12, v13}, Lvd/b0;->u0(Lad/c;Led/c;)V
    :try_end_2
    .catch Lvd/p; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lvd/r; {:try_start_2 .. :try_end_2} :catch_1

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :catch_1
    move-exception v0

    .line 226
    move-object v3, v0

    .line 227
    iget v0, v3, Lvd/r;->a:I

    .line 228
    .line 229
    const v5, -0x3ffffff3    # -2.000003f

    .line 230
    .line 231
    .line 232
    if-ne v0, v5, :cond_8

    .line 233
    .line 234
    new-instance v0, Lvd/p;

    .line 235
    .line 236
    invoke-direct {v0, v3}, Lvd/p;-><init>(Lvd/r;)V

    .line 237
    .line 238
    .line 239
    move-object v11, v0

    .line 240
    goto :goto_5

    .line 241
    :cond_8
    move-object v11, v3

    .line 242
    :goto_5
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lhe/e;->J()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :catch_2
    move-exception v0

    .line 247
    move-object v3, v0

    .line 248
    sget-object v0, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 249
    .line 250
    const-string v5, "Failed to disconnect transport"

    .line 251
    .line 252
    invoke-interface {v0, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    .line 254
    .line 255
    :goto_6
    iget-object v0, v1, Lvd/z;->g:Lvc/b;

    .line 256
    .line 257
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Lwc/a;

    .line 262
    .line 263
    iget-boolean v0, v0, Lwc/a;->x0:Z

    .line 264
    .line 265
    if-nez v0, :cond_a

    .line 266
    .line 267
    iget-boolean v0, v13, Lfd/t;->O:Z

    .line 268
    .line 269
    if-eqz v0, :cond_a

    .line 270
    .line 271
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 272
    .line 273
    invoke-virtual {v0}, Lvd/j;->f()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-nez v0, :cond_a

    .line 278
    .line 279
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 280
    .line 281
    invoke-virtual {v0}, Lvd/j;->d()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_9

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_9
    new-instance v0, Lvd/p;

    .line 289
    .line 290
    const v2, -0x3fffff93    # -2.000026f

    .line 291
    .line 292
    .line 293
    invoke-direct {v0, v2}, Lvd/p;-><init>(I)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :cond_a
    :goto_7
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 298
    .line 299
    invoke-virtual {v0}, Lvd/j;->d()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-nez v0, :cond_b

    .line 304
    .line 305
    iget-boolean v0, v13, Lfd/t;->O:Z

    .line 306
    .line 307
    if-eqz v0, :cond_b

    .line 308
    .line 309
    const/4 v8, 0x1

    .line 310
    :cond_b
    if-nez v11, :cond_d

    .line 311
    .line 312
    iget v0, v13, Led/c;->i:I

    .line 313
    .line 314
    iput v0, v1, Lvd/z;->b:I

    .line 315
    .line 316
    iget-object v0, v12, Led/c;->v:Led/b;

    .line 317
    .line 318
    if-eqz v0, :cond_c

    .line 319
    .line 320
    sget-object v0, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 321
    .line 322
    const-string v3, "Setting digest"

    .line 323
    .line 324
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v0, v12, Led/c;->v:Led/b;

    .line 328
    .line 329
    invoke-virtual {v1, v0}, Lvd/z;->T(Lad/h;)V

    .line 330
    .line 331
    .line 332
    :cond_c
    iget-object v3, v13, Lfd/t;->P:[B

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_d
    throw v11

    .line 336
    :catch_3
    move-exception v0

    .line 337
    move-object v2, v0

    .line 338
    throw v2

    .line 339
    :cond_e
    :goto_8
    invoke-interface {v10}, Lvd/o;->b()Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_13

    .line 344
    .line 345
    sget-object v0, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 346
    .line 347
    const-string v5, "Context is established"

    .line 348
    .line 349
    invoke-interface {v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iput-object v6, v1, Lvd/z;->f:Ljava/lang/String;

    .line 353
    .line 354
    invoke-interface {v10}, Lvd/o;->c()[B

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    iput-object v0, v1, Lvd/z;->i:[B

    .line 359
    .line 360
    if-eqz v12, :cond_f

    .line 361
    .line 362
    iget-object v0, v12, Led/c;->v:Led/b;

    .line 363
    .line 364
    if-eqz v0, :cond_f

    .line 365
    .line 366
    invoke-virtual {v1, v0}, Lvd/z;->T(Lad/h;)V

    .line 367
    .line 368
    .line 369
    goto :goto_a

    .line 370
    :cond_f
    if-nez v8, :cond_12

    .line 371
    .line 372
    invoke-virtual/range {p0 .. p0}, Lvd/z;->L()Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_12

    .line 377
    .line 378
    invoke-interface {v10}, Lvd/o;->c()[B

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    if-eqz v0, :cond_10

    .line 383
    .line 384
    if-eqz v13, :cond_10

    .line 385
    .line 386
    new-instance v5, Led/b;

    .line 387
    .line 388
    invoke-direct {v5, v0, v6}, Led/b;-><init>([BLjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v5}, Lvd/z;->T(Lad/h;)V

    .line 392
    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_10
    iget-object v5, v2, Lvd/b0;->z:Lvc/b;

    .line 396
    .line 397
    invoke-interface {v5}, Lvc/b;->e()Lvc/f;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    check-cast v5, Lwc/a;

    .line 402
    .line 403
    iget-boolean v5, v5, Lwc/a;->g:Z

    .line 404
    .line 405
    if-nez v5, :cond_11

    .line 406
    .line 407
    :goto_9
    iput-object v0, v1, Lvd/z;->i:[B

    .line 408
    .line 409
    goto :goto_a

    .line 410
    :cond_11
    new-instance v0, Lvd/r;

    .line 411
    .line 412
    const-string v2, "Signing required but no session key available"

    .line 413
    .line 414
    invoke-direct {v0, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw v0

    .line 418
    :cond_12
    :goto_a
    iget-boolean v0, v13, Led/c;->p:Z

    .line 419
    .line 420
    iput-boolean v0, v1, Lvd/z;->j:Z

    .line 421
    .line 422
    iget-object v0, v1, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 423
    .line 424
    const/4 v5, 0x2

    .line 425
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 426
    .line 427
    .line 428
    move-object/from16 v14, p3

    .line 429
    .line 430
    const/4 v5, 0x0

    .line 431
    :goto_b
    const/4 v9, 0x0

    .line 432
    goto/16 :goto_19

    .line 433
    .line 434
    :cond_13
    move-object/from16 v14, p3

    .line 435
    .line 436
    const/4 v5, 0x0

    .line 437
    goto/16 :goto_19

    .line 438
    .line 439
    :catch_4
    move-exception v0

    .line 440
    :try_start_4
    sget-object v3, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 441
    .line 442
    const-string v4, "Exception during SSP authentication"

    .line 443
    .line 444
    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual/range {p1 .. p1}, Lhe/e;->J()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 448
    .line 449
    .line 450
    :goto_c
    const/4 v2, 0x0

    .line 451
    goto :goto_d

    .line 452
    :catch_5
    sget-object v2, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 453
    .line 454
    const-string v3, "Disconnect failed"

    .line 455
    .line 456
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    goto :goto_c

    .line 460
    :goto_d
    iput v2, v1, Lvd/z;->b:I

    .line 461
    .line 462
    throw v0

    .line 463
    :cond_14
    new-instance v0, Lvd/r;

    .line 464
    .line 465
    const-string v2, "Unexpected session setup state: "

    .line 466
    .line 467
    invoke-static {v9, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-direct {v0, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw v0

    .line 475
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lvd/b0;->l0()Lad/k;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    const/high16 v7, -0x80000000

    .line 480
    .line 481
    invoke-interface {v3, v7}, Lad/k;->x(I)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-eqz v3, :cond_16

    .line 486
    .line 487
    sget-object v0, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 488
    .line 489
    const-string v3, "Extended security negotiated"

    .line 490
    .line 491
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    move-object/from16 v14, p3

    .line 495
    .line 496
    move-object v3, v5

    .line 497
    const/4 v5, 0x0

    .line 498
    const/16 v9, 0x14

    .line 499
    .line 500
    goto/16 :goto_19

    .line 501
    .line 502
    :cond_16
    iget-object v3, v1, Lvd/z;->d:Lvd/b0;

    .line 503
    .line 504
    iget-object v3, v3, Lvd/b0;->z:Lvc/b;

    .line 505
    .line 506
    invoke-interface {v3}, Lvc/b;->e()Lvc/f;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    check-cast v3, Lwc/a;

    .line 511
    .line 512
    iget-boolean v3, v3, Lwc/a;->m:Z

    .line 513
    .line 514
    if-nez v3, :cond_27

    .line 515
    .line 516
    sget-object v3, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 517
    .line 518
    const-string v7, "Performing legacy session setup"

    .line 519
    .line 520
    invoke-interface {v3, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-object v7, v1, Lvd/z;->h:Lvd/j;

    .line 524
    .line 525
    instance-of v9, v7, Lvd/j;

    .line 526
    .line 527
    if-eqz v9, :cond_26

    .line 528
    .line 529
    new-instance v12, Lfd/s;

    .line 530
    .line 531
    iget-object v9, v1, Lvd/z;->d:Lvd/b0;

    .line 532
    .line 533
    iget-object v9, v9, Lvd/b0;->z:Lvc/b;

    .line 534
    .line 535
    iget-object v13, v1, Lvd/z;->h:Lvd/j;

    .line 536
    .line 537
    move-object/from16 v14, p3

    .line 538
    .line 539
    invoke-direct {v12, v9, v4, v14, v13}, Lfd/s;-><init>(Lvc/b;Lfd/j;Led/c;Ljava/lang/Object;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual/range {p0 .. p0}, Lvd/z;->J()Lad/h;

    .line 543
    .line 544
    .line 545
    move-result-object v9

    .line 546
    check-cast v9, Led/b;

    .line 547
    .line 548
    iput-object v9, v12, Led/c;->v:Led/b;

    .line 549
    .line 550
    new-instance v13, Lfd/t;

    .line 551
    .line 552
    iget-object v9, v1, Lvd/z;->d:Lvd/b0;

    .line 553
    .line 554
    iget-object v9, v9, Lvd/b0;->z:Lvc/b;

    .line 555
    .line 556
    invoke-interface {v9}, Lvc/b;->e()Lvc/f;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    move-object/from16 v6, p4

    .line 561
    .line 562
    invoke-direct {v13, v9, v6}, Lfd/t;-><init>(Lvc/f;Led/c;)V

    .line 563
    .line 564
    .line 565
    const/4 v9, 0x0

    .line 566
    iput-boolean v9, v13, Led/c;->p:Z

    .line 567
    .line 568
    if-nez v8, :cond_1d

    .line 569
    .line 570
    invoke-virtual/range {p0 .. p0}, Lvd/z;->L()Z

    .line 571
    .line 572
    .line 573
    move-result v9

    .line 574
    if-eqz v9, :cond_1d

    .line 575
    .line 576
    iget-object v9, v1, Lvd/z;->d:Lvd/b0;

    .line 577
    .line 578
    iget-object v9, v9, Lvd/b0;->z:Lvc/b;

    .line 579
    .line 580
    const-string v9, "Initialize signing"

    .line 581
    .line 582
    invoke-interface {v3, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iget-object v3, v1, Lvd/z;->d:Lvd/b0;

    .line 586
    .line 587
    iget-object v3, v3, Lvd/b0;->z:Lvc/b;

    .line 588
    .line 589
    iget-object v9, v4, Lfd/j;->H:Lfd/b;

    .line 590
    .line 591
    iget-object v9, v9, Lfd/b;->p:[B

    .line 592
    .line 593
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    invoke-interface {v3}, Lvc/b;->e()Lvc/f;

    .line 597
    .line 598
    .line 599
    move-result-object v16

    .line 600
    move-object/from16 v0, v16

    .line 601
    .line 602
    check-cast v0, Lwc/a;

    .line 603
    .line 604
    iget v0, v0, Lwc/a;->r:I

    .line 605
    .line 606
    if-eqz v0, :cond_18

    .line 607
    .line 608
    const/4 v15, 0x1

    .line 609
    if-eq v0, v15, :cond_18

    .line 610
    .line 611
    const/4 v15, 0x2

    .line 612
    if-eq v0, v15, :cond_18

    .line 613
    .line 614
    const/4 v15, 0x3

    .line 615
    if-eq v0, v15, :cond_17

    .line 616
    .line 617
    const/4 v3, 0x4

    .line 618
    if-eq v0, v3, :cond_17

    .line 619
    .line 620
    const/4 v3, 0x5

    .line 621
    if-eq v0, v3, :cond_17

    .line 622
    .line 623
    move-object/from16 v17, v5

    .line 624
    .line 625
    move/from16 v18, v8

    .line 626
    .line 627
    move-object/from16 v19, v10

    .line 628
    .line 629
    const/4 v0, 0x0

    .line 630
    const/4 v5, 0x0

    .line 631
    goto/16 :goto_12

    .line 632
    .line 633
    :cond_17
    new-instance v0, Lvd/r;

    .line 634
    .line 635
    const-string v2, "NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)"

    .line 636
    .line 637
    invoke-direct {v0, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    throw v0

    .line 641
    :cond_18
    const/16 v0, 0x28

    .line 642
    .line 643
    new-array v0, v0, [B

    .line 644
    .line 645
    :try_start_5
    invoke-static {}, Lge/a;->j()Ljava/security/MessageDigest;

    .line 646
    .line 647
    .line 648
    move-result-object v15

    .line 649
    move-object/from16 v17, v5

    .line 650
    .line 651
    invoke-static {}, Lge/a;->j()Ljava/security/MessageDigest;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    iget-object v6, v7, Lvd/j;->d:Ljava/lang/String;

    .line 656
    .line 657
    move/from16 v18, v8

    .line 658
    .line 659
    sget-object v8, Lge/b;->b:Ljava/nio/charset/Charset;

    .line 660
    .line 661
    invoke-static {v6, v8}, Lge/b;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 662
    .line 663
    .line 664
    move-result-object v6

    .line 665
    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    .line 669
    .line 670
    .line 671
    move-result-object v5

    .line 672
    invoke-interface {v3}, Lvc/b;->e()Lvc/f;

    .line 673
    .line 674
    .line 675
    move-result-object v6

    .line 676
    check-cast v6, Lwc/a;

    .line 677
    .line 678
    iget v6, v6, Lwc/a;->r:I

    .line 679
    .line 680
    move-object/from16 v19, v10

    .line 681
    .line 682
    if-eqz v6, :cond_1b

    .line 683
    .line 684
    const/4 v10, 0x1

    .line 685
    if-eq v6, v10, :cond_1b

    .line 686
    .line 687
    const/4 v10, 0x2

    .line 688
    if-eq v6, v10, :cond_1b

    .line 689
    .line 690
    const/4 v10, 0x3

    .line 691
    if-eq v6, v10, :cond_19

    .line 692
    .line 693
    const/4 v10, 0x4

    .line 694
    if-eq v6, v10, :cond_19

    .line 695
    .line 696
    const/4 v10, 0x5

    .line 697
    if-eq v6, v10, :cond_19

    .line 698
    .line 699
    invoke-virtual {v15, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 700
    .line 701
    .line 702
    const/4 v5, 0x0

    .line 703
    const/16 v6, 0x10

    .line 704
    .line 705
    invoke-virtual {v15, v0, v5, v6}, Ljava/security/MessageDigest;->digest([BII)I

    .line 706
    .line 707
    .line 708
    :goto_e
    const/4 v5, 0x0

    .line 709
    const/16 v6, 0x10

    .line 710
    .line 711
    goto :goto_11

    .line 712
    :catch_6
    move-exception v0

    .line 713
    goto/16 :goto_13

    .line 714
    .line 715
    :cond_19
    monitor-enter v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 716
    :try_start_6
    iget-object v6, v7, Lvd/j;->e:[B

    .line 717
    .line 718
    if-nez v6, :cond_1a

    .line 719
    .line 720
    const/16 v6, 0x8

    .line 721
    .line 722
    new-array v6, v6, [B

    .line 723
    .line 724
    iput-object v6, v7, Lvd/j;->e:[B

    .line 725
    .line 726
    invoke-interface {v3}, Lvc/b;->e()Lvc/f;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    check-cast v6, Lwc/a;

    .line 731
    .line 732
    iget-object v6, v6, Lwc/a;->c:Ljava/security/SecureRandom;

    .line 733
    .line 734
    iget-object v10, v7, Lvd/j;->e:[B

    .line 735
    .line 736
    invoke-virtual {v6, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 737
    .line 738
    .line 739
    goto :goto_f

    .line 740
    :catchall_0
    move-exception v0

    .line 741
    goto :goto_10

    .line 742
    :cond_1a
    :goto_f
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 743
    :try_start_7
    new-instance v6, Lde/b;

    .line 744
    .line 745
    const/4 v10, 0x1

    .line 746
    invoke-direct {v6, v5, v10}, Lde/b;-><init>([BI)V

    .line 747
    .line 748
    .line 749
    iget-object v5, v7, Lvd/j;->c:Ljava/lang/String;

    .line 750
    .line 751
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    invoke-static {v5, v8}, Lge/b;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 756
    .line 757
    .line 758
    move-result-object v5

    .line 759
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 760
    .line 761
    .line 762
    iget-object v5, v7, Lvd/j;->b:Ljava/lang/String;

    .line 763
    .line 764
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v5

    .line 768
    invoke-static {v5, v8}, Lge/b;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 769
    .line 770
    .line 771
    move-result-object v5

    .line 772
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    .line 776
    .line 777
    .line 778
    move-result-object v5

    .line 779
    new-instance v6, Lde/b;

    .line 780
    .line 781
    const/4 v8, 0x1

    .line 782
    invoke-direct {v6, v5, v8}, Lde/b;-><init>([BI)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v6, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 786
    .line 787
    .line 788
    iget-object v8, v7, Lvd/j;->e:[B

    .line 789
    .line 790
    invoke-virtual {v6, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 791
    .line 792
    .line 793
    new-instance v8, Lde/b;

    .line 794
    .line 795
    const/4 v10, 0x1

    .line 796
    invoke-direct {v8, v5, v10}, Lde/b;-><init>([BI)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    .line 800
    .line 801
    .line 802
    move-result-object v5

    .line 803
    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 804
    .line 805
    .line 806
    const/4 v5, 0x0

    .line 807
    const/16 v6, 0x10

    .line 808
    .line 809
    invoke-virtual {v8, v0, v5, v6}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 810
    .line 811
    .line 812
    goto :goto_e

    .line 813
    :goto_10
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 814
    :try_start_9
    throw v0

    .line 815
    :cond_1b
    invoke-virtual {v15, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 816
    .line 817
    .line 818
    const/4 v5, 0x0

    .line 819
    const/16 v6, 0x10

    .line 820
    .line 821
    invoke-virtual {v15, v0, v5, v6}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 822
    .line 823
    .line 824
    :goto_11
    invoke-virtual {v7, v3, v9}, Lvd/j;->c(Lvc/b;[B)[B

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    const/16 v7, 0x18

    .line 829
    .line 830
    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 831
    .line 832
    .line 833
    :goto_12
    if-eqz v0, :cond_1c

    .line 834
    .line 835
    new-instance v3, Led/b;

    .line 836
    .line 837
    invoke-direct {v3, v0, v5}, Led/b;-><init>([BI)V

    .line 838
    .line 839
    .line 840
    iput-object v3, v12, Led/c;->v:Led/b;

    .line 841
    .line 842
    goto :goto_14

    .line 843
    :cond_1c
    new-instance v0, Lvd/r;

    .line 844
    .line 845
    const-string v2, "Need a signature key but the server did not provide one"

    .line 846
    .line 847
    invoke-direct {v0, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    throw v0

    .line 851
    :goto_13
    new-instance v2, Lvd/r;

    .line 852
    .line 853
    const-string v3, ""

    .line 854
    .line 855
    invoke-direct {v2, v3, v0}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 856
    .line 857
    .line 858
    throw v2

    .line 859
    :cond_1d
    move-object/from16 v17, v5

    .line 860
    .line 861
    move/from16 v18, v8

    .line 862
    .line 863
    move-object/from16 v19, v10

    .line 864
    .line 865
    const/4 v5, 0x0

    .line 866
    :goto_14
    :try_start_a
    invoke-virtual {v2, v12, v13}, Lvd/b0;->u0(Lad/c;Led/c;)V
    :try_end_a
    .catch Lvd/p; {:try_start_a .. :try_end_a} :catch_8
    .catch Lvd/r; {:try_start_a .. :try_end_a} :catch_7

    .line 867
    .line 868
    .line 869
    goto :goto_15

    .line 870
    :catch_7
    move-exception v0

    .line 871
    move-object v11, v0

    .line 872
    :goto_15
    iget-object v0, v1, Lvd/z;->g:Lvc/b;

    .line 873
    .line 874
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    check-cast v0, Lwc/a;

    .line 879
    .line 880
    iget-boolean v0, v0, Lwc/a;->x0:Z

    .line 881
    .line 882
    if-nez v0, :cond_1f

    .line 883
    .line 884
    iget-boolean v0, v13, Lfd/t;->O:Z

    .line 885
    .line 886
    if-eqz v0, :cond_1f

    .line 887
    .line 888
    iget-object v0, v4, Lfd/j;->H:Lfd/b;

    .line 889
    .line 890
    iget v0, v0, Lfd/b;->g:I

    .line 891
    .line 892
    if-eqz v0, :cond_1f

    .line 893
    .line 894
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 895
    .line 896
    invoke-virtual {v0}, Lvd/j;->f()Z

    .line 897
    .line 898
    .line 899
    move-result v0

    .line 900
    if-nez v0, :cond_1f

    .line 901
    .line 902
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 903
    .line 904
    invoke-virtual {v0}, Lvd/j;->d()Z

    .line 905
    .line 906
    .line 907
    move-result v0

    .line 908
    if-eqz v0, :cond_1e

    .line 909
    .line 910
    goto :goto_16

    .line 911
    :cond_1e
    new-instance v0, Lvd/p;

    .line 912
    .line 913
    const v2, -0x3fffff93    # -2.000026f

    .line 914
    .line 915
    .line 916
    invoke-direct {v0, v2}, Lvd/p;-><init>(I)V

    .line 917
    .line 918
    .line 919
    throw v0

    .line 920
    :cond_1f
    :goto_16
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 921
    .line 922
    invoke-virtual {v0}, Lvd/j;->d()Z

    .line 923
    .line 924
    .line 925
    move-result v0

    .line 926
    if-nez v0, :cond_20

    .line 927
    .line 928
    iget-boolean v0, v13, Lfd/t;->O:Z

    .line 929
    .line 930
    if-eqz v0, :cond_20

    .line 931
    .line 932
    const/4 v8, 0x1

    .line 933
    goto :goto_17

    .line 934
    :cond_20
    move/from16 v8, v18

    .line 935
    .line 936
    :goto_17
    if-nez v11, :cond_25

    .line 937
    .line 938
    iget v0, v13, Led/c;->i:I

    .line 939
    .line 940
    iput v0, v1, Lvd/z;->b:I

    .line 941
    .line 942
    iget-object v0, v12, Led/c;->v:Led/b;

    .line 943
    .line 944
    if-eqz v0, :cond_21

    .line 945
    .line 946
    invoke-virtual {v1, v0}, Lvd/z;->T(Lad/h;)V

    .line 947
    .line 948
    .line 949
    goto :goto_18

    .line 950
    :cond_21
    if-nez v8, :cond_23

    .line 951
    .line 952
    invoke-virtual/range {p0 .. p0}, Lvd/z;->L()Z

    .line 953
    .line 954
    .line 955
    move-result v0

    .line 956
    if-nez v0, :cond_22

    .line 957
    .line 958
    goto :goto_18

    .line 959
    :cond_22
    new-instance v0, Lvd/r;

    .line 960
    .line 961
    const-string v2, "Signing required but no session key available"

    .line 962
    .line 963
    invoke-direct {v0, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    throw v0

    .line 967
    :cond_23
    :goto_18
    iget-boolean v0, v13, Led/c;->p:Z

    .line 968
    .line 969
    iput-boolean v0, v1, Lvd/z;->j:Z

    .line 970
    .line 971
    iget-object v0, v1, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 972
    .line 973
    const/4 v3, 0x2

    .line 974
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 975
    .line 976
    .line 977
    move-object/from16 v3, v17

    .line 978
    .line 979
    move-object/from16 v10, v19

    .line 980
    .line 981
    goto/16 :goto_b

    .line 982
    .line 983
    :goto_19
    if-nez v9, :cond_24

    .line 984
    .line 985
    return-void

    .line 986
    :cond_24
    move-object v5, v3

    .line 987
    const/4 v3, 0x0

    .line 988
    const/4 v6, 0x0

    .line 989
    const/16 v7, 0xa

    .line 990
    .line 991
    goto/16 :goto_0

    .line 992
    .line 993
    :cond_25
    throw v11

    .line 994
    :catch_8
    move-exception v0

    .line 995
    move-object v2, v0

    .line 996
    throw v2

    .line 997
    :cond_26
    new-instance v0, Lvd/p;

    .line 998
    .line 999
    const-string v2, "Incompatible credentials"

    .line 1000
    .line 1001
    invoke-direct {v0, v2}, Lvd/p;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    throw v0

    .line 1005
    :cond_27
    new-instance v0, Lvd/r;

    .line 1006
    .line 1007
    const-string v2, "Server does not supported extended security"

    .line 1008
    .line 1009
    invoke-direct {v0, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    goto :goto_1b

    .line 1013
    :goto_1a
    throw v0

    .line 1014
    :goto_1b
    goto :goto_1a
.end method

.method public final S(Lvd/b0;Ljava/lang/String;)Lad/d;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lvd/b0;->l0()Lad/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v3, v0

    .line 10
    check-cast v3, Lod/f;

    .line 11
    .line 12
    iget-object v0, v3, Lod/f;->O:[B

    .line 13
    .line 14
    iget v4, v3, Lod/f;->D:I

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    and-int/2addr v4, v5

    .line 18
    const/4 v6, 0x1

    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lvd/b0;->o0()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v4, 0x2

    .line 31
    :goto_1
    iget-object v7, v1, Lvd/z;->h:Lvd/j;

    .line 32
    .line 33
    invoke-virtual {v7}, Lvd/j;->d()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iget-object v8, v3, Lod/f;->P:Lvc/i;

    .line 38
    .line 39
    sget-object v9, Lvc/i;->g:Lvc/i;

    .line 40
    .line 41
    invoke-virtual {v8, v9}, Lvc/i;->a(Lvc/i;)Z

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    const/4 v15, 0x0

    .line 46
    if-eqz v14, :cond_2

    .line 47
    .line 48
    iget-object v8, v2, Lvd/b0;->E:[B

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v8, v15

    .line 52
    :goto_2
    iput-object v8, v1, Lvd/z;->r:[B

    .line 53
    .line 54
    sget-object v13, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 55
    .line 56
    const/4 v11, 0x0

    .line 57
    if-eqz v8, :cond_3

    .line 58
    .line 59
    invoke-interface {v13}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_3

    .line 64
    .line 65
    iget-object v8, v1, Lvd/z;->r:[B

    .line 66
    .line 67
    array-length v9, v8

    .line 68
    invoke-static {v8, v11, v9}, Lge/a;->m([BII)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const-string v9, "Initial session preauth hash "

    .line 73
    .line 74
    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-interface {v13, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    const-wide/16 v8, 0x0

    .line 82
    .line 83
    move/from16 v16, v7

    .line 84
    .line 85
    move-wide v9, v8

    .line 86
    move-object v7, v15

    .line 87
    move-object v8, v7

    .line 88
    move-object/from16 v17, v8

    .line 89
    .line 90
    :goto_3
    iget-object v12, v1, Lvd/z;->h:Lvd/j;

    .line 91
    .line 92
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    if-nez v7, :cond_4

    .line 96
    .line 97
    xor-int/lit8 v7, v16, 0x1

    .line 98
    .line 99
    move-object/from16 v12, p2

    .line 100
    .line 101
    invoke-virtual {v1, v2, v12, v3, v7}, Lvd/z;->A(Lvd/b0;Ljava/lang/String;Lod/f;Z)Lvd/o;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    goto :goto_4

    .line 106
    :cond_4
    move-object/from16 v12, p2

    .line 107
    .line 108
    :goto_4
    if-nez v0, :cond_5

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_5
    array-length v11, v0

    .line 112
    :goto_5
    invoke-interface {v7, v11, v0}, Lvd/o;->a(I[B)[B

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_e

    .line 117
    .line 118
    new-instance v11, Lpd/b;

    .line 119
    .line 120
    iget-object v8, v1, Lvd/z;->d:Lvd/b0;

    .line 121
    .line 122
    iget-object v8, v8, Lvd/b0;->z:Lvc/b;

    .line 123
    .line 124
    iget v5, v3, Lod/f;->H:I

    .line 125
    .line 126
    const-wide/16 v18, 0x0

    .line 127
    .line 128
    move-object/from16 v20, v7

    .line 129
    .line 130
    move-object v7, v11

    .line 131
    move-wide/from16 v21, v9

    .line 132
    .line 133
    move v9, v4

    .line 134
    move v10, v5

    .line 135
    move-object v5, v11

    .line 136
    move-wide/from16 v11, v18

    .line 137
    .line 138
    move-object/from16 v23, v13

    .line 139
    .line 140
    move-object v13, v0

    .line 141
    invoke-direct/range {v7 .. v13}, Lpd/b;-><init>(Lvc/b;IIJ[B)V

    .line 142
    .line 143
    .line 144
    move-wide/from16 v9, v21

    .line 145
    .line 146
    invoke-virtual {v5, v9, v10}, Lid/b;->f(J)V

    .line 147
    .line 148
    .line 149
    iput-boolean v6, v5, Lid/b;->t:Z

    .line 150
    .line 151
    const v7, -0x3fffffea    # -2.0000052f

    .line 152
    .line 153
    .line 154
    :try_start_0
    sget-object v0, Lvd/l;->c:Lvd/l;

    .line 155
    .line 156
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v2, v5, v15, v0}, Lvd/b0;->t0(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Lpd/c;

    .line 165
    .line 166
    iget-wide v9, v0, Lid/b;->s:J
    :try_end_0
    .catch Lvd/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    move-object v8, v0

    .line 169
    goto :goto_7

    .line 170
    :catch_0
    move-exception v0

    .line 171
    goto :goto_6

    .line 172
    :catch_1
    move-exception v0

    .line 173
    goto/16 :goto_a

    .line 174
    .line 175
    :goto_6
    iget-object v8, v5, Lid/c;->x:Lid/d;

    .line 176
    .line 177
    check-cast v8, Lpd/c;

    .line 178
    .line 179
    const v11, -0x3ffffff3    # -2.000003f

    .line 180
    .line 181
    .line 182
    iget v12, v0, Lvd/r;->a:I

    .line 183
    .line 184
    if-eq v12, v11, :cond_d

    .line 185
    .line 186
    iget-boolean v11, v8, Lid/d;->x:Z

    .line 187
    .line 188
    if-eqz v11, :cond_c

    .line 189
    .line 190
    iget-boolean v11, v8, Lid/d;->y:Z

    .line 191
    .line 192
    if-nez v11, :cond_c

    .line 193
    .line 194
    iget v11, v8, Lid/b;->j:I

    .line 195
    .line 196
    if-eqz v11, :cond_6

    .line 197
    .line 198
    if-ne v11, v7, :cond_c

    .line 199
    .line 200
    :cond_6
    move-object/from16 v17, v0

    .line 201
    .line 202
    :goto_7
    iget-object v0, v1, Lvd/z;->g:Lvc/b;

    .line 203
    .line 204
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Lwc/a;

    .line 209
    .line 210
    iget-boolean v0, v0, Lwc/a;->x0:Z

    .line 211
    .line 212
    if-nez v0, :cond_8

    .line 213
    .line 214
    iget v0, v8, Lpd/c;->D:I

    .line 215
    .line 216
    and-int/lit8 v0, v0, 0x3

    .line 217
    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 221
    .line 222
    invoke-virtual {v0}, Lvd/j;->f()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_8

    .line 227
    .line 228
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 229
    .line 230
    invoke-virtual {v0}, Lvd/j;->d()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_7
    new-instance v0, Lvd/p;

    .line 238
    .line 239
    const v2, -0x3fffff93    # -2.000026f

    .line 240
    .line 241
    .line 242
    invoke-direct {v0, v2}, Lvd/p;-><init>(I)V

    .line 243
    .line 244
    .line 245
    throw v0

    .line 246
    :cond_8
    :goto_8
    iget-object v0, v1, Lvd/z;->h:Lvd/j;

    .line 247
    .line 248
    invoke-virtual {v0}, Lvd/j;->d()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_9

    .line 253
    .line 254
    iget v0, v8, Lpd/c;->D:I

    .line 255
    .line 256
    and-int/lit8 v0, v0, 0x3

    .line 257
    .line 258
    if-eqz v0, :cond_9

    .line 259
    .line 260
    const/16 v16, 0x1

    .line 261
    .line 262
    :cond_9
    iget v0, v8, Lpd/c;->D:I

    .line 263
    .line 264
    and-int/lit8 v0, v0, 0x4

    .line 265
    .line 266
    if-nez v0, :cond_b

    .line 267
    .line 268
    if-eqz v14, :cond_a

    .line 269
    .line 270
    iget-object v0, v5, Lid/b;->v:[B

    .line 271
    .line 272
    array-length v5, v0

    .line 273
    iget-object v11, v1, Lvd/z;->r:[B

    .line 274
    .line 275
    invoke-virtual {v2, v5, v0, v11}, Lvd/b0;->c0(I[B[B)[B

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iput-object v0, v1, Lvd/z;->r:[B

    .line 280
    .line 281
    iget v5, v8, Lid/b;->j:I

    .line 282
    .line 283
    if-ne v5, v7, :cond_a

    .line 284
    .line 285
    iget-object v5, v8, Lid/b;->v:[B

    .line 286
    .line 287
    array-length v7, v5

    .line 288
    invoke-virtual {v2, v7, v5, v0}, Lvd/b0;->c0(I[B[B)[B

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iput-object v0, v1, Lvd/z;->r:[B

    .line 293
    .line 294
    :cond_a
    iget-object v0, v8, Lpd/c;->E:[B

    .line 295
    .line 296
    :goto_9
    move/from16 v5, v16

    .line 297
    .line 298
    goto :goto_b

    .line 299
    :cond_b
    new-instance v0, Lvd/i0;

    .line 300
    .line 301
    const-string v2, "Server requires encryption, not yet supported."

    .line 302
    .line 303
    invoke-direct {v0, v2}, Lvd/i0;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :cond_c
    throw v0

    .line 308
    :cond_d
    new-instance v2, Lvd/p;

    .line 309
    .line 310
    invoke-direct {v2, v0}, Lvd/p;-><init>(Lvd/r;)V

    .line 311
    .line 312
    .line 313
    throw v2

    .line 314
    :goto_a
    throw v0

    .line 315
    :cond_e
    move-object/from16 v20, v7

    .line 316
    .line 317
    move-object/from16 v23, v13

    .line 318
    .line 319
    goto :goto_9

    .line 320
    :goto_b
    invoke-interface/range {v20 .. v20}, Lvd/o;->b()Z

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    if-eqz v7, :cond_1b

    .line 325
    .line 326
    const-string v0, "Context is established"

    .line 327
    .line 328
    move-object/from16 v7, v23

    .line 329
    .line 330
    invoke-interface {v7, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iput-object v15, v1, Lvd/z;->f:Ljava/lang/String;

    .line 334
    .line 335
    invoke-interface/range {v20 .. v20}, Lvd/o;->c()[B

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-eqz v0, :cond_f

    .line 340
    .line 341
    const/16 v4, 0x10

    .line 342
    .line 343
    new-array v9, v4, [B

    .line 344
    .line 345
    array-length v10, v0

    .line 346
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    const/4 v10, 0x0

    .line 351
    invoke-static {v0, v10, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    .line 353
    .line 354
    iput-object v9, v1, Lvd/z;->i:[B

    .line 355
    .line 356
    :cond_f
    if-eqz v8, :cond_10

    .line 357
    .line 358
    iget v0, v8, Lid/b;->b:I

    .line 359
    .line 360
    and-int/lit8 v0, v0, 0x8

    .line 361
    .line 362
    if-eqz v0, :cond_10

    .line 363
    .line 364
    const/4 v11, 0x1

    .line 365
    goto :goto_c

    .line 366
    :cond_10
    const/4 v11, 0x0

    .line 367
    :goto_c
    if-nez v5, :cond_18

    .line 368
    .line 369
    invoke-virtual/range {p0 .. p0}, Lvd/z;->L()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-nez v0, :cond_11

    .line 374
    .line 375
    if-eqz v11, :cond_18

    .line 376
    .line 377
    :cond_11
    invoke-interface/range {v20 .. v20}, Lvd/o;->c()[B

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    if-eqz v0, :cond_16

    .line 382
    .line 383
    if-eqz v8, :cond_16

    .line 384
    .line 385
    iget-object v0, v1, Lvd/z;->r:[B

    .line 386
    .line 387
    if-eqz v0, :cond_12

    .line 388
    .line 389
    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_12

    .line 394
    .line 395
    iget-object v0, v1, Lvd/z;->r:[B

    .line 396
    .line 397
    array-length v2, v0

    .line 398
    const/4 v4, 0x0

    .line 399
    invoke-static {v0, v4, v2}, Lge/a;->m([BII)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    const-string v2, "Final preauth integrity hash "

    .line 404
    .line 405
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-interface {v7, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    :cond_12
    new-instance v0, Lid/f;

    .line 413
    .line 414
    iget-object v2, v1, Lvd/z;->i:[B

    .line 415
    .line 416
    iget v4, v3, Lod/f;->E:I

    .line 417
    .line 418
    iget-object v5, v1, Lvd/z;->r:[B

    .line 419
    .line 420
    invoke-direct {v0, v2, v4, v5}, Lid/f;-><init>([BI[B)V

    .line 421
    .line 422
    .line 423
    iget-object v2, v3, Lod/f;->P:Lvc/i;

    .line 424
    .line 425
    sget-object v3, Lvc/i;->f:Lvc/i;

    .line 426
    .line 427
    invoke-virtual {v2, v3}, Lvc/i;->a(Lvc/i;)Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-nez v2, :cond_13

    .line 432
    .line 433
    iget v2, v8, Lid/b;->b:I

    .line 434
    .line 435
    and-int/lit8 v2, v2, 0x8

    .line 436
    .line 437
    if-eqz v2, :cond_14

    .line 438
    .line 439
    :cond_13
    invoke-virtual {v8, v0}, Lid/b;->i(Lad/h;)V

    .line 440
    .line 441
    .line 442
    iget-object v2, v8, Lid/b;->v:[B

    .line 443
    .line 444
    array-length v3, v2

    .line 445
    const/4 v11, 0x0

    .line 446
    invoke-virtual {v8, v11, v3, v2}, Lid/d;->q0(II[B)Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-eqz v2, :cond_15

    .line 451
    .line 452
    :cond_14
    invoke-virtual {v1, v0}, Lvd/z;->T(Lad/h;)V

    .line 453
    .line 454
    .line 455
    goto :goto_d

    .line 456
    :cond_15
    new-instance v0, Lvd/r;

    .line 457
    .line 458
    const-string v2, "Signature validation failed"

    .line 459
    .line 460
    invoke-direct {v0, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v0

    .line 464
    :cond_16
    iget-object v0, v2, Lvd/b0;->z:Lvc/b;

    .line 465
    .line 466
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    check-cast v0, Lwc/a;

    .line 471
    .line 472
    iget-boolean v0, v0, Lwc/a;->g:Z

    .line 473
    .line 474
    if-nez v0, :cond_17

    .line 475
    .line 476
    goto :goto_d

    .line 477
    :cond_17
    new-instance v0, Lvd/r;

    .line 478
    .line 479
    const-string v2, "Signing enabled but no session key available"

    .line 480
    .line 481
    invoke-direct {v0, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw v0

    .line 485
    :cond_18
    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-eqz v0, :cond_19

    .line 490
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    const-string v2, "No digest setup "

    .line 494
    .line 495
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v2, " B "

    .line 502
    .line 503
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual/range {p0 .. p0}, Lvd/z;->L()Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-interface {v7, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    :cond_19
    :goto_d
    iput-boolean v6, v1, Lvd/z;->j:Z

    .line 521
    .line 522
    iget-object v0, v1, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 523
    .line 524
    const/4 v12, 0x2

    .line 525
    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 526
    .line 527
    .line 528
    iget-wide v2, v8, Lid/b;->s:J

    .line 529
    .line 530
    iput-wide v2, v1, Lvd/z;->m:J

    .line 531
    .line 532
    if-nez v17, :cond_1a

    .line 533
    .line 534
    iget-object v0, v8, Lid/b;->w:Lid/b;

    .line 535
    .line 536
    check-cast v0, Lad/d;

    .line 537
    .line 538
    return-object v0

    .line 539
    :cond_1a
    throw v17

    .line 540
    :cond_1b
    move/from16 v16, v5

    .line 541
    .line 542
    move-object/from16 v7, v20

    .line 543
    .line 544
    move-object/from16 v13, v23

    .line 545
    .line 546
    const/4 v5, 0x2

    .line 547
    const/4 v11, 0x0

    .line 548
    goto/16 :goto_3
.end method

.method public final T(Lad/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/z;->d:Lvd/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvd/b0;->n0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lvd/z;->n:Lad/h;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lvd/z;->d:Lvd/b0;

    .line 13
    .line 14
    iput-object p1, v0, Lvd/b0;->C:Lad/h;

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final U(Ljava/lang/Class;)Lvd/z;
    .locals 1

    .line 1
    const-class v0, Lvd/z;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvd/z;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final finalize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lvd/z;->d:Lvd/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvd/b0;->T()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lvd/z;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    sget-object v0, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 31
    .line 32
    const-string v1, "Session was not properly released"

    .line 33
    .line 34
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 6

    .line 1
    iget-object v0, p0, Lvd/z;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lvd/z;->s:Lorg/slf4j/Logger;

    .line 8
    .line 9
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Acquire session "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, " "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const-wide/16 v3, 0x1

    .line 41
    .line 42
    cmp-long v5, v0, v3

    .line 43
    .line 44
    if-nez v5, :cond_2

    .line 45
    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lvd/z;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const-string v0, "Reacquire transport"

    .line 58
    .line 59
    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lvd/z;->d:Lvd/b0;

    .line 63
    .line 64
    invoke-virtual {v0}, Lvd/b0;->b0()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    monitor-exit p0

    .line 71
    goto :goto_2

    .line 72
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw v0

    .line 74
    :cond_2
    :goto_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SmbSession[credentials="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lvd/z;->g:Lvc/b;

    .line 9
    .line 10
    invoke-interface {v1}, Lvc/b;->g()Lvd/a;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ",targetHost="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lvd/z;->q:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ",targetDomain="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lvd/z;->p:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ",uid="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lvd/z;->b:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ",connectionState="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ",usage="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lvd/z;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, "]"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method
