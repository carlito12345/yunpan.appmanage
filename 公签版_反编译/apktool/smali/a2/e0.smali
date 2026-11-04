.class public final synthetic La2/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, La2/e0;->a:I

    iput-object p1, p0, La2/e0;->b:Ljava/lang/Object;

    iput-object p2, p0, La2/e0;->c:Ljava/lang/Object;

    iput-object p3, p0, La2/e0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 5

    .line 1
    iget-object v0, p0, La2/e0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/emoji2/text/n;

    .line 4
    .line 5
    iget-object v1, p0, La2/e0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, La9/o;

    .line 8
    .line 9
    iget-object v2, p0, La2/e0;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, v0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Ls1/g;->n(Landroid/content/Context;)Landroidx/emoji2/text/s;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v3, v0, Landroidx/emoji2/text/s;->a:Landroidx/emoji2/text/k;

    .line 25
    .line 26
    check-cast v3, Landroidx/emoji2/text/r;

    .line 27
    .line 28
    iget-object v4, v3, Landroidx/emoji2/text/r;->d:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    iput-object v2, v3, Landroidx/emoji2/text/r;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 32
    .line 33
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    iget-object v0, v0, Landroidx/emoji2/text/s;->a:Landroidx/emoji2/text/k;

    .line 35
    .line 36
    new-instance v3, Landroidx/emoji2/text/m;

    .line 37
    .line 38
    invoke-direct {v3, v1, v2}, Landroidx/emoji2/text/m;-><init>(La9/o;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v3}, Landroidx/emoji2/text/k;->a(La9/o;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception v0

    .line 48
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :try_start_4
    throw v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    const-string v3, "EmojiCompat font provider not available on this device."

    .line 53
    .line 54
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 58
    :goto_0
    invoke-virtual {v1, v0}, La9/o;->S(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method private final b()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, La2/e0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Lcom/yunpan/appmanage/util/h;

    .line 6
    .line 7
    iget-object v3, p0, La2/e0;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, La2/e0;->d:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v10, v4

    .line 14
    check-cast v10, Ljava/util/concurrent/CountDownLatch;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v4, v2, Lcom/yunpan/appmanage/util/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    :catch_0
    :goto_0
    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_0
    :try_start_1
    new-instance v4, Ljava/net/Socket;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    .line 36
    .line 37
    :try_start_2
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 38
    .line 39
    iget v6, v2, Lcom/yunpan/appmanage/util/h;->a:I

    .line 40
    .line 41
    invoke-direct {v5, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    const/16 v6, 0x1f4

    .line 45
    .line 46
    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 47
    .line 48
    .line 49
    :try_start_3
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 50
    .line 51
    .line 52
    iget-object v4, v2, Lcom/yunpan/appmanage/util/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v11, Lcom/yunpan/appmanage/util/d;

    .line 62
    .line 63
    const-string v7, "\u672a\u77e5\u8bbe\u5907"

    .line 64
    .line 65
    iget v9, v2, Lcom/yunpan/appmanage/util/h;->a:I

    .line 66
    .line 67
    const-wide/16 v5, 0x0

    .line 68
    .line 69
    move-object v4, v11

    .line 70
    move-object v8, v3

    .line 71
    invoke-direct/range {v4 .. v9}, Lcom/yunpan/appmanage/util/d;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v11}, Lcom/yunpan/appmanage/util/h;->b(Lcom/yunpan/appmanage/util/d;)Z

    .line 75
    .line 76
    .line 77
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 78
    .line 79
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 80
    .line 81
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->e:Ljava/lang/String;

    .line 82
    .line 83
    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    :goto_1
    :try_start_4
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 85
    .line 86
    iget-object v6, v5, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-ge v0, v6, :cond_4

    .line 93
    .line 94
    iget-object v6, v5, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Lcom/yunpan/appmanage/util/d;

    .line 101
    .line 102
    iget-object v6, v6, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    iget-wide v6, v11, Lcom/yunpan/appmanage/util/d;->d:J

    .line 112
    .line 113
    const-wide/16 v8, 0x5

    .line 114
    .line 115
    cmp-long v12, v6, v8

    .line 116
    .line 117
    if-lez v12, :cond_3

    .line 118
    .line 119
    iget-object v6, v5, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Lcom/yunpan/appmanage/util/d;

    .line 126
    .line 127
    iget-wide v6, v6, Lcom/yunpan/appmanage/util/d;->d:J

    .line 128
    .line 129
    iget-wide v8, v11, Lcom/yunpan/appmanage/util/d;->d:J

    .line 130
    .line 131
    cmp-long v12, v6, v8

    .line 132
    .line 133
    if-nez v12, :cond_3

    .line 134
    .line 135
    iget-object v3, v5, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lcom/yunpan/appmanage/util/d;

    .line 142
    .line 143
    iget-object v6, v11, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v6, v3, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v3, v5, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Lcom/yunpan/appmanage/util/d;

    .line 154
    .line 155
    iget-object v6, v11, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 156
    .line 157
    iput-object v6, v3, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v3, v5, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lcom/yunpan/appmanage/util/d;

    .line 166
    .line 167
    iget v3, v11, Lcom/yunpan/appmanage/util/d;->c:I

    .line 168
    .line 169
    iput v3, v0, Lcom/yunpan/appmanage/util/d;->c:I

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    goto :goto_3

    .line 174
    :cond_3
    add-int/2addr v0, v1

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    iget-object v0, v5, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    :goto_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    :try_start_5
    iget-object v0, v2, Lcom/yunpan/appmanage/util/h;->e:Landroid/os/Handler;

    .line 183
    .line 184
    new-instance v3, Lcom/yunpan/appmanage/util/g;

    .line 185
    .line 186
    invoke-direct {v3, v2, v1}, Lcom/yunpan/appmanage/util/g;-><init>(Lcom/yunpan/appmanage/util/h;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :goto_3
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 195
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 196
    :catchall_1
    move-exception v0

    .line 197
    goto :goto_5

    .line 198
    :catchall_2
    move-exception v2

    .line 199
    :try_start_8
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :catchall_3
    move-exception v3

    .line 204
    :try_start_9
    const-class v4, Ljava/lang/Throwable;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 205
    .line 206
    :try_start_a
    const-string v5, "addSuppressed"

    .line 207
    .line 208
    new-array v6, v1, [Ljava/lang/Class;

    .line 209
    .line 210
    aput-object v4, v6, v0

    .line 211
    .line 212
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    new-array v1, v1, [Ljava/lang/Object;

    .line 217
    .line 218
    aput-object v3, v1, v0

    .line 219
    .line 220
    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 221
    .line 222
    .line 223
    :catch_1
    :goto_4
    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 224
    :goto_5
    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :goto_6
    return-void
.end method

.method private final c()V
    .locals 9

    .line 1
    iget-object v0, p0, La2/e0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 4
    .line 5
    iget-object v1, p0, La2/e0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 8
    .line 9
    iget-object v2, p0, La2/e0;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lea/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x1

    .line 27
    if-eqz v4, :cond_5

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lx9/w3;

    .line 34
    .line 35
    iget-object v6, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    iget-boolean v6, v4, Lx9/w3;->c:Z

    .line 46
    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    iget-object v5, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 52
    .line 53
    .line 54
    iget-object v5, v0, Lcom/yunpan/appmanage/util/m;->b:Ljava/util/concurrent/ExecutorService;

    .line 55
    .line 56
    new-instance v6, Lcom/yunpan/appmanage/util/l;

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    invoke-direct {v6, v0, v4, v1, v7}, Lcom/yunpan/appmanage/util/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v6, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_2

    .line 73
    .line 74
    iget-object v6, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v7, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v7, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v8, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_4

    .line 114
    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-object v7, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v7, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v8, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-nez v6, :cond_3

    .line 149
    .line 150
    iget-object v6, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    .line 152
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    .line 154
    .line 155
    :cond_3
    const-string v6, "\u91cd\u590d"

    .line 156
    .line 157
    iput-object v6, v4, Lx9/w3;->j:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->isHasRepeatFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    .line 161
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    .line 163
    .line 164
    :cond_4
    :goto_1
    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v5, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    monitor-exit v1

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :catchall_0
    move-exception v0

    .line 174
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    throw v0

    .line 176
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 177
    :goto_3
    iget-object v3, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_7

    .line 184
    .line 185
    if-nez v1, :cond_6

    .line 186
    .line 187
    iget-object v3, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_6

    .line 194
    .line 195
    iget-object v1, v0, Lcom/yunpan/appmanage/util/m;->b:Ljava/util/concurrent/ExecutorService;

    .line 196
    .line 197
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 198
    .line 199
    .line 200
    const/4 v1, 0x1

    .line 201
    :cond_6
    const-wide/16 v3, 0xc8

    .line 202
    .line 203
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :catch_0
    nop

    .line 208
    goto :goto_3

    .line 209
    :cond_7
    iget-object v1, v0, Lcom/yunpan/appmanage/util/m;->d:Landroid/os/Handler;

    .line 210
    .line 211
    new-instance v3, La2/c0;

    .line 212
    .line 213
    const/16 v4, 0xd

    .line 214
    .line 215
    invoke-direct {v3, v0, v4, v2}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method private final d()V
    .locals 12

    .line 1
    iget-object v0, p0, La2/e0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 4
    .line 5
    iget-object v1, p0, La2/e0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 8
    .line 9
    iget-object v2, p0, La2/e0;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lua/f8;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 15
    .line 16
    sget-object v5, Lfa/a;->a:Lfa/b;

    .line 17
    .line 18
    iget-object v6, v5, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 19
    .line 20
    iget-object v7, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v6, v7}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Lfa/b;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_8

    .line 33
    .line 34
    iget-object v4, v5, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 35
    .line 36
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v4, v6}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_8

    .line 43
    .line 44
    iget-object v4, v5, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 45
    .line 46
    iget-object v5, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lx9/w3;

    .line 54
    .line 55
    iget-object v5, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v4, v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canRead(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    if-eqz v4, :cond_8

    .line 62
    .line 63
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_5

    .line 74
    .line 75
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lx9/w3;

    .line 80
    .line 81
    iget-object v7, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_0

    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_0
    iget-boolean v7, v5, Lx9/w3;->c:Z

    .line 92
    .line 93
    if-eqz v7, :cond_1

    .line 94
    .line 95
    iget-object v7, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 98
    .line 99
    .line 100
    iget-object v7, v0, Lcom/yunpan/appmanage/util/m;->b:Ljava/util/concurrent/ExecutorService;

    .line 101
    .line 102
    new-instance v8, Lcom/yunpan/appmanage/util/l;

    .line 103
    .line 104
    const/4 v9, 0x1

    .line 105
    invoke-direct {v8, v0, v5, v1, v9}, Lcom/yunpan/appmanage/util/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    :try_start_1
    sget-object v7, Lfa/a;->a:Lfa/b;

    .line 113
    .line 114
    iget-object v8, v7, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 115
    .line 116
    iget-object v9, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-interface {v8, v9}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canRead(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-nez v8, :cond_2

    .line 123
    .line 124
    iget-object v7, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    .line 126
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    iget-object v8, v7, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 131
    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    iget-object v10, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v10, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v11, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-interface {v8, v9}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_exists(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-eqz v8, :cond_4

    .line 166
    .line 167
    iget-object v7, v7, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 168
    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v9, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v9, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v10, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-interface {v7, v8}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-nez v7, :cond_3

    .line 203
    .line 204
    iget-object v7, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    .line 206
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    .line 208
    .line 209
    :cond_3
    const-string v7, "\u91cd\u590d"

    .line 210
    .line 211
    iput-object v7, v5, Lx9/w3;->j:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v7, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->isHasRepeatFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 214
    .line 215
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :catch_0
    iget-object v7, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 220
    .line 221
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    .line 223
    .line 224
    :cond_4
    :goto_1
    monitor-enter v1

    .line 225
    :try_start_2
    iget-object v7, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    monitor-exit v1

    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :catchall_0
    move-exception v0

    .line 234
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    throw v0

    .line 236
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_7

    .line 243
    .line 244
    if-nez v6, :cond_6

    .line 245
    .line 246
    iget-object v1, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_6

    .line 253
    .line 254
    iget-object v1, v0, Lcom/yunpan/appmanage/util/m;->b:Ljava/util/concurrent/ExecutorService;

    .line 255
    .line 256
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 257
    .line 258
    .line 259
    const/4 v6, 0x1

    .line 260
    :cond_6
    const-wide/16 v4, 0xc8

    .line 261
    .line 262
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :catch_1
    nop

    .line 267
    goto :goto_2

    .line 268
    :cond_7
    iget-object v1, v0, Lcom/yunpan/appmanage/util/m;->d:Landroid/os/Handler;

    .line 269
    .line 270
    new-instance v3, Lcom/yunpan/appmanage/util/n;

    .line 271
    .line 272
    const/4 v4, 0x1

    .line 273
    invoke-direct {v3, v0, v2, v4}, Lcom/yunpan/appmanage/util/n;-><init>(Lcom/yunpan/appmanage/util/m;Lua/f8;I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_8
    :try_start_4
    new-instance v1, Ljava/lang/Exception;

    .line 281
    .line 282
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 283
    .line 284
    .line 285
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 286
    :catch_2
    iget-object v1, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 287
    .line 288
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    .line 290
    .line 291
    iget-object v1, v0, Lcom/yunpan/appmanage/util/m;->d:Landroid/os/Handler;

    .line 292
    .line 293
    new-instance v3, Lcom/yunpan/appmanage/util/n;

    .line 294
    .line 295
    const/4 v4, 0x0

    .line 296
    invoke-direct {v3, v0, v2, v4}, Lcom/yunpan/appmanage/util/n;-><init>(Lcom/yunpan/appmanage/util/m;Lua/f8;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    .line 301
    .line 302
    :goto_3
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const/16 v3, 0x8

    const v4, 0x7f08021e

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, v1, La2/e0;->a:I

    packed-switch v7, :pswitch_data_0

    .line 1
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Ly1/s0;

    iget-object v0, v0, Ly1/s0;->b:Lm7/l;

    iget-object v0, v0, Lm7/l;->i:Ljava/lang/Object;

    check-cast v0, Lz1/e;

    .line 2
    iget-object v2, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lf2/c0;

    .line 4
    iget-object v4, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v4, Lf2/y;

    invoke-virtual {v0, v3, v2, v4}, Lz1/e;->l(ILf2/c0;Lf2/y;)V

    return-void

    .line 5
    :pswitch_0
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Ly1/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v2, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v2, Lu7/d0;

    invoke-virtual {v2}, Lu7/d0;->g()Lu7/y0;

    move-result-object v2

    .line 7
    iget-object v0, v0, Ly1/n0;->c:Lz1/e;

    iget-object v3, v0, Lz1/e;->g:Lr1/m0;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, v0, Lz1/e;->d:Lba/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v2}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    move-result-object v4

    iput-object v4, v0, Lba/i;->b:Ljava/lang/Object;

    .line 11
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 12
    invoke-virtual {v2, v5}, Lu7/y0;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf2/c0;

    iput-object v2, v0, Lba/i;->e:Ljava/lang/Object;

    .line 13
    iget-object v2, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v2, Lf2/c0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iput-object v2, v0, Lba/i;->f:Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object v2, v0, Lba/i;->d:Ljava/lang/Object;

    check-cast v2, Lf2/c0;

    if-nez v2, :cond_1

    .line 16
    iget-object v2, v0, Lba/i;->b:Ljava/lang/Object;

    check-cast v2, Lu7/g0;

    iget-object v4, v0, Lba/i;->e:Ljava/lang/Object;

    check-cast v4, Lf2/c0;

    iget-object v5, v0, Lba/i;->a:Ljava/lang/Object;

    check-cast v5, Lr1/o0;

    .line 17
    invoke-static {v3, v2, v4, v5}, Lba/i;->e(Lr1/m0;Lu7/g0;Lf2/c0;Lr1/o0;)Lf2/c0;

    move-result-object v2

    iput-object v2, v0, Lba/i;->d:Ljava/lang/Object;

    .line 18
    :cond_1
    check-cast v3, Ly1/x;

    invoke-virtual {v3}, Ly1/x;->E()Lr1/q0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lba/i;->j(Lr1/q0;)V

    return-void

    .line 19
    :pswitch_1
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lx9/f2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iget-object v2, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    iget-object v6, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 21
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, v0, Lx9/f2;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v7, Lcom/bumptech/glide/n;

    invoke-direct {v7, v6}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 24
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    move-result-object v0

    const-string v5, "file://"

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    move-result-object v0

    new-instance v2, Lo5/x;

    invoke-direct {v2, v3}, Lo5/x;-><init>(I)V

    .line 26
    invoke-static {v2}, Lw5/e;->z(Lo5/x;)Lw5/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    move-result-object v0

    .line 27
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 28
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 29
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->R:I

    invoke-virtual {v0, v2, v2}, Lw5/a;->o(II)Lw5/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/m;

    .line 30
    invoke-virtual {v0, v4}, Lw5/a;->g(I)Lw5/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/m;

    .line 31
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    :goto_0
    return-void

    .line 32
    :pswitch_2
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lx9/f2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v3, Lx9/w3;

    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bumptech/glide/d;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 34
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, La2/e0;

    iget-object v5, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x17

    invoke-direct {v4, v0, v2, v5, v6}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 35
    :pswitch_3
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lx9/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iget-object v2, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    iget-object v6, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 37
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 38
    :cond_3
    iget-object v0, v0, Lx9/n;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v7, Lcom/bumptech/glide/n;

    invoke-direct {v7, v6}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 40
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    move-result-object v0

    const-string v5, "file://"

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    move-result-object v0

    new-instance v2, Lo5/x;

    invoke-direct {v2, v3}, Lo5/x;-><init>(I)V

    .line 42
    invoke-static {v2}, Lw5/e;->z(Lo5/x;)Lw5/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    move-result-object v0

    .line 43
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 44
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 45
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->R:I

    invoke-virtual {v0, v2, v2}, Lw5/a;->o(II)Lw5/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/m;

    .line 46
    invoke-virtual {v0, v4}, Lw5/a;->g(I)Lw5/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/m;

    .line 47
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    :goto_1
    return-void

    .line 48
    :pswitch_4
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lx9/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v3, Lx9/w3;

    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bumptech/glide/d;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 50
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, La2/e0;

    iget-object v5, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x15

    invoke-direct {v4, v0, v2, v5, v6}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 51
    :pswitch_5
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lx9/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    iget-object v2, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    iget-object v6, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    .line 53
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 54
    :cond_4
    iget-object v0, v0, Lx9/f0;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    new-instance v7, Lcom/bumptech/glide/n;

    invoke-direct {v7, v6}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 56
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    move-result-object v0

    const-string v5, "file://"

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    move-result-object v0

    new-instance v2, Lo5/x;

    invoke-direct {v2, v3}, Lo5/x;-><init>(I)V

    .line 58
    invoke-static {v2}, Lw5/e;->z(Lo5/x;)Lw5/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    move-result-object v0

    .line 59
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 60
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 61
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->R:I

    invoke-virtual {v0, v2, v2}, Lw5/a;->o(II)Lw5/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/m;

    .line 62
    invoke-virtual {v0, v4}, Lw5/a;->g(I)Lw5/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/m;

    .line 63
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    :goto_2
    return-void

    .line 64
    :pswitch_6
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lx9/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v3, Lx9/w3;

    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bumptech/glide/d;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 66
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, La2/e0;

    iget-object v5, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x13

    invoke-direct {v4, v0, v2, v5, v6}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 67
    :pswitch_7
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lwb/n;

    iget-object v2, v0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    iget-object v3, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v3, Lio/github/rosemoe/sora/widget/CodeEditor;

    if-eq v2, v3, :cond_5

    goto :goto_5

    .line 68
    :cond_5
    iget-object v2, v0, Lwb/n;->g:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 69
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 70
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lwb/n;->g:Ljava/util/List;

    .line 71
    :goto_3
    iget-object v2, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwb/m;

    .line 72
    iget-object v6, v0, Lwb/n;->g:Ljava/util/List;

    iget-object v4, v4, Lwb/m;->b:Ljava/util/ArrayList;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 73
    :cond_7
    invoke-virtual {v3, v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLayoutBusy(Z)V

    .line 74
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    move-result-object v0

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v2, v2, v5}, Ltb/u;->j(FFZ)V

    :goto_5
    return-void

    .line 76
    :pswitch_8
    iget-object v0, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v0, Lua/g8;

    iget-object v2, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v2, Lv3/d0;

    iget-object v3, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v3, Landroid/view/SurfaceView;

    invoke-static {v2, v3, v0}, Lv3/d0;->a(Lv3/d0;Landroid/view/SurfaceView;Lua/g8;)V

    return-void

    .line 77
    :pswitch_9
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lua/n7;

    iget-object v0, v0, Lua/n7;->f:Lcom/yunpan/appmanage/carsdk/f;

    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->E:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "main="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", minor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 78
    :pswitch_a
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lua/n7;

    iget-object v0, v0, Lua/n7;->f:Lcom/yunpan/appmanage/carsdk/f;

    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->D:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "focus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nlp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 79
    :pswitch_b
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Ltb/r;

    iget-object v0, v0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Replace failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    iget-object v0, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 81
    :pswitch_c
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Ltb/r;

    iget-object v0, v0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    move-result-object v2

    .line 82
    iget-object v2, v2, Lmb/j;->c:Lmb/b;

    .line 83
    invoke-virtual {v2}, Lmb/b;->a()Lmb/b;

    move-result-object v2

    .line 84
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    move-result-object v7

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    move-result v3

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    move-result-object v3

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v6

    .line 85
    invoke-virtual {v3, v4}, Lmb/g;->o(I)Lmb/h;

    move-result-object v3

    .line 86
    iget v12, v3, Lmb/h;->c:I

    .line 87
    iget-object v3, v1, La2/e0;->c:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lmb/g;->w(IILjava/lang/CharSequence;II)V

    .line 88
    iget v3, v2, Lmb/b;->b:I

    iget v2, v2, Lmb/b;->c:I

    .line 89
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 90
    iget-object v4, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 91
    invoke-virtual {v4, v3}, Lmb/g;->o(I)Lmb/h;

    move-result-object v4

    .line 92
    iget v4, v4, Lmb/h;->c:I

    if-le v2, v4, :cond_8

    move v2, v4

    .line 93
    :cond_8
    invoke-virtual {v0, v3, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    goto :goto_6

    .line 94
    :cond_9
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v6

    iget-object v3, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v6

    .line 95
    invoke-virtual {v3, v4}, Lmb/g;->o(I)Lmb/h;

    move-result-object v3

    .line 96
    iget v3, v3, Lmb/h;->c:I

    .line 97
    invoke-virtual {v0, v2, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 98
    :goto_6
    iget-object v0, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 99
    :goto_7
    iget-object v7, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v7, Lta/o;

    iget-boolean v8, v7, Lta/o;->b:Z

    if-eqz v8, :cond_a

    goto/16 :goto_26

    .line 100
    :cond_a
    iget-boolean v8, v7, Lta/o;->J:Z

    iget-object v9, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v9, Lmc/b;

    iget-object v10, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    if-eqz v8, :cond_29

    .line 101
    iget-object v8, v7, Lta/o;->M:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "\u5bfc\u822a\u5230"

    invoke-virtual {v10, v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "\u5bfc\u822a\u53bb"

    invoke-virtual {v10, v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_29

    goto :goto_8

    :cond_b
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iget-object v11, v7, Lta/o;->M:Ljava/lang/String;

    invoke-virtual {v8, v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 102
    :cond_c
    :goto_8
    iget-object v8, v7, Lta/o;->M:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x3

    goto :goto_9

    :cond_d
    iget-object v8, v7, Lta/o;->M:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    :goto_9
    add-int/2addr v3, v8

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_33

    if-nez v4, :cond_e

    .line 104
    iget-object v4, v7, Lta/o;->Q:Lz7/o;

    if-eqz v4, :cond_e

    invoke-virtual {v9, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 105
    :cond_e
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    iget v4, v7, Lta/o;->F:I

    iget-object v7, v7, Lta/o;->I:Ljava/lang/String;

    .line 107
    const-string v8, "baidumap://map/navi/common?addr="

    const-string v9, "baidumap://map/gopage?page=homepage&mode=NORMAL_MODE&poproot=no"

    const-string v10, "baidumap://map/place/search?query="

    const-string v12, "androidamap://route/plan/?sourceApplication=myapp&dname="

    const-string v13, "androidauto://navi2SpecialDest?dest="

    const-string v14, "androidauto://keywordNavi?keywords="

    const-string v16, "home"

    const-string v11, "KEY_TYPE"

    const v2, 0x10000020

    const-string v0, "android.intent.action.VIEW"

    const-string v15, "\u516c\u53f8"

    const-string v5, "\u5bb6"

    if-nez v4, :cond_16

    .line 108
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    :catch_0
    nop

    goto :goto_f

    .line 110
    :cond_f
    :goto_a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_b

    .line 111
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&sourceApplication=appname&style=0&dev=0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_e

    .line 112
    :cond_11
    :goto_b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_c
    move-object/from16 v0, v16

    goto :goto_d

    :cond_12
    const-string v16, "crop"

    goto :goto_c

    :goto_d
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    :goto_e
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 115
    invoke-static {v6, v0, v4}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_25

    .line 116
    :goto_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    :cond_13
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "SOURCE_APP"

    const-string v7, "AUTONAVI_STANDARD_BROADCAST_RECV"

    if-nez v2, :cond_15

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_11

    .line 119
    :cond_14
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x2734

    .line 120
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v2, "KEYWORDS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 123
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_10
    const/16 v2, 0x20

    goto :goto_12

    .line 124
    :cond_15
    :goto_11
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x2738

    .line 125
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v6

    const-string v3, "DEST"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string v2, "IS_START_NAVI"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_10

    .line 130
    :goto_12
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    const/4 v3, 0x2

    .line 132
    invoke-static {v3, v2, v0}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_25

    .line 133
    :catch_1
    :try_start_2
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 134
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_25

    :cond_16
    if-ne v4, v6, :cond_1a

    .line 135
    :try_start_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_16

    .line 137
    :cond_17
    :goto_13
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_14

    .line 138
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&dev=1&t=0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_15

    .line 139
    :cond_19
    :goto_14
    const-string v0, "androidamap://openFeature?featureName=Favorite&sourceApplication=app"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    :goto_15
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 142
    invoke-static {v6, v0, v4}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_25

    .line 143
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_25

    :cond_1a
    const-wide/16 v12, 0x8ae

    const/4 v14, 0x2

    if-ne v4, v14, :cond_24

    .line 145
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    iget-object v4, v4, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v4, v4, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    if-eqz v4, :cond_1e

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    iget-object v4, v4, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v4, v4, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    const-string v4, "com.baidu.naviauto"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    iget-object v4, v4, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v4, v4, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 146
    iget-boolean v11, v4, Lcom/yunpan/appmanage/carsdk/i;->b:Z

    if-eqz v11, :cond_1e

    iget-object v4, v4, Lcom/yunpan/appmanage/carsdk/i;->a:Lc5/c;

    if-nez v4, :cond_1b

    goto/16 :goto_18

    .line 147
    :cond_1b
    :try_start_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const-string v2, "stop_navi"

    const-string v4, "open_map"

    const-wide/16 v7, 0x14d

    const-wide/16 v9, 0x457

    if-nez v0, :cond_1d

    :try_start_5
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_17

    .line 148
    :cond_1c
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v0

    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    const/4 v5, 0x0

    .line 149
    invoke-virtual {v0, v4, v5}, Lcom/yunpan/appmanage/carsdk/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 151
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v0

    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 152
    invoke-virtual {v0, v2, v5}, Lcom/yunpan/appmanage/carsdk/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 154
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v0

    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 155
    const-string v2, "open_search_page"

    const/4 v4, 0x0

    .line 156
    invoke-virtual {v0, v2, v4}, Lcom/yunpan/appmanage/carsdk/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 158
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v0

    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 159
    const-string v2, "open_search_result_page"

    .line 160
    invoke-virtual {v0, v2, v3}, Lcom/yunpan/appmanage/carsdk/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_25

    .line 161
    :cond_1d
    :goto_17
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v0

    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    const/4 v11, 0x0

    .line 162
    invoke-virtual {v0, v4, v11}, Lcom/yunpan/appmanage/carsdk/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 164
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v0

    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 165
    invoke-virtual {v0, v2, v11}, Lcom/yunpan/appmanage/carsdk/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 167
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v0

    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    const-string v3, "start_navi_to_homeorcompany"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/yunpan/appmanage/carsdk/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_25

    .line 169
    :cond_1e
    :goto_18
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1f

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    :cond_1f
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const-string v14, "android.intent.category.DEFAULT"

    if-nez v11, :cond_21

    :try_start_6
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    goto :goto_19

    .line 172
    :cond_20
    invoke-virtual {v4, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1c

    .line 174
    :cond_21
    :goto_19
    invoke-virtual {v4, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    sget-object v9, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 178
    invoke-static {v6, v9, v4}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 179
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 180
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    :cond_22
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :goto_1a
    move-object/from16 v0, v16

    goto :goto_1b

    :cond_23
    const-string v16, "company"

    goto :goto_1a

    :goto_1b
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 183
    :goto_1c
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 185
    invoke-static {v6, v0, v4}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_25

    :cond_24
    const/4 v8, 0x3

    if-ne v4, v8, :cond_33

    .line 186
    :try_start_7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1d

    :catch_3
    nop

    goto :goto_1e

    .line 188
    :cond_25
    :goto_1d
    const-string v0, "qqmap://wecarmap?"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 191
    invoke-static {v6, v0, v4}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 192
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 193
    :goto_1e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "WECARNAVIAUTO_STANDARD_BROADCAST_RECV"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    :cond_26
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.tencent.wecarnavi.sdk.broadcast.NaviBroadcastReceiver"

    invoke-direct {v2, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 196
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_27
    const/4 v4, 0x0

    goto :goto_20

    :cond_28
    const/16 v2, 0xbb8

    .line 197
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string v2, "KEYWORD"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v2, "TYPE"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1f
    const/16 v2, 0x20

    goto :goto_21

    :goto_20
    const/16 v2, 0x3ec

    .line 200
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v6

    const-string v3, "EXTRA_OPERA"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v2, "EXTRA_START_TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1f

    .line 203
    :goto_21
    :try_start_8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    const/4 v3, 0x2

    .line 205
    invoke-static {v3, v2, v0}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_25

    .line 206
    :catch_4
    :try_start_9
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 207
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_25

    :cond_29
    const/4 v0, 0x0

    .line 208
    :goto_22
    iget-object v2, v7, Lta/o;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 209
    iget-object v2, v7, Lta/o;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-nez v4, :cond_2b

    .line 210
    iget-object v2, v7, Lta/o;->Q:Lz7/o;

    if-eqz v2, :cond_2a

    invoke-virtual {v9, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    :cond_2a
    const/4 v4, 0x1

    .line 211
    :cond_2b
    iget-object v2, v7, Lta/o;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 212
    iget-object v2, v7, Lta/o;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    move v0, v3

    const/4 v3, 0x1

    goto :goto_23

    :cond_2c
    add-int/2addr v0, v6

    goto :goto_22

    :cond_2d
    move v0, v3

    const/4 v3, 0x0

    :goto_23
    if-nez v3, :cond_31

    .line 213
    iget-boolean v2, v7, Lta/o;->K:Z

    if-eqz v2, :cond_31

    const-string v2, "\u6253\u5f00"

    invoke-virtual {v10, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 214
    iget-object v2, v7, Lta/o;->P:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v4, :cond_30

    .line 215
    iget-object v4, v7, Lta/o;->Q:Lz7/o;

    if-eqz v4, :cond_2f

    invoke-virtual {v9, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    :cond_2f
    const/4 v4, 0x1

    :cond_30
    const/4 v8, 0x2

    add-int/lit8 v11, v0, 0x2

    .line 216
    invoke-virtual {v10, v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 217
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->t0:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lsa/a;

    iget-object v7, v7, Lta/o;->P:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lsa/a;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 218
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v5, 0x2

    add-int/lit8 v0, v2, 0x2

    const/4 v3, 0x1

    goto :goto_24

    :cond_31
    const/4 v5, 0x2

    :goto_24
    if-nez v3, :cond_32

    add-int/2addr v0, v6

    :cond_32
    move v3, v0

    .line 219
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v3, v0, :cond_34

    .line 220
    :catch_5
    :cond_33
    :goto_25
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_26
    return-void

    :cond_34
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 221
    :pswitch_e
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lha/hb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    move-result-object v2

    iget-object v3, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v7, v5}, Lcom/yunpan/appmanage/db/FileInfoDao;->updateNameAndPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, v0, Lha/hb;->g:Lx9/w3;

    iget-boolean v0, v0, Lx9/w3;->c:Z

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/yunpan/appmanage/db/FileInfoDao;->updatePathsRecursively(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void

    .line 224
    :pswitch_f
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Lha/h3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    iget-object v2, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v2, Lcom/yunpan/appmanage/db/ApkFileBean;

    iget-object v3, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/yunpan/appmanage/db/ApkFileBean;->abi:Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getApkFileDao()Lcom/yunpan/appmanage/db/ApkFileDao;

    move-result-object v2

    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    check-cast v0, Lha/v5;

    iget-object v0, v0, Lha/v5;->p:Lx9/w3;

    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/yunpan/appmanage/db/ApkFileDao;->updateBeanAbi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 227
    :pswitch_10
    iget-object v0, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v3, La2/w0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    :try_start_a
    invoke-static {v0, v2}, La2/w0;->C(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "\u66f4\u6539\u6210\u529f"

    const/16 v2, 0x64

    invoke-virtual {v3, v2, v0}, La2/w0;->e0(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_27

    :catch_6
    move-exception v0

    const/16 v2, 0x65

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, La2/w0;->e0(ILjava/lang/Object;)V

    :goto_27
    return-void

    .line 231
    :pswitch_11
    invoke-direct/range {p0 .. p0}, La2/e0;->d()V

    return-void

    :pswitch_12
    invoke-direct/range {p0 .. p0}, La2/e0;->c()V

    return-void

    :pswitch_13
    invoke-direct/range {p0 .. p0}, La2/e0;->b()V

    return-void

    :pswitch_14
    iget-object v0, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 232
    iget-object v3, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v3, Lcom/yunpan/appmanage/util/f;

    iget-object v4, v3, Lcom/yunpan/appmanage/util/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_b
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v5, :cond_36

    .line 233
    :catch_7
    :goto_28
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2b

    .line 234
    :cond_36
    :try_start_c
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 235
    :try_start_d
    new-instance v7, Ljava/net/InetSocketAddress;

    iget v8, v3, Lcom/yunpan/appmanage/util/f;->a:I

    invoke-direct {v7, v0, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 236
    :try_start_e
    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 237
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_28

    .line 238
    :cond_37
    iget-object v4, v3, Lcom/yunpan/appmanage/util/f;->e:Landroid/os/Handler;

    new-instance v5, La2/c0;

    const/16 v6, 0xc

    invoke-direct {v5, v3, v6, v0}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_28

    :catchall_0
    move-exception v0

    goto :goto_2a

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 239
    :try_start_f
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_29

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_10
    const-class v0, Ljava/lang/Throwable;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    const-string v5, "addSuppressed"

    new-array v7, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :catch_8
    :goto_29
    :try_start_12
    throw v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 240
    :goto_2a
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 241
    throw v0

    :goto_2b
    return-void

    .line 242
    :pswitch_15
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, La2/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 244
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    iget-object v0, v0, Ly1/x;->t:Lz1/e;

    invoke-virtual {v0}, Lz1/e;->M()Lz1/a;

    move-result-object v2

    .line 247
    new-instance v3, Lua/t6;

    iget-object v4, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v4, Lr1/p;

    iget-object v5, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v5, Ly1/d;

    const/16 v6, 0x19

    invoke-direct {v3, v2, v4, v5, v6}, Lua/t6;-><init>(Lz1/a;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v4, 0x3f9

    invoke-virtual {v0, v2, v4, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    return-void

    .line 248
    :pswitch_16
    invoke-direct/range {p0 .. p0}, La2/e0;->a()V

    return-void

    :pswitch_17
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    iget-object v2, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    iget-object v3, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v3, Lu1/m;

    .line 249
    :try_start_13
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 250
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 251
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 252
    new-instance v0, La2/h;

    invoke-direct {v0, v6, v3}, La2/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    :cond_38
    sget-object v4, La2/a1;->t:Ljava/lang/Object;

    monitor-enter v4

    .line 254
    :try_start_14
    sget v0, La2/a1;->v:I

    sub-int/2addr v0, v6

    sput v0, La2/a1;->v:I

    if-nez v0, :cond_39

    .line 255
    sget-object v0, La2/a1;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v2, 0x0

    .line 258
    sput-object v2, La2/a1;->u:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_2c

    :catchall_3
    move-exception v0

    goto :goto_2d

    .line 259
    :cond_39
    :goto_2c
    monitor-exit v4

    return-void

    :goto_2d
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    .line 260
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 261
    new-instance v4, La2/h;

    invoke-direct {v4, v6, v3}, La2/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    :cond_3a
    sget-object v2, La2/a1;->t:Ljava/lang/Object;

    monitor-enter v2

    .line 263
    :try_start_15
    sget v3, La2/a1;->v:I

    sub-int/2addr v3, v6

    sput v3, La2/a1;->v:I

    if-nez v3, :cond_3b

    .line 264
    sget-object v3, La2/a1;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 265
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v3, 0x0

    .line 267
    sput-object v3, La2/a1;->u:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_2e

    :catchall_5
    move-exception v0

    goto :goto_2f

    .line 268
    :cond_3b
    :goto_2e
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 269
    throw v0

    .line 270
    :goto_2f
    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    throw v0

    .line 271
    :pswitch_18
    iget-object v0, v1, La2/e0;->b:Ljava/lang/Object;

    check-cast v0, La2/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 273
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    .line 274
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    iget-object v0, v0, Ly1/x;->t:Lz1/e;

    invoke-virtual {v0}, Lz1/e;->M()Lz1/a;

    move-result-object v2

    .line 276
    new-instance v3, Lua/t6;

    iget-object v4, v1, La2/e0;->c:Ljava/lang/Object;

    check-cast v4, Lr1/p;

    iget-object v5, v1, La2/e0;->d:Ljava/lang/Object;

    check-cast v5, Ly1/d;

    const/16 v6, 0x1b

    invoke-direct {v3, v2, v4, v5, v6}, Lua/t6;-><init>(Lz1/a;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v4, 0x3f1

    invoke-virtual {v0, v2, v4, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
