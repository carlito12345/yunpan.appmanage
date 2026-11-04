.class public final Li2/h;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:I

.field public final b:Lf2/r0;

.field public final c:J

.field public d:Ljava/lang/Object;

.field public e:Ljava/io/IOException;

.field public f:I

.field public g:Ljava/lang/Thread;

.field public h:Z

.field public volatile i:Z

.field public final synthetic j:Li2/j;


# direct methods
.method public constructor <init>(Li2/j;Landroid/os/Looper;Lf2/r0;Li2/g;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Li2/h;->j:Li2/j;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Li2/h;->b:Lf2/r0;

    .line 7
    .line 8
    iput-object p4, p0, Li2/h;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iput p5, p0, Li2/h;->a:I

    .line 11
    .line 12
    iput-wide p6, p0, Li2/h;->c:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 8

    .line 1
    iput-boolean p1, p0, Li2/h;->i:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Li2/h;->e:Ljava/io/IOException;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Li2/h;->h:Z

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    monitor-enter p0

    .line 26
    :try_start_0
    iput-boolean v1, p0, Li2/h;->h:Z

    .line 27
    .line 28
    iget-object v1, p0, Li2/h;->b:Lf2/r0;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    iput-boolean v2, v1, Lf2/r0;->h:Z

    .line 32
    .line 33
    iget-object v1, p0, Li2/h;->g:Ljava/lang/Thread;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Li2/h;->j:Li2/j;

    .line 47
    .line 48
    iput-object v0, p1, Li2/j;->b:Li2/h;

    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iget-object v1, p0, Li2/h;->d:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Li2/h;->b:Lf2/r0;

    .line 60
    .line 61
    iget-wide v5, p0, Li2/h;->c:J

    .line 62
    .line 63
    sub-long v5, v3, v5

    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    invoke-interface/range {v1 .. v7}, Li2/g;->e(Lf2/r0;JJZ)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Li2/h;->d:Ljava/lang/Object;

    .line 70
    .line 71
    :cond_3
    return-void

    .line 72
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p1
.end method

.method public final b()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v2

    .line 5
    iget-wide v0, p0, Li2/h;->c:J

    .line 6
    .line 7
    sub-long v4, v2, v0

    .line 8
    .line 9
    iget-object v0, p0, Li2/h;->d:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Li2/h;->b:Lf2/r0;

    .line 15
    .line 16
    iget v6, p0, Li2/h;->f:I

    .line 17
    .line 18
    invoke-interface/range {v0 .. v6}, Li2/g;->b(Lf2/r0;JJI)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Li2/h;->e:Ljava/io/IOException;

    .line 23
    .line 24
    iget-object v0, p0, Li2/h;->j:Li2/j;

    .line 25
    .line 26
    iget-object v1, v0, Li2/j;->a:Lj2/a;

    .line 27
    .line 28
    iget-object v0, v0, Li2/j;->b:Li2/h;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lj2/a;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Li2/h;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Li2/h;->b()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v2, 0x4

    .line 16
    if-eq v0, v2, :cond_b

    .line 17
    .line 18
    iget-object v0, p0, Li2/h;->j:Li2/j;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, v0, Li2/j;->b:Li2/h;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    iget-wide v2, p0, Li2/h;->c:J

    .line 28
    .line 29
    sub-long v7, v5, v2

    .line 30
    .line 31
    iget-object v3, p0, Li2/h;->d:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Li2/h;->h:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v4, p0, Li2/h;->b:Lf2/r0;

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    invoke-interface/range {v3 .. v9}, Li2/g;->e(Lf2/r0;JJZ)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    if-eq v0, v2, :cond_9

    .line 51
    .line 52
    const/4 v11, 0x3

    .line 53
    if-eq v0, v11, :cond_3

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    move-object v9, p1

    .line 60
    check-cast v9, Ljava/io/IOException;

    .line 61
    .line 62
    iput-object v9, p0, Li2/h;->e:Ljava/io/IOException;

    .line 63
    .line 64
    iget p1, p0, Li2/h;->f:I

    .line 65
    .line 66
    add-int/lit8 v10, p1, 0x1

    .line 67
    .line 68
    iput v10, p0, Li2/h;->f:I

    .line 69
    .line 70
    iget-object v4, p0, Li2/h;->b:Lf2/r0;

    .line 71
    .line 72
    invoke-interface/range {v3 .. v10}, Li2/g;->f(Lf2/r0;JJLjava/io/IOException;I)Lai/a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget v0, p1, Lai/a;->a:I

    .line 77
    .line 78
    if-ne v0, v11, :cond_4

    .line 79
    .line 80
    iget-object p1, p0, Li2/h;->j:Li2/j;

    .line 81
    .line 82
    iget-object v0, p0, Li2/h;->e:Ljava/io/IOException;

    .line 83
    .line 84
    iput-object v0, p1, Li2/j;->c:Ljava/io/IOException;

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    if-eq v0, v2, :cond_a

    .line 88
    .line 89
    if-ne v0, v1, :cond_5

    .line 90
    .line 91
    iput v1, p0, Li2/h;->f:I

    .line 92
    .line 93
    :cond_5
    iget-wide v2, p1, Lai/a;->b:J

    .line 94
    .line 95
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    cmp-long p1, v2, v4

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    iget p1, p0, Li2/h;->f:I

    .line 106
    .line 107
    sub-int/2addr p1, v1

    .line 108
    mul-int/lit16 p1, p1, 0x3e8

    .line 109
    .line 110
    const/16 v0, 0x1388

    .line 111
    .line 112
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    int-to-long v2, p1

    .line 117
    :goto_0
    iget-object p1, p0, Li2/h;->j:Li2/j;

    .line 118
    .line 119
    iget-object v0, p1, Li2/j;->b:Li2/h;

    .line 120
    .line 121
    if-nez v0, :cond_7

    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    goto :goto_1

    .line 125
    :cond_7
    const/4 v0, 0x0

    .line 126
    :goto_1
    invoke-static {v0}, La9/o;->t(Z)V

    .line 127
    .line 128
    .line 129
    iput-object p0, p1, Li2/j;->b:Li2/h;

    .line 130
    .line 131
    const-wide/16 v4, 0x0

    .line 132
    .line 133
    cmp-long p1, v2, v4

    .line 134
    .line 135
    if-lez p1, :cond_8

    .line 136
    .line 137
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_8
    invoke-virtual {p0}, Li2/h;->b()V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_9
    :try_start_0
    iget-object v4, p0, Li2/h;->b:Lf2/r0;

    .line 146
    .line 147
    invoke-interface/range {v3 .. v8}, Li2/g;->d(Lf2/r0;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception p1

    .line 152
    const-string v0, "Unexpected exception handling load completed"

    .line 153
    .line 154
    invoke-static {v0, p1}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Li2/h;->j:Li2/j;

    .line 158
    .line 159
    new-instance v1, Li2/i;

    .line 160
    .line 161
    invoke-direct {v1, p1}, Li2/i;-><init>(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    iput-object v1, v0, Li2/j;->c:Ljava/io/IOException;

    .line 165
    .line 166
    :cond_a
    :goto_2
    return-void

    .line 167
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p1, Ljava/lang/Error;

    .line 170
    .line 171
    throw p1
.end method

.method public final run()V
    .locals 4

    .line 1
    const-string v0, "load:"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-boolean v2, p0, Li2/h;->h:Z

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iput-object v3, p0, Li2/h;->g:Ljava/lang/Thread;

    .line 12
    .line 13
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    :try_start_2
    iget-object v2, p0, Li2/h;->b:Lf2/r0;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ltb/a;->k(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 31
    .line 32
    .line 33
    :try_start_3
    iget-object v0, p0, Li2/h;->b:Lf2/r0;

    .line 34
    .line 35
    invoke-virtual {v0}, Lf2/r0;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_4
    invoke-static {}, Ltb/a;->h()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    invoke-static {}, Ltb/a;->h()V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    goto :goto_2

    .line 51
    :catch_2
    move-exception v0

    .line 52
    goto :goto_3

    .line 53
    :catch_3
    move-exception v0

    .line 54
    goto :goto_4

    .line 55
    :cond_0
    :goto_0
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 56
    const/4 v0, 0x0

    .line 57
    :try_start_5
    iput-object v0, p0, Li2/h;->g:Ljava/lang/Thread;

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 60
    .line 61
    .line 62
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    :try_start_6
    iget-boolean v0, p0, Li2/h;->i:Z

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_5

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 74
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0

    .line 75
    :catchall_2
    move-exception v0

    .line 76
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 77
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0

    .line 78
    :goto_1
    iget-boolean v1, p0, Li2/h;->i:Z

    .line 79
    .line 80
    if-nez v1, :cond_1

    .line 81
    .line 82
    const-string v1, "Unexpected error loading stream"

    .line 83
    .line 84
    invoke-static {v1, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    const/4 v1, 0x4

    .line 88
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 93
    .line 94
    .line 95
    :cond_1
    throw v0

    .line 96
    :goto_2
    iget-boolean v2, p0, Li2/h;->i:Z

    .line 97
    .line 98
    if-nez v2, :cond_2

    .line 99
    .line 100
    const-string v2, "OutOfMemory error loading stream"

    .line 101
    .line 102
    invoke-static {v2, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Li2/i;

    .line 106
    .line 107
    invoke-direct {v2, v0}, Li2/i;-><init>(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :goto_3
    iget-boolean v2, p0, Li2/h;->i:Z

    .line 119
    .line 120
    if-nez v2, :cond_2

    .line 121
    .line 122
    const-string v2, "Unexpected exception loading stream"

    .line 123
    .line 124
    invoke-static {v2, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    new-instance v2, Li2/i;

    .line 128
    .line 129
    invoke-direct {v2, v0}, Li2/i;-><init>(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :goto_4
    iget-boolean v2, p0, Li2/h;->i:Z

    .line 141
    .line 142
    if-nez v2, :cond_2

    .line 143
    .line 144
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    .line 150
    .line 151
    :cond_2
    :goto_5
    return-void
.end method
