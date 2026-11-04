.class public Lvd/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lorg/slf4j/Logger;

.field public static final g:Ljava/util/Random;


# instance fields
.field public final a:Lvc/b;

.field public b:Lvd/h0;

.field public volatile c:Z

.field public d:Lvd/c0;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/e0;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 8
    .line 9
    new-instance v0, Ljava/util/Random;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lvd/e0;->g:Ljava/util/Random;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lvc/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvd/e0;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    iput-object p1, p0, Lvd/e0;->a:Lvc/b;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Acquire tree on first usage "

    .line 4
    .line 5
    iget-object v3, p0, Lvd/e0;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    sget-object v5, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 12
    .line 13
    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v7, "Acquire tree connection "

    .line 22
    .line 23
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v7, " "

    .line 30
    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const-wide/16 v6, 0x1

    .line 45
    .line 46
    cmp-long v8, v3, v6

    .line 47
    .line 48
    if-nez v8, :cond_4

    .line 49
    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lvd/e0;->j()Lvd/h0;

    .line 52
    .line 53
    .line 54
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    :try_start_1
    iget-boolean v4, p0, Lvd/e0;->c:Z

    .line 58
    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v5, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v2

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Lvd/h0;->r(Z)V

    .line 86
    .line 87
    .line 88
    iput-boolean v0, p0, Lvd/e0;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :goto_1
    :try_start_2
    invoke-virtual {v3, v1}, Lvd/h0;->M(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_1
    move-exception v3

    .line 96
    :try_start_3
    const-class v4, Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 97
    .line 98
    :try_start_4
    const-string v5, "addSuppressed"

    .line 99
    .line 100
    new-array v6, v0, [Ljava/lang/Class;

    .line 101
    .line 102
    aput-object v4, v6, v1

    .line 103
    .line 104
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object v3, v0, v1

    .line 111
    .line 112
    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 113
    .line 114
    .line 115
    :catch_0
    :goto_2
    :try_start_5
    throw v2

    .line 116
    :catchall_2
    move-exception v0

    .line 117
    goto :goto_4

    .line 118
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 119
    .line 120
    invoke-virtual {v3, v1}, Lvd/h0;->M(Z)V

    .line 121
    .line 122
    .line 123
    :cond_3
    monitor-exit p0

    .line 124
    goto :goto_5

    .line 125
    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 126
    throw v0

    .line 127
    :cond_4
    :goto_5
    return-void
.end method

.method public final declared-synchronized b(Lvd/y;)Lvd/g0;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lvd/e0;->i()Lvd/z;

    .line 5
    .line 6
    .line 7
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 8
    :try_start_1
    invoke-virtual {p0}, Lvd/e0;->l()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    iget-object v3, v2, Lvd/z;->d:Lvd/b0;

    .line 15
    .line 16
    invoke-virtual {v3}, Lvd/b0;->b0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 17
    .line 18
    .line 19
    :try_start_2
    invoke-virtual {v3}, Lvd/b0;->T()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    iget-object v4, v3, Lvd/b0;->y:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    :cond_0
    sget-object v4, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 30
    .line 31
    const-string v5, "Disconnecting failed tree and session"

    .line 32
    .line 33
    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lvd/e0;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Lhe/e;->Y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_4
    invoke-virtual {v3}, Lhe/e;->Y()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_1
    move-exception v3

    .line 49
    :try_start_5
    const-class v4, Ljava/lang/Throwable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 50
    .line 51
    :try_start_6
    const-string v5, "addSuppressed"

    .line 52
    .line 53
    new-array v6, v1, [Ljava/lang/Class;

    .line 54
    .line 55
    aput-object v4, v6, v0

    .line 56
    .line 57
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-array v5, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v3, v5, v0

    .line 64
    .line 65
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 66
    .line 67
    .line 68
    :catch_0
    :goto_0
    :try_start_7
    throw p1

    .line 69
    :catchall_2
    move-exception p1

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lvd/e0;->l()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    sget-object v3, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 78
    .line 79
    const-string v4, "Already connected"

    .line 80
    .line 81
    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v3, Lvd/g0;

    .line 85
    .line 86
    invoke-direct {v3, p1, p0}, Lvd/g0;-><init>(Lvd/y;Lvd/e0;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 87
    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    :try_start_8
    invoke-virtual {v2}, Lvd/z;->O()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 92
    .line 93
    .line 94
    :cond_3
    monitor-exit p0

    .line 95
    return-object v3

    .line 96
    :cond_4
    :try_start_9
    iget-object v3, p1, Lvd/y;->b:Lbd/b;

    .line 97
    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    check-cast v3, Lbd/a;

    .line 101
    .line 102
    iget-object v3, v3, Lbd/a;->c:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {p1}, Lvd/y;->c()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :goto_2
    invoke-virtual {p0, p1, v3}, Lvd/e0;->c(Lvd/y;Ljava/lang/String;)Lvd/g0;

    .line 110
    .line 111
    .line 112
    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    :try_start_a
    invoke-virtual {v2}, Lvd/z;->O()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 116
    .line 117
    .line 118
    :cond_6
    monitor-exit p0

    .line 119
    return-object p1

    .line 120
    :goto_3
    if-eqz v2, :cond_7

    .line 121
    .line 122
    :try_start_b
    invoke-virtual {v2}, Lvd/z;->O()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :catchall_3
    move-exception v2

    .line 127
    :try_start_c
    const-class v3, Ljava/lang/Throwable;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 128
    .line 129
    :try_start_d
    const-string v4, "addSuppressed"

    .line 130
    .line 131
    new-array v5, v1, [Ljava/lang/Class;

    .line 132
    .line 133
    aput-object v3, v5, v0

    .line 134
    .line 135
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    new-array v1, v1, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v2, v1, v0

    .line 142
    .line 143
    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 144
    .line 145
    .line 146
    :catch_1
    :cond_7
    :goto_4
    :try_start_e
    throw p1

    .line 147
    :catchall_4
    move-exception p1

    .line 148
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 149
    throw p1
.end method

.method public final declared-synchronized c(Lvd/y;Ljava/lang/String;)Lvd/g0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lvd/e0;->d(Lvd/y;Ljava/lang/String;Lbd/b;)Lvd/g0;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return-object p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public final declared-synchronized d(Lvd/y;Ljava/lang/String;Lbd/b;)Lvd/g0;
    .locals 19

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const/4 v10, 0x1

    .line 6
    const/4 v11, 0x0

    .line 7
    const-string v0, "Tree is "

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lvd/e0;->j()Lvd/h0;

    .line 11
    .line 12
    .line 13
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v12, :cond_5

    .line 16
    .line 17
    :try_start_1
    sget-object v2, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 18
    .line 19
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object v1, v0

    .line 43
    goto/16 :goto_a

    .line 44
    .line 45
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lvd/y;->d()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v3, v12, Lvd/h0;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    iget-object v13, v12, Lvd/h0;->d:Lvd/z;

    .line 58
    .line 59
    invoke-virtual {v13}, Lvd/z;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    :try_start_2
    iget-object v0, v13, Lvd/z;->p:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v3, v13, Lvd/z;->d:Lvd/b0;

    .line 65
    .line 66
    iget-object v4, v3, Lvd/b0;->p:Ljava/net/Socket;

    .line 67
    .line 68
    iget v5, v3, Lhe/e;->a:I

    .line 69
    .line 70
    const/4 v6, 0x5

    .line 71
    if-eq v5, v6, :cond_3

    .line 72
    .line 73
    iget v3, v3, Lhe/e;->a:I

    .line 74
    .line 75
    const/4 v5, 0x6

    .line 76
    if-ne v3, v5, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    if-eqz v4, :cond_3

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 v3, 0x0

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 91
    :goto_2
    if-nez v3, :cond_4

    .line 92
    .line 93
    iget-object v14, v13, Lvd/z;->d:Lvd/b0;

    .line 94
    .line 95
    invoke-virtual {v14}, Lvd/b0;->b0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 96
    .line 97
    .line 98
    :try_start_3
    iget-object v4, v12, Lvd/h0;->b:Ljava/lang/String;

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    move-object/from16 v1, p0

    .line 102
    .line 103
    move-object/from16 v2, p1

    .line 104
    .line 105
    move-object/from16 v3, p2

    .line 106
    .line 107
    move-object v5, v14

    .line 108
    move-object v6, v12

    .line 109
    invoke-virtual/range {v1 .. v7}, Lvd/e0;->e(Lvd/y;Ljava/lang/String;Ljava/lang/String;Lvd/c0;Lvd/h0;Lbd/b;)Lvd/h0;

    .line 110
    .line 111
    .line 112
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 113
    :try_start_4
    invoke-virtual {v8, v1}, Lvd/e0;->o(Lvd/h0;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lvd/g0;

    .line 117
    .line 118
    invoke-direct {v0, v9, v8}, Lvd/g0;-><init>(Lvd/y;Lvd/e0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    .line 120
    .line 121
    :try_start_5
    invoke-virtual {v1, v11}, Lvd/h0;->M(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 122
    .line 123
    .line 124
    :try_start_6
    invoke-virtual {v14}, Lhe/e;->Y()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 125
    .line 126
    .line 127
    :try_start_7
    invoke-virtual {v13}, Lvd/z;->O()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 128
    .line 129
    .line 130
    :try_start_8
    invoke-virtual {v12, v11}, Lvd/h0;->M(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 131
    .line 132
    .line 133
    monitor-exit p0

    .line 134
    return-object v0

    .line 135
    :goto_3
    move-object v1, v0

    .line 136
    goto :goto_8

    .line 137
    :goto_4
    move-object v1, v0

    .line 138
    goto :goto_6

    .line 139
    :catchall_1
    move-exception v0

    .line 140
    move-object v2, v0

    .line 141
    :try_start_9
    invoke-virtual {v1, v11}, Lvd/h0;->M(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :catchall_2
    move-exception v0

    .line 146
    move-object v1, v0

    .line 147
    :try_start_a
    const-class v0, Ljava/lang/Throwable;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 148
    .line 149
    :try_start_b
    const-string v3, "addSuppressed"

    .line 150
    .line 151
    new-array v4, v10, [Ljava/lang/Class;

    .line 152
    .line 153
    aput-object v0, v4, v11

    .line 154
    .line 155
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    new-array v3, v10, [Ljava/lang/Object;

    .line 160
    .line 161
    aput-object v1, v3, v11

    .line 162
    .line 163
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 164
    .line 165
    .line 166
    :catch_0
    :goto_5
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 167
    :catchall_3
    move-exception v0

    .line 168
    goto :goto_4

    .line 169
    :goto_6
    :try_start_d
    invoke-virtual {v14}, Lhe/e;->Y()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 170
    .line 171
    .line 172
    goto :goto_7

    .line 173
    :catchall_4
    move-exception v0

    .line 174
    move-object v2, v0

    .line 175
    :try_start_e
    const-class v0, Ljava/lang/Throwable;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 176
    .line 177
    :try_start_f
    const-string v3, "addSuppressed"

    .line 178
    .line 179
    new-array v4, v10, [Ljava/lang/Class;

    .line 180
    .line 181
    aput-object v0, v4, v11

    .line 182
    .line 183
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    new-array v3, v10, [Ljava/lang/Object;

    .line 188
    .line 189
    aput-object v2, v3, v11

    .line 190
    .line 191
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 192
    .line 193
    .line 194
    :catch_1
    :goto_7
    :try_start_10
    throw v1

    .line 195
    :catchall_5
    move-exception v0

    .line 196
    goto :goto_3

    .line 197
    :cond_4
    const-string v3, "Session no longer valid"

    .line 198
    .line 199
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 200
    .line 201
    .line 202
    :try_start_11
    invoke-virtual {v13}, Lvd/z;->O()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_c

    .line 206
    :goto_8
    :try_start_12
    invoke-virtual {v13}, Lvd/z;->O()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 207
    .line 208
    .line 209
    goto :goto_9

    .line 210
    :catchall_6
    move-exception v0

    .line 211
    move-object v2, v0

    .line 212
    :try_start_13
    const-class v0, Ljava/lang/Throwable;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 213
    .line 214
    :try_start_14
    const-string v3, "addSuppressed"

    .line 215
    .line 216
    new-array v4, v10, [Ljava/lang/Class;

    .line 217
    .line 218
    aput-object v0, v4, v11

    .line 219
    .line 220
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-array v3, v10, [Ljava/lang/Object;

    .line 225
    .line 226
    aput-object v2, v3, v11

    .line 227
    .line 228
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 229
    .line 230
    .line 231
    :catch_2
    :goto_9
    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 232
    :goto_a
    :try_start_16
    invoke-virtual {v12, v11}, Lvd/h0;->M(Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 233
    .line 234
    .line 235
    goto :goto_b

    .line 236
    :catchall_7
    move-exception v0

    .line 237
    move-object v2, v0

    .line 238
    :try_start_17
    const-class v0, Ljava/lang/Throwable;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 239
    .line 240
    :try_start_18
    const-string v3, "addSuppressed"

    .line 241
    .line 242
    new-array v4, v10, [Ljava/lang/Class;

    .line 243
    .line 244
    aput-object v0, v4, v11

    .line 245
    .line 246
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-array v3, v10, [Ljava/lang/Object;

    .line 251
    .line 252
    aput-object v2, v3, v11

    .line 253
    .line 254
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 255
    .line 256
    .line 257
    :catch_3
    :goto_b
    :try_start_19
    throw v1

    .line 258
    :catchall_8
    move-exception v0

    .line 259
    goto/16 :goto_22

    .line 260
    .line 261
    :cond_5
    move-object v0, v1

    .line 262
    :goto_c
    if-eqz v12, :cond_6

    .line 263
    .line 264
    invoke-virtual {v12, v11}, Lvd/h0;->M(Z)V

    .line 265
    .line 266
    .line 267
    :cond_6
    iget-object v2, v9, Lvd/y;->b:Lbd/b;

    .line 268
    .line 269
    if-eqz v2, :cond_7

    .line 270
    .line 271
    check-cast v2, Lbd/a;

    .line 272
    .line 273
    iget-object v2, v2, Lbd/a;->c:Ljava/lang/String;

    .line 274
    .line 275
    :goto_d
    move-object v14, v2

    .line 276
    goto :goto_e

    .line 277
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lvd/y;->c()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    goto :goto_d

    .line 282
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lvd/y;->e()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    const/16 v3, 0x8

    .line 287
    .line 288
    if-eq v2, v3, :cond_9

    .line 289
    .line 290
    invoke-virtual/range {p1 .. p1}, Lvd/y;->f()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    if-eqz v2, :cond_9

    .line 295
    .line 296
    const-string v2, "\\"

    .line 297
    .line 298
    invoke-virtual/range {p1 .. p1}, Lvd/y;->f()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_8

    .line 307
    .line 308
    goto :goto_f

    .line 309
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lvd/y;->f()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    :cond_9
    :goto_f
    move-object/from16 v16, v1

    .line 314
    .line 315
    invoke-virtual/range {p1 .. p1}, Lvd/y;->d()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    if-eqz p3, :cond_a

    .line 320
    .line 321
    move-object/from16 v12, p3

    .line 322
    .line 323
    goto :goto_10

    .line 324
    :cond_a
    iget-object v2, v8, Lvd/e0;->a:Lvc/b;

    .line 325
    .line 326
    invoke-interface {v2}, Lvc/b;->k()Lvc/h;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    iget-object v13, v8, Lvd/e0;->a:Lvc/b;

    .line 331
    .line 332
    invoke-virtual/range {p1 .. p1}, Lvd/y;->d()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v15

    .line 336
    move-object v12, v2

    .line 337
    check-cast v12, Lvd/d;

    .line 338
    .line 339
    const/16 v17, 0x5

    .line 340
    .line 341
    invoke-virtual/range {v12 .. v17}, Lvd/d;->h(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbd/b;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    move-object v12, v2

    .line 346
    :goto_10
    move-object v2, v1

    .line 347
    move-object v13, v12

    .line 348
    move-object v1, v0

    .line 349
    move-object/from16 v0, p2

    .line 350
    .line 351
    :goto_11
    if-eqz v13, :cond_b

    .line 352
    .line 353
    move-object v0, v13

    .line 354
    check-cast v0, Lbd/a;

    .line 355
    .line 356
    iget-object v0, v0, Lbd/a;->l:Ljava/lang/String;

    .line 357
    .line 358
    move-object v1, v13

    .line 359
    check-cast v1, Lbd/a;

    .line 360
    .line 361
    iget-object v1, v1, Lbd/a;->c:Ljava/lang/String;

    .line 362
    .line 363
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 364
    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    move-object v2, v13

    .line 370
    check-cast v2, Lbd/a;

    .line 371
    .line 372
    iget-object v2, v2, Lbd/a;->d:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 373
    .line 374
    move-object v15, v0

    .line 375
    move-object v14, v1

    .line 376
    :goto_12
    move-object v7, v2

    .line 377
    goto :goto_13

    .line 378
    :cond_b
    move-object v14, v0

    .line 379
    move-object v15, v1

    .line 380
    goto :goto_12

    .line 381
    :goto_13
    :try_start_1a
    iget-object v0, v8, Lvd/e0;->a:Lvc/b;

    .line 382
    .line 383
    invoke-interface {v0}, Lvc/b;->b()Lvc/o;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    iget-object v2, v8, Lvd/e0;->a:Lvc/b;

    .line 388
    .line 389
    iget-object v1, v9, Lvd/y;->a:Ljava/net/URL;

    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    invoke-virtual/range {p1 .. p1}, Lvd/y;->j()Z

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    move-object v1, v0

    .line 400
    check-cast v1, Lvd/d0;

    .line 401
    .line 402
    const/4 v5, 0x0

    .line 403
    move-object v3, v14

    .line 404
    invoke-virtual/range {v1 .. v6}, Lvd/d0;->c(Lvc/b;Ljava/lang/String;IZZ)Lvd/b0;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    const-class v0, Lvd/c0;

    .line 409
    .line 410
    invoke-virtual {v6, v0}, Lvd/b0;->y0(Ljava/lang/Class;)Lvd/b0;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 411
    .line 412
    .line 413
    :try_start_1b
    iget-object v0, v8, Lvd/e0;->a:Lvc/b;

    .line 414
    .line 415
    invoke-virtual {v6, v0, v14, v15}, Lvd/b0;->m0(Lvc/b;Ljava/lang/String;Ljava/lang/String;)Lvd/z;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    const-class v0, Lvd/a0;

    .line 420
    .line 421
    invoke-virtual {v5, v0}, Lvd/z;->U(Ljava/lang/Class;)Lvd/z;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    .line 422
    .line 423
    .line 424
    :try_start_1c
    invoke-virtual {v5, v7}, Lvd/z;->K(Ljava/lang/String;)Lvd/h0;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    const-class v0, Lvd/h0;

    .line 429
    .line 430
    invoke-virtual {v4, v0}, Lvd/h0;->T(Ljava/lang/Class;)Lvd/h0;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 431
    .line 432
    .line 433
    move-object/from16 v1, p0

    .line 434
    .line 435
    move-object/from16 v2, p1

    .line 436
    .line 437
    move-object v3, v14

    .line 438
    move-object/from16 p2, v4

    .line 439
    .line 440
    move-object v4, v7

    .line 441
    move-object/from16 v16, v5

    .line 442
    .line 443
    move-object v5, v6

    .line 444
    move-object/from16 v17, v6

    .line 445
    .line 446
    move-object/from16 v6, p2

    .line 447
    .line 448
    move-object/from16 v18, v7

    .line 449
    .line 450
    move-object v7, v13

    .line 451
    :try_start_1d
    invoke-virtual/range {v1 .. v7}, Lvd/e0;->e(Lvd/y;Ljava/lang/String;Ljava/lang/String;Lvd/c0;Lvd/h0;Lbd/b;)Lvd/h0;

    .line 452
    .line 453
    .line 454
    move-result-object v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 455
    if-eqz v13, :cond_c

    .line 456
    .line 457
    :try_start_1e
    iput-object v13, v1, Lvd/h0;->p:Lbd/b;

    .line 458
    .line 459
    if-eq v13, v12, :cond_c

    .line 460
    .line 461
    move-object v0, v13

    .line 462
    check-cast v0, Lbd/a;

    .line 463
    .line 464
    invoke-virtual {v0}, Lbd/a;->e()Lbd/a;

    .line 465
    .line 466
    .line 467
    iget-object v2, v0, Lbd/a;->j:Lj$/util/concurrent/ConcurrentHashMap;

    .line 468
    .line 469
    if-eqz v2, :cond_c

    .line 470
    .line 471
    iget-object v3, v0, Lbd/a;->k:Ljava/lang/String;

    .line 472
    .line 473
    if-eqz v3, :cond_c

    .line 474
    .line 475
    invoke-virtual {v2, v3, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    goto :goto_15

    .line 479
    :goto_14
    move-object/from16 v2, p2

    .line 480
    .line 481
    move-object v3, v0

    .line 482
    goto :goto_19

    .line 483
    :cond_c
    :goto_15
    invoke-virtual {v8, v1}, Lvd/e0;->o(Lvd/h0;)V

    .line 484
    .line 485
    .line 486
    new-instance v0, Lvd/g0;

    .line 487
    .line 488
    invoke-direct {v0, v9, v8}, Lvd/g0;-><init>(Lvd/y;Lvd/e0;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 489
    .line 490
    .line 491
    :try_start_1f
    invoke-virtual {v1, v11}, Lvd/h0;->M(Z)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 492
    .line 493
    .line 494
    move-object/from16 v2, p2

    .line 495
    .line 496
    :try_start_20
    invoke-virtual {v2, v11}, Lvd/h0;->M(Z)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    .line 497
    .line 498
    .line 499
    :try_start_21
    invoke-virtual/range {v16 .. v16}, Lvd/z;->O()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    .line 500
    .line 501
    .line 502
    :try_start_22
    invoke-virtual/range {v17 .. v17}, Lhe/e;->Y()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_8
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 503
    .line 504
    .line 505
    monitor-exit p0

    .line 506
    return-object v0

    .line 507
    :goto_16
    move-object v1, v0

    .line 508
    goto/16 :goto_1f

    .line 509
    .line 510
    :goto_17
    move-object v1, v0

    .line 511
    goto :goto_1d

    .line 512
    :goto_18
    move-object v1, v0

    .line 513
    goto :goto_1b

    .line 514
    :catchall_9
    move-exception v0

    .line 515
    goto :goto_14

    .line 516
    :goto_19
    :try_start_23
    invoke-virtual {v1, v11}, Lvd/h0;->M(Z)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    .line 517
    .line 518
    .line 519
    goto :goto_1a

    .line 520
    :catchall_a
    move-exception v0

    .line 521
    move-object v1, v0

    .line 522
    :try_start_24
    const-class v0, Ljava/lang/Throwable;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    .line 523
    .line 524
    :try_start_25
    const-string v4, "addSuppressed"

    .line 525
    .line 526
    new-array v5, v10, [Ljava/lang/Class;

    .line 527
    .line 528
    aput-object v0, v5, v11

    .line 529
    .line 530
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    new-array v4, v10, [Ljava/lang/Object;

    .line 535
    .line 536
    aput-object v1, v4, v11

    .line 537
    .line 538
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_4
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 539
    .line 540
    .line 541
    :catch_4
    :goto_1a
    :try_start_26
    throw v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 542
    :catchall_b
    move-exception v0

    .line 543
    goto :goto_18

    .line 544
    :catchall_c
    move-exception v0

    .line 545
    move-object/from16 v2, p2

    .line 546
    .line 547
    goto :goto_18

    .line 548
    :goto_1b
    :try_start_27
    invoke-virtual {v2, v11}, Lvd/h0;->M(Z)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    .line 549
    .line 550
    .line 551
    goto :goto_1c

    .line 552
    :catchall_d
    move-exception v0

    .line 553
    move-object v2, v0

    .line 554
    :try_start_28
    const-class v0, Ljava/lang/Throwable;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    .line 555
    .line 556
    :try_start_29
    const-string v3, "addSuppressed"

    .line 557
    .line 558
    new-array v4, v10, [Ljava/lang/Class;

    .line 559
    .line 560
    aput-object v0, v4, v11

    .line 561
    .line 562
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    new-array v3, v10, [Ljava/lang/Object;

    .line 567
    .line 568
    aput-object v2, v3, v11

    .line 569
    .line 570
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_5
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    .line 571
    .line 572
    .line 573
    :catch_5
    :goto_1c
    :try_start_2a
    throw v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    .line 574
    :catchall_e
    move-exception v0

    .line 575
    goto :goto_17

    .line 576
    :catchall_f
    move-exception v0

    .line 577
    move-object/from16 v16, v5

    .line 578
    .line 579
    move-object/from16 v17, v6

    .line 580
    .line 581
    move-object/from16 v18, v7

    .line 582
    .line 583
    goto :goto_17

    .line 584
    :goto_1d
    :try_start_2b
    invoke-virtual/range {v16 .. v16}, Lvd/z;->O()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    .line 585
    .line 586
    .line 587
    goto :goto_1e

    .line 588
    :catchall_10
    move-exception v0

    .line 589
    move-object v2, v0

    .line 590
    :try_start_2c
    const-class v0, Ljava/lang/Throwable;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    .line 591
    .line 592
    :try_start_2d
    const-string v3, "addSuppressed"

    .line 593
    .line 594
    new-array v4, v10, [Ljava/lang/Class;

    .line 595
    .line 596
    aput-object v0, v4, v11

    .line 597
    .line 598
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    new-array v3, v10, [Ljava/lang/Object;

    .line 603
    .line 604
    aput-object v2, v3, v11

    .line 605
    .line 606
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_6
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    .line 607
    .line 608
    .line 609
    :catch_6
    :goto_1e
    :try_start_2e
    throw v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    .line 610
    :catchall_11
    move-exception v0

    .line 611
    goto :goto_16

    .line 612
    :catchall_12
    move-exception v0

    .line 613
    move-object/from16 v17, v6

    .line 614
    .line 615
    move-object/from16 v18, v7

    .line 616
    .line 617
    goto :goto_16

    .line 618
    :goto_1f
    :try_start_2f
    invoke-virtual/range {v17 .. v17}, Lhe/e;->Y()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    .line 619
    .line 620
    .line 621
    goto :goto_20

    .line 622
    :catchall_13
    move-exception v0

    .line 623
    move-object v2, v0

    .line 624
    :try_start_30
    const-class v0, Ljava/lang/Throwable;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_8
    .catchall {:try_start_30 .. :try_end_30} :catchall_8

    .line 625
    .line 626
    :try_start_31
    const-string v3, "addSuppressed"

    .line 627
    .line 628
    new-array v4, v10, [Ljava/lang/Class;

    .line 629
    .line 630
    aput-object v0, v4, v11

    .line 631
    .line 632
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    new-array v3, v10, [Ljava/lang/Object;

    .line 637
    .line 638
    aput-object v2, v3, v11

    .line 639
    .line 640
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_7
    .catchall {:try_start_31 .. :try_end_31} :catchall_8

    .line 641
    .line 642
    .line 643
    :catch_7
    :goto_20
    :try_start_32
    throw v1
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_8
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    .line 644
    :catch_8
    move-exception v0

    .line 645
    goto :goto_21

    .line 646
    :catch_9
    move-exception v0

    .line 647
    move-object/from16 v18, v7

    .line 648
    .line 649
    :goto_21
    :try_start_33
    sget-object v1, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 650
    .line 651
    const-string v2, "Referral failed, trying next"

    .line 652
    .line 653
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 654
    .line 655
    .line 656
    if-eqz v13, :cond_d

    .line 657
    .line 658
    check-cast v13, Lbd/a;

    .line 659
    .line 660
    iget-object v13, v13, Lbd/a;->i:Lbd/a;

    .line 661
    .line 662
    :cond_d
    if-eq v13, v12, :cond_e

    .line 663
    .line 664
    move-object v0, v14

    .line 665
    move-object v1, v15

    .line 666
    move-object/from16 v2, v18

    .line 667
    .line 668
    goto/16 :goto_11

    .line 669
    .line 670
    :cond_e
    throw v0

    .line 671
    :goto_22
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_8

    .line 672
    goto :goto_24

    .line 673
    :goto_23
    throw v0

    .line 674
    :goto_24
    goto :goto_23
.end method

.method public final e(Lvd/y;Ljava/lang/String;Ljava/lang/String;Lvd/c0;Lvd/h0;Lbd/b;)Lvd/h0;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "doConnect: "

    .line 4
    .line 5
    sget-object v3, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 6
    .line 7
    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    move-object v4, p4

    .line 14
    check-cast v4, Lvd/b0;

    .line 15
    .line 16
    iget-boolean v5, v4, Lvd/b0;->A:Z

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v4}, Lvd/b0;->l0()Lad/k;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface {v4}, Lad/k;->m()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    invoke-interface {v4}, Lad/k;->Q()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lvd/y;->h()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    iget-object v4, p0, Lvd/e0;->a:Lvc/b;

    .line 44
    .line 45
    invoke-interface {v4}, Lvc/b;->e()Lvc/f;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lwc/a;

    .line 50
    .line 51
    iget-boolean v4, v4, Lwc/a;->h:Z

    .line 52
    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v5, "Signatures for file enabled but not required "

    .line 58
    .line 59
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    if-eqz p6, :cond_2

    .line 73
    .line 74
    iput-boolean v1, p5, Lvd/h0;->h:Z

    .line 75
    .line 76
    :cond_2
    const/4 p6, 0x0

    .line 77
    :try_start_0
    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-interface {v3, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception p2

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    :goto_1
    invoke-virtual {p5, p6, p6}, Lvd/h0;->P(Lad/c;Lad/d;)Lad/d;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p5, v1}, Lvd/h0;->r(Z)V
    :try_end_0
    .catch Lvd/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    return-object p5

    .line 108
    :goto_2
    const-string v2, "Authentication failed"

    .line 109
    .line 110
    invoke-interface {v3, v2, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    const-string v2, "addSuppressed"

    .line 114
    .line 115
    const-class v4, Ljava/lang/Throwable;

    .line 116
    .line 117
    iget-object p5, p5, Lvd/h0;->d:Lvd/z;

    .line 118
    .line 119
    invoke-virtual {p5}, Lvd/z;->r()V

    .line 120
    .line 121
    .line 122
    :try_start_1
    iget-object v5, p5, Lvd/z;->h:Lvd/j;

    .line 123
    .line 124
    invoke-virtual {v5}, Lvd/j;->d()Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_5

    .line 129
    .line 130
    iget-object v5, p5, Lvd/z;->h:Lvd/j;

    .line 131
    .line 132
    invoke-virtual {v5}, Lvd/j;->f()Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    iget-object p3, p0, Lvd/e0;->a:Lvc/b;

    .line 140
    .line 141
    iget-object p1, p1, Lvd/y;->a:Ljava/net/URL;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    goto :goto_6

    .line 152
    :cond_5
    :goto_3
    :try_start_2
    iget-object p1, p0, Lvd/e0;->a:Lvc/b;

    .line 153
    .line 154
    invoke-interface {p1}, Lvc/b;->d()Lvc/b;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object v5, p5, Lvd/z;->q:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v6, p5, Lvd/z;->p:Ljava/lang/String;

    .line 161
    .line 162
    check-cast p4, Lvd/b0;

    .line 163
    .line 164
    invoke-virtual {p4, p1, v5, v6}, Lvd/b0;->m0(Lvc/b;Ljava/lang/String;Ljava/lang/String;)Lvd/z;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-class p4, Lvd/a0;

    .line 169
    .line 170
    invoke-virtual {p1, p4}, Lvd/z;->U(Ljava/lang/Class;)Lvd/z;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .line 172
    .line 173
    :try_start_3
    invoke-virtual {p1, p3}, Lvd/z;->K(Ljava/lang/String;)Lvd/h0;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    const-class p4, Lvd/h0;

    .line 178
    .line 179
    invoke-virtual {p3, p4}, Lvd/h0;->T(Ljava/lang/Class;)Lvd/h0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 180
    .line 181
    .line 182
    :try_start_4
    invoke-virtual {p3, p6, p6}, Lvd/h0;->P(Lad/c;Lad/d;)Lad/d;

    .line 183
    .line 184
    .line 185
    const-string p4, "Anonymous retry succeeded"

    .line 186
    .line 187
    invoke-interface {v3, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, v1}, Lvd/h0;->r(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 191
    .line 192
    .line 193
    :try_start_5
    invoke-virtual {p3, v0}, Lvd/h0;->M(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 194
    .line 195
    .line 196
    :try_start_6
    invoke-virtual {p1}, Lvd/z;->O()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 197
    .line 198
    .line 199
    invoke-virtual {p5}, Lvd/z;->O()V

    .line 200
    .line 201
    .line 202
    return-object p3

    .line 203
    :catchall_1
    move-exception p4

    .line 204
    :try_start_7
    invoke-virtual {p3, v0}, Lvd/h0;->M(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :catchall_2
    move-exception p3

    .line 209
    :try_start_8
    new-array p6, v1, [Ljava/lang/Class;

    .line 210
    .line 211
    aput-object v4, p6, v0

    .line 212
    .line 213
    invoke-virtual {v4, v2, p6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 214
    .line 215
    .line 216
    move-result-object p6

    .line 217
    new-array v5, v1, [Ljava/lang/Object;

    .line 218
    .line 219
    aput-object p3, v5, v0

    .line 220
    .line 221
    invoke-virtual {p6, p4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 222
    .line 223
    .line 224
    :catch_1
    :goto_4
    :try_start_9
    throw p4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 225
    :catchall_3
    move-exception p3

    .line 226
    :try_start_a
    invoke-virtual {p1}, Lvd/z;->O()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :catchall_4
    move-exception p1

    .line 231
    :try_start_b
    new-array p4, v1, [Ljava/lang/Class;

    .line 232
    .line 233
    aput-object v4, p4, v0

    .line 234
    .line 235
    invoke-virtual {v4, v2, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 236
    .line 237
    .line 238
    move-result-object p4

    .line 239
    new-array p6, v1, [Ljava/lang/Object;

    .line 240
    .line 241
    aput-object p1, p6, v0

    .line 242
    .line 243
    invoke-virtual {p4, p3, p6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 244
    .line 245
    .line 246
    :catch_2
    :goto_5
    :try_start_c
    throw p3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 247
    :catch_3
    move-exception p1

    .line 248
    :try_start_d
    const-string p3, "Retry also failed"

    .line 249
    .line 250
    invoke-interface {v3, p3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 254
    :goto_6
    :try_start_e
    invoke-virtual {p5}, Lvd/z;->O()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 255
    .line 256
    .line 257
    goto :goto_7

    .line 258
    :catchall_5
    move-exception p2

    .line 259
    :try_start_f
    new-array p3, v1, [Ljava/lang/Class;

    .line 260
    .line 261
    aput-object v4, p3, v0

    .line 262
    .line 263
    invoke-virtual {v4, v2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 264
    .line 265
    .line 266
    move-result-object p3

    .line 267
    new-array p4, v1, [Ljava/lang/Object;

    .line 268
    .line 269
    aput-object p2, p4, v0

    .line 270
    .line 271
    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 272
    .line 273
    .line 274
    :catch_4
    :goto_7
    throw p1
.end method

.method public final f(Lvd/y;)Lvd/g0;
    .locals 2

    .line 1
    const-string v0, "Failed to connect to server"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lvd/e0;->b(Lvd/y;)Lvd/g0;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    new-instance v1, Lvd/r;

    .line 10
    .line 11
    invoke-direct {v1, v0, p1}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    throw v1

    .line 15
    :catch_1
    move-exception p1

    .line 16
    throw p1

    .line 17
    :catch_2
    move-exception p1

    .line 18
    new-instance v1, Lvd/r;

    .line 19
    .line 20
    invoke-direct {v1, v0, p1}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.method public final declared-synchronized g()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lvd/e0;->i()Lvd/z;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Lvd/z;->O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 13
    .line 14
    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :cond_1
    :try_start_1
    iget-object v3, v2, Lvd/z;->d:Lvd/b0;

    .line 18
    .line 19
    invoke-virtual {v3}, Lvd/b0;->b0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 20
    .line 21
    .line 22
    :try_start_2
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 23
    :try_start_3
    invoke-virtual {p0}, Lvd/e0;->k()Lvd/h0;

    .line 24
    .line 25
    .line 26
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    :try_start_4
    invoke-virtual {v4, v1, v1}, Lvd/h0;->R(ZZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_5
    iput-object v5, p0, Lvd/e0;->b:Lvd/h0;

    .line 34
    .line 35
    iput-boolean v0, p0, Lvd/e0;->c:Z

    .line 36
    .line 37
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 38
    :try_start_6
    invoke-virtual {v3}, Lhe/e;->Y()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 39
    .line 40
    .line 41
    :try_start_7
    invoke-virtual {v2}, Lvd/z;->O()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v4

    .line 47
    goto :goto_0

    .line 48
    :catchall_1
    move-exception v4

    .line 49
    :try_start_8
    iput-object v5, p0, Lvd/e0;->b:Lvd/h0;

    .line 50
    .line 51
    iput-boolean v0, p0, Lvd/e0;->c:Z

    .line 52
    .line 53
    throw v4

    .line 54
    :cond_2
    throw v5

    .line 55
    :goto_0
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 56
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 57
    :catchall_2
    move-exception v4

    .line 58
    :try_start_a
    invoke-virtual {v3}, Lhe/e;->Y()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_3
    move-exception v3

    .line 63
    :try_start_b
    const-class v5, Ljava/lang/Throwable;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 64
    .line 65
    :try_start_c
    const-string v6, "addSuppressed"

    .line 66
    .line 67
    new-array v7, v1, [Ljava/lang/Class;

    .line 68
    .line 69
    aput-object v5, v7, v0

    .line 70
    .line 71
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    new-array v6, v1, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v3, v6, v0

    .line 78
    .line 79
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 80
    .line 81
    .line 82
    :catch_0
    :goto_1
    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 83
    :catchall_4
    move-exception v3

    .line 84
    :try_start_e
    invoke-virtual {v2}, Lvd/z;->O()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_5
    move-exception v2

    .line 89
    :try_start_f
    const-class v4, Ljava/lang/Throwable;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 90
    .line 91
    :try_start_10
    const-string v5, "addSuppressed"

    .line 92
    .line 93
    new-array v6, v1, [Ljava/lang/Class;

    .line 94
    .line 95
    aput-object v4, v6, v0

    .line 96
    .line 97
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v2, v1, v0

    .line 104
    .line 105
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 106
    .line 107
    .line 108
    :catch_1
    :goto_2
    :try_start_11
    throw v3

    .line 109
    :catchall_6
    move-exception v0

    .line 110
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 111
    throw v0
.end method

.method public final h(Lvd/y;Lad/f;)Lvd/y;
    .locals 6

    .line 1
    instance-of v0, p2, Lfd/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lvd/e0;->a:Lvc/b;

    .line 8
    .line 9
    invoke-interface {v1}, Lvc/b;->e()Lvc/f;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lwc/a;

    .line 14
    .line 15
    iget v1, v1, Lwc/a;->m0:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    if-ge v0, v1, :cond_4

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lvd/e0;->m(Lvd/y;Lad/f;)Lvd/y;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p1

    .line 26
    :catch_0
    move-exception v1

    .line 27
    const v2, -0x3ffffddb    # -2.000131f

    .line 28
    .line 29
    .line 30
    iget v3, v1, Lvd/r;->a:I

    .line 31
    .line 32
    if-eq v3, v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    instance-of v2, v2, Lhe/f;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    throw v1

    .line 44
    :cond_2
    :goto_1
    sget-object v2, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 45
    .line 46
    const-string v3, "resolveDfs"

    .line 47
    .line 48
    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v4, "Retrying ("

    .line 60
    .line 61
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v4, ") resolveDfs: "

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    const-string v1, "Disconnecting tree on DFS retry"

    .line 83
    .line 84
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lvd/e0;->g()V

    .line 88
    .line 89
    .line 90
    :try_start_1
    sget-object v1, Lvd/e0;->g:Ljava/util/Random;

    .line 91
    .line 92
    const/16 v4, 0x1388

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    add-int/lit16 v1, v1, 0x1f4

    .line 99
    .line 100
    int-to-long v4, v1

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_1
    move-exception v1

    .line 106
    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_2
    invoke-virtual {p0, p1}, Lvd/e0;->f(Lvd/y;)Lvd/g0;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lvd/g0;->close()V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    return-object p1
.end method

.method public final i()Lvd/z;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvd/e0;->k()Lvd/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lvd/h0;->d:Lvd/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Lvd/z;->r()V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public final declared-synchronized j()Lvd/h0;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvd/e0;->b:Lvd/h0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lvd/h0;->r(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method

.method public final declared-synchronized k()Lvd/h0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvd/e0;->b:Lvd/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-exit p0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public final declared-synchronized l()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lvd/e0;->k()Lvd/h0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v2, v0, Lvd/h0;->e:I

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    iget-object v2, v0, Lvd/h0;->d:Lvd/z;

    .line 16
    .line 17
    iget-object v3, v2, Lvd/z;->d:Lvd/b0;

    .line 18
    .line 19
    invoke-virtual {v3}, Lvd/b0;->T()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    iget-object v2, v2, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x2

    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    iget-object v0, v0, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 37
    .line 38
    .line 39
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-ne v0, v3, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_1
    monitor-exit p0

    .line 49
    return v1

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw v0
.end method

.method public final m(Lvd/y;Lad/f;)Lvd/y;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const-string v5, "addSuppressed"

    .line 8
    .line 9
    const-class v6, Ljava/lang/Throwable;

    .line 10
    .line 11
    const-string v7, "No referral but in domain DFS "

    .line 12
    .line 13
    const-string v8, "No referral available for  "

    .line 14
    .line 15
    const-string v9, "Resolved "

    .line 16
    .line 17
    const-string v10, "\\"

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p1}, Lvd/e0;->f(Lvd/y;)Lvd/g0;

    .line 20
    .line 21
    .line 22
    move-result-object v11

    .line 23
    :try_start_0
    iget-object v12, v11, Lvd/g0;->b:Lvd/e0;

    .line 24
    .line 25
    invoke-virtual {v12}, Lvd/e0;->i()Lvd/z;

    .line 26
    .line 27
    .line 28
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 29
    :try_start_1
    iget-object v13, v12, Lvd/z;->d:Lvd/b0;

    .line 30
    .line 31
    invoke-virtual {v13}, Lvd/b0;->b0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 32
    .line 33
    .line 34
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lvd/e0;->j()Lvd/h0;

    .line 35
    .line 36
    .line 37
    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 38
    :try_start_3
    invoke-virtual {v13}, Lvd/b0;->j0()Z

    .line 39
    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface/range {p2 .. p2}, Lad/f;->getPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object v1, v0

    .line 50
    goto/16 :goto_9

    .line 51
    .line 52
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lvd/y;->f()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v15

    .line 56
    :goto_0
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface/range {p2 .. p2}, Lad/f;->W()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Lvd/y;->c()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const/16 v10, 0x5c

    .line 76
    .line 77
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Lvd/y;->d()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p1 .. p1}, Lvd/y;->f()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    :goto_1
    iget-boolean v3, v14, Lvd/h0;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    .line 100
    sget-object v4, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 101
    .line 102
    move-object/from16 v16, v7

    .line 103
    .line 104
    const-string v7, "Not in DFS"

    .line 105
    .line 106
    if-nez v3, :cond_2

    .line 107
    .line 108
    :try_start_4
    invoke-virtual {v14}, Lvd/h0;->K()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_6

    .line 113
    .line 114
    :cond_2
    iget-boolean v3, v14, Lvd/h0;->h:Z

    .line 115
    .line 116
    if-eqz v3, :cond_10

    .line 117
    .line 118
    iget-object v3, v14, Lvd/h0;->p:Lbd/b;

    .line 119
    .line 120
    if-eqz v3, :cond_5

    .line 121
    .line 122
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_3

    .line 127
    .line 128
    const-string v7, "Need to adjust request path %s (full: %s) -> %s"

    .line 129
    .line 130
    const/4 v8, 0x3

    .line 131
    new-array v8, v8, [Ljava/lang/Object;

    .line 132
    .line 133
    const/4 v9, 0x0

    .line 134
    aput-object v15, v8, v9

    .line 135
    .line 136
    const/4 v9, 0x1

    .line 137
    aput-object v10, v8, v9

    .line 138
    .line 139
    const/4 v9, 0x2

    .line 140
    aput-object v3, v8, v9

    .line 141
    .line 142
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-interface {v4, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    invoke-virtual {v2, v3, v15}, Lvd/y;->g(Lbd/b;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    invoke-interface {v0, v3}, Lad/f;->k(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    .line 157
    .line 158
    :cond_4
    const/4 v3, 0x0

    .line 159
    :try_start_5
    invoke-virtual {v14, v3}, Lvd/h0;->M(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 160
    .line 161
    .line 162
    :try_start_6
    invoke-virtual {v13}, Lhe/e;->Y()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 163
    .line 164
    .line 165
    :try_start_7
    invoke-virtual {v12}, Lvd/z;->O()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11}, Lvd/g0;->close()V

    .line 169
    .line 170
    .line 171
    return-object v2

    .line 172
    :goto_2
    move-object v1, v0

    .line 173
    goto/16 :goto_f

    .line 174
    .line 175
    :goto_3
    move-object v1, v0

    .line 176
    goto/16 :goto_d

    .line 177
    .line 178
    :goto_4
    move-object v1, v0

    .line 179
    goto/16 :goto_b

    .line 180
    .line 181
    :cond_5
    :try_start_8
    const-string v3, "No tree referral but in DFS"

    .line 182
    .line 183
    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    if-eqz v0, :cond_7

    .line 187
    .line 188
    iget-object v3, v12, Lvd/z;->p:Ljava/lang/String;

    .line 189
    .line 190
    move-object/from16 v17, v7

    .line 191
    .line 192
    iget-object v7, v12, Lvd/z;->q:Ljava/lang/String;

    .line 193
    .line 194
    invoke-interface {v0, v3, v7, v10}, Lad/f;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    move-object/from16 v17, v7

    .line 199
    .line 200
    :goto_5
    iget-object v3, v1, Lvd/e0;->a:Lvc/b;

    .line 201
    .line 202
    invoke-interface {v3}, Lvc/b;->k()Lvc/h;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    iget-object v7, v1, Lvd/e0;->a:Lvc/b;

    .line 207
    .line 208
    invoke-virtual/range {p1 .. p1}, Lvd/y;->c()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v20

    .line 212
    invoke-virtual/range {p1 .. p1}, Lvd/y;->d()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v21

    .line 216
    invoke-virtual/range {p1 .. p1}, Lvd/y;->f()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v22

    .line 220
    move-object/from16 v18, v3

    .line 221
    .line 222
    check-cast v18, Lvd/d;

    .line 223
    .line 224
    const/16 v23, 0x5

    .line 225
    .line 226
    move-object/from16 v19, v7

    .line 227
    .line 228
    invoke-virtual/range {v18 .. v23}, Lvd/d;->h(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbd/b;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    if-eqz v3, :cond_d

    .line 233
    .line 234
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    if-eqz v7, :cond_8

    .line 239
    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v8, " -> "

    .line 249
    .line 250
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-interface {v4, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_8
    invoke-virtual {v2, v3, v15}, Lvd/y;->g(Lbd/b;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    if-eqz v0, :cond_9

    .line 268
    .line 269
    invoke-interface {v0, v7}, Lad/f;->k(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :cond_9
    iget-object v0, v14, Lvd/h0;->b:Ljava/lang/String;

    .line 273
    .line 274
    move-object v7, v3

    .line 275
    check-cast v7, Lbd/a;

    .line 276
    .line 277
    iget-object v7, v7, Lbd/a;->d:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_c

    .line 284
    .line 285
    move-object v7, v3

    .line 286
    :goto_6
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_a

    .line 291
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    const-string v8, "Need to switch tree for "

    .line 298
    .line 299
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 310
    .line 311
    .line 312
    :cond_a
    :try_start_9
    iget-object v0, v12, Lvd/z;->q:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v1, v2, v0, v7}, Lvd/e0;->d(Lvd/y;Ljava/lang/String;Lbd/b;)Lvd/g0;

    .line 315
    .line 316
    .line 317
    move-result-object v8
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 318
    :try_start_a
    const-string v0, "Switched tree"

    .line 319
    .line 320
    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 321
    .line 322
    .line 323
    :try_start_b
    invoke-virtual {v8}, Lvd/g0;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 324
    .line 325
    .line 326
    const/4 v3, 0x0

    .line 327
    :try_start_c
    invoke-virtual {v14, v3}, Lvd/h0;->M(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 328
    .line 329
    .line 330
    :try_start_d
    invoke-virtual {v13}, Lhe/e;->Y()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 331
    .line 332
    .line 333
    :try_start_e
    invoke-virtual {v12}, Lvd/z;->O()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 334
    .line 335
    .line 336
    invoke-virtual {v11}, Lvd/g0;->close()V

    .line 337
    .line 338
    .line 339
    return-object v2

    .line 340
    :catch_0
    move-exception v0

    .line 341
    goto :goto_8

    .line 342
    :catchall_1
    move-exception v0

    .line 343
    move-object v9, v0

    .line 344
    :try_start_f
    invoke-virtual {v8}, Lvd/g0;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 345
    .line 346
    .line 347
    goto :goto_7

    .line 348
    :catchall_2
    move-exception v0

    .line 349
    move-object v8, v0

    .line 350
    const/4 v10, 0x1

    .line 351
    :try_start_10
    new-array v0, v10, [Ljava/lang/Class;

    .line 352
    .line 353
    const/4 v15, 0x0

    .line 354
    aput-object v6, v0, v15

    .line 355
    .line 356
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    new-array v1, v10, [Ljava/lang/Object;

    .line 361
    .line 362
    aput-object v8, v1, v15

    .line 363
    .line 364
    invoke-virtual {v0, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 365
    .line 366
    .line 367
    :catch_1
    :goto_7
    :try_start_11
    throw v9
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 368
    :goto_8
    :try_start_12
    const-string v1, "Failed to connect tree"

    .line 369
    .line 370
    invoke-interface {v4, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    check-cast v7, Lbd/a;

    .line 374
    .line 375
    iget-object v7, v7, Lbd/a;->i:Lbd/a;

    .line 376
    .line 377
    if-eq v7, v3, :cond_b

    .line 378
    .line 379
    move-object/from16 v1, p0

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_b
    new-instance v1, Lvc/c;

    .line 383
    .line 384
    const-string v2, "All referral tree connections failed"

    .line 385
    .line 386
    invoke-direct {v1, v2, v0}, Lvc/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 387
    .line 388
    .line 389
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 390
    :cond_c
    const/4 v1, 0x0

    .line 391
    :try_start_13
    invoke-virtual {v14, v1}, Lvd/h0;->M(Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 392
    .line 393
    .line 394
    :try_start_14
    invoke-virtual {v13}, Lhe/e;->Y()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 395
    .line 396
    .line 397
    :try_start_15
    invoke-virtual {v12}, Lvd/z;->O()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 398
    .line 399
    .line 400
    invoke-virtual {v11}, Lvd/g0;->close()V

    .line 401
    .line 402
    .line 403
    return-object v2

    .line 404
    :cond_d
    :try_start_16
    iget-boolean v1, v14, Lvd/h0;->h:Z

    .line 405
    .line 406
    if-eqz v1, :cond_f

    .line 407
    .line 408
    instance-of v0, v0, Lfd/d;

    .line 409
    .line 410
    if-nez v0, :cond_f

    .line 411
    .line 412
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-eqz v0, :cond_e

    .line 417
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    :cond_e
    new-instance v0, Lvc/c;

    .line 434
    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    move-object/from16 v2, v16

    .line 438
    .line 439
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-direct {v0, v1}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v0

    .line 453
    :cond_f
    move-object/from16 v0, v17

    .line 454
    .line 455
    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 456
    .line 457
    .line 458
    const/4 v1, 0x0

    .line 459
    :try_start_17
    invoke-virtual {v14, v1}, Lvd/h0;->M(Z)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 460
    .line 461
    .line 462
    :try_start_18
    invoke-virtual {v13}, Lhe/e;->Y()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 463
    .line 464
    .line 465
    :try_start_19
    invoke-virtual {v12}, Lvd/z;->O()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 466
    .line 467
    .line 468
    invoke-virtual {v11}, Lvd/g0;->close()V

    .line 469
    .line 470
    .line 471
    return-object v2

    .line 472
    :cond_10
    move-object v0, v7

    .line 473
    :try_start_1a
    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 474
    .line 475
    .line 476
    const/4 v1, 0x0

    .line 477
    :try_start_1b
    invoke-virtual {v14, v1}, Lvd/h0;->M(Z)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 478
    .line 479
    .line 480
    :try_start_1c
    invoke-virtual {v13}, Lhe/e;->Y()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 481
    .line 482
    .line 483
    :try_start_1d
    invoke-virtual {v12}, Lvd/z;->O()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 484
    .line 485
    .line 486
    invoke-virtual {v11}, Lvd/g0;->close()V

    .line 487
    .line 488
    .line 489
    return-object v2

    .line 490
    :goto_9
    if-eqz v14, :cond_11

    .line 491
    .line 492
    const/4 v2, 0x0

    .line 493
    :try_start_1e
    invoke-virtual {v14, v2}, Lvd/h0;->M(Z)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 494
    .line 495
    .line 496
    goto :goto_a

    .line 497
    :catchall_3
    move-exception v0

    .line 498
    move-object v3, v0

    .line 499
    const/4 v4, 0x1

    .line 500
    :try_start_1f
    new-array v0, v4, [Ljava/lang/Class;

    .line 501
    .line 502
    aput-object v6, v0, v2

    .line 503
    .line 504
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    new-array v7, v4, [Ljava/lang/Object;

    .line 509
    .line 510
    aput-object v3, v7, v2

    .line 511
    .line 512
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_2
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    .line 513
    .line 514
    .line 515
    :catch_2
    :cond_11
    :goto_a
    :try_start_20
    throw v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    .line 516
    :catchall_4
    move-exception v0

    .line 517
    goto/16 :goto_4

    .line 518
    .line 519
    :goto_b
    :try_start_21
    invoke-virtual {v13}, Lhe/e;->Y()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 520
    .line 521
    .line 522
    goto :goto_c

    .line 523
    :catchall_5
    move-exception v0

    .line 524
    move-object v2, v0

    .line 525
    const/4 v3, 0x1

    .line 526
    :try_start_22
    new-array v0, v3, [Ljava/lang/Class;

    .line 527
    .line 528
    const/4 v4, 0x0

    .line 529
    aput-object v6, v0, v4

    .line 530
    .line 531
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    new-array v7, v3, [Ljava/lang/Object;

    .line 536
    .line 537
    aput-object v2, v7, v4

    .line 538
    .line 539
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    .line 540
    .line 541
    .line 542
    :catch_3
    :goto_c
    :try_start_23
    throw v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    .line 543
    :catchall_6
    move-exception v0

    .line 544
    goto/16 :goto_3

    .line 545
    .line 546
    :goto_d
    if-eqz v12, :cond_12

    .line 547
    .line 548
    :try_start_24
    invoke-virtual {v12}, Lvd/z;->O()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    .line 549
    .line 550
    .line 551
    goto :goto_e

    .line 552
    :catchall_7
    move-exception v0

    .line 553
    move-object v2, v0

    .line 554
    const/4 v3, 0x1

    .line 555
    :try_start_25
    new-array v0, v3, [Ljava/lang/Class;

    .line 556
    .line 557
    const/4 v4, 0x0

    .line 558
    aput-object v6, v0, v4

    .line 559
    .line 560
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    new-array v7, v3, [Ljava/lang/Object;

    .line 565
    .line 566
    aput-object v2, v7, v4

    .line 567
    .line 568
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_4
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    .line 569
    .line 570
    .line 571
    :catch_4
    :cond_12
    :goto_e
    :try_start_26
    throw v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    .line 572
    :catchall_8
    move-exception v0

    .line 573
    goto/16 :goto_2

    .line 574
    .line 575
    :goto_f
    :try_start_27
    invoke-virtual {v11}, Lvd/g0;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    .line 576
    .line 577
    .line 578
    goto :goto_10

    .line 579
    :catchall_9
    move-exception v0

    .line 580
    move-object v2, v0

    .line 581
    const/4 v3, 0x1

    .line 582
    :try_start_28
    new-array v0, v3, [Ljava/lang/Class;

    .line 583
    .line 584
    const/4 v4, 0x0

    .line 585
    aput-object v6, v0, v4

    .line 586
    .line 587
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    new-array v3, v3, [Ljava/lang/Object;

    .line 592
    .line 593
    aput-object v2, v3, v4

    .line 594
    .line 595
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_5

    .line 596
    .line 597
    .line 598
    :catch_5
    :goto_10
    goto :goto_12

    .line 599
    :goto_11
    throw v1

    .line 600
    :goto_12
    goto :goto_11
.end method

.method public final n(Lvd/y;Lad/c;Lad/d;Ljava/util/EnumSet;)Lad/d;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0xa

    .line 4
    .line 5
    :goto_0
    if-lez v2, :cond_3

    .line 6
    .line 7
    instance-of v3, p2, Lad/f;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, p2

    .line 12
    check-cast v3, Lad/f;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v3}, Lvd/e0;->h(Lvd/y;Lad/f;)Lvd/y;

    .line 15
    .line 16
    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lvd/e0;->j()Lvd/h0;

    .line 18
    .line 19
    .line 20
    move-result-object v3
    :try_end_0
    .catch Lvd/e; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v3, p2, p3, p4}, Lvd/h0;->N(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 24
    .line 25
    .line 26
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    invoke-virtual {v3, v1}, Lvd/h0;->M(Z)V
    :try_end_2
    .catch Lvd/e; {:try_start_2 .. :try_end_2} :catch_1

    .line 28
    .line 29
    .line 30
    return-object v4

    .line 31
    :catchall_0
    move-exception v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :try_start_3
    new-instance v4, Lvc/c;

    .line 34
    .line 35
    const-string v5, "Failed to get tree connection"

    .line 36
    .line 37
    invoke-direct {v4, v5}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :goto_1
    if-eqz v3, :cond_2

    .line 42
    .line 43
    :try_start_4
    invoke-virtual {v3, v1}, Lvd/h0;->M(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catchall_1
    move-exception v3

    .line 48
    :try_start_5
    const-class v5, Ljava/lang/Throwable;
    :try_end_5
    .catch Lvd/e; {:try_start_5 .. :try_end_5} :catch_1

    .line 49
    .line 50
    :try_start_6
    const-string v6, "addSuppressed"

    .line 51
    .line 52
    new-array v7, v0, [Ljava/lang/Class;

    .line 53
    .line 54
    aput-object v5, v7, v1

    .line 55
    .line 56
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    new-array v6, v0, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v3, v6, v1

    .line 63
    .line 64
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :cond_2
    :goto_2
    :try_start_7
    throw v4
    :try_end_7
    .catch Lvd/e; {:try_start_7 .. :try_end_7} :catch_1

    .line 68
    :catch_1
    move-exception v3

    .line 69
    iget-object v4, v3, Lvd/e;->d:Lbd/a;

    .line 70
    .line 71
    invoke-virtual {v4}, Lbd/a;->e()Lbd/a;

    .line 72
    .line 73
    .line 74
    invoke-interface {p2}, Lad/b;->reset()V

    .line 75
    .line 76
    .line 77
    sget-object v4, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 78
    .line 79
    const-string v5, "send0"

    .line 80
    .line 81
    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v2, v2, -0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    new-instance p1, Lvc/c;

    .line 88
    .line 89
    const-string p2, "Loop in DFS referrals"

    .line 90
    .line 91
    invoke-direct {p1, p2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :goto_3
    throw p1

    .line 96
    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized o(Lvd/h0;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Acquired tree on switch "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lvd/e0;->j()Lvd/h0;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-ne v3, p1, :cond_1

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Lvd/h0;->M(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lvd/e0;->c:Z

    .line 20
    .line 21
    sget-object v5, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 22
    .line 23
    const-string v6, "Switching tree"

    .line 24
    .line 25
    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v5, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lvd/h0;->r(Z)V

    .line 44
    .line 45
    .line 46
    iput-boolean v0, p0, Lvd/e0;->c:Z

    .line 47
    .line 48
    iput-object p1, p0, Lvd/e0;->b:Lvd/h0;

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Lvd/h0;->M(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 61
    .line 62
    :try_start_2
    invoke-virtual {v3, v1}, Lvd/h0;->M(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    .line 64
    .line 65
    :cond_3
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    if-eqz v3, :cond_4

    .line 68
    .line 69
    :try_start_3
    invoke-virtual {v3, v1}, Lvd/h0;->M(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_1
    move-exception v2

    .line 74
    :try_start_4
    const-class v3, Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    .line 76
    :try_start_5
    const-string v4, "addSuppressed"

    .line 77
    .line 78
    new-array v5, v0, [Ljava/lang/Class;

    .line 79
    .line 80
    aput-object v3, v5, v1

    .line 81
    .line 82
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v2, v0, v1

    .line 89
    .line 90
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 91
    .line 92
    .line 93
    :catch_0
    :cond_4
    :goto_2
    :try_start_6
    throw p1

    .line 94
    :catchall_2
    move-exception p1

    .line 95
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 96
    throw p1
.end method
