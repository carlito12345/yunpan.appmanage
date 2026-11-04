.class public final synthetic Ls1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Ls1/f;->a:I

    iput-object p1, p0, Ls1/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Ls1/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;I)V
    .locals 0

    .line 2
    iput p3, p0, Ls1/f;->a:I

    iput-object p1, p0, Ls1/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Ls1/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkf/d;

    .line 4
    .line 5
    iget-object v1, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/net/wifi/WifiManager$WifiLock;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v1
.end method

.method private final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly1/y0;

    .line 4
    .line 5
    iget-object v1, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ly1/f0;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    monitor-enter v0

    .line 13
    monitor-exit v0
    :try_end_0
    .catch Ly1/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const/4 v1, 0x1

    .line 15
    :try_start_1
    iget-object v2, v0, Ly1/y0;->a:Ly1/x0;

    .line 16
    .line 17
    iget v3, v0, Ly1/y0;->c:I

    .line 18
    .line 19
    iget-object v4, v0, Ly1/y0;->d:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {v2, v3, v4}, Ly1/x0;->d(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :try_start_2
    invoke-virtual {v0, v1}, Ly1/y0;->a(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v2

    .line 29
    invoke-virtual {v0, v1}, Ly1/y0;->a(Z)V

    .line 30
    .line 31
    .line 32
    throw v2
    :try_end_2
    .catch Ly1/k; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v1, "Unexpected error delivering message on external thread."

    .line 35
    .line 36
    invoke-static {v1, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method

.method private final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly9/b;

    .line 4
    .line 5
    iget-object v1, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ly9/b;

    .line 8
    .line 9
    :goto_0
    iget-boolean v2, v0, Ly9/b;->k:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-object v2, v0, Ly9/b;->e:Lfg/b;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v2, v0, Ly9/b;->c:Ljava/io/InputStream;

    .line 22
    .line 23
    invoke-static {v2}, Ly9/d;->a(Ljava/io/InputStream;)Ly9/d;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, v0, Ly9/b;->j:Ls4/a;

    .line 28
    .line 29
    iget-object v3, v3, Ls4/a;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    :cond_0
    const/4 v2, 0x0

    .line 38
    iput-boolean v2, v0, Ly9/b;->k:Z

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_1
    iget-object v0, v0, Ly9/b;->j:Ls4/a;

    .line 42
    .line 43
    iget-object v0, v0, Ls4/a;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :catch_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ly9/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    :try_start_2
    invoke-virtual {v4}, Ly9/f;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 75
    .line 76
    .line 77
    iput-boolean v2, v1, Ly9/b;->f:Z

    .line 78
    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    goto :goto_3

    .line 84
    :goto_2
    throw v0

    .line 85
    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x7

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    iget v6, p0, Ls1/f;->a:I

    .line 9
    .line 10
    packed-switch v6, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroid/media/metrics/PlaybackStateEvent;

    .line 16
    .line 17
    iget-object v1, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lz1/h;

    .line 20
    .line 21
    iget-object v1, v1, Lz1/h;->d:Landroid/media/metrics/PlaybackSession;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lx0/d;->n(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroid/media/metrics/PlaybackMetrics;

    .line 30
    .line 31
    iget-object v1, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lz1/h;

    .line 34
    .line 35
    iget-object v1, v1, Lz1/h;->d:Landroid/media/metrics/PlaybackSession;

    .line 36
    .line 37
    invoke-static {v1, v0}, Lx0/d;->m(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_1
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Landroid/media/metrics/PlaybackErrorEvent;

    .line 44
    .line 45
    iget-object v1, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lz1/h;

    .line 48
    .line 49
    iget-object v1, v1, Lz1/h;->d:Landroid/media/metrics/PlaybackSession;

    .line 50
    .line 51
    invoke-static {v1, v0}, Lx0/d;->l(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_2
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroid/media/metrics/NetworkEvent;

    .line 58
    .line 59
    iget-object v1, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Lz1/h;

    .line 62
    .line 63
    iget-object v1, v1, Lz1/h;->d:Landroid/media/metrics/PlaybackSession;

    .line 64
    .line 65
    invoke-static {v1, v0}, Lx0/d;->k(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_3
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Landroid/media/metrics/TrackChangeEvent;

    .line 72
    .line 73
    iget-object v1, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lz1/h;

    .line 76
    .line 77
    iget-object v1, v1, Lz1/h;->d:Landroid/media/metrics/PlaybackSession;

    .line 78
    .line 79
    invoke-static {v1, v0}, Lx0/d;->o(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_4
    invoke-direct {p0}, Ls1/f;->c()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_5
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Landroidx/profileinstaller/ProfileInstallerInitializer;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    .line 96
    const/16 v1, 0x1c

    .line 97
    .line 98
    if-lt v0, v1, :cond_0

    .line 99
    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Ly3/f;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 110
    .line 111
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    new-instance v1, Ljava/util/Random;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 121
    .line 122
    .line 123
    const/16 v3, 0x3e8

    .line 124
    .line 125
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    new-instance v3, Lcom/yunpan/appmanage/util/i;

    .line 134
    .line 135
    iget-object v4, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v4, Landroid/content/Context;

    .line 138
    .line 139
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/util/i;-><init>(Landroid/content/Context;I)V

    .line 140
    .line 141
    .line 142
    add-int/lit16 v1, v1, 0x1388

    .line 143
    .line 144
    int-to-long v1, v1

    .line 145
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_6
    invoke-direct {p0}, Ls1/f;->b()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_7
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 154
    .line 155
    move-object v6, v0

    .line 156
    check-cast v6, Ly1/x;

    .line 157
    .line 158
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v0, Ls3/t;

    .line 161
    .line 162
    iget v1, v6, Ly1/x;->M:I

    .line 163
    .line 164
    iget v2, v0, Ls3/t;->b:I

    .line 165
    .line 166
    sub-int/2addr v1, v2

    .line 167
    iput v1, v6, Ly1/x;->M:I

    .line 168
    .line 169
    iget-boolean v2, v0, Ls3/t;->c:Z

    .line 170
    .line 171
    if-eqz v2, :cond_1

    .line 172
    .line 173
    iget v2, v0, Ls3/t;->d:I

    .line 174
    .line 175
    iput v2, v6, Ly1/x;->N:I

    .line 176
    .line 177
    iput-boolean v5, v6, Ly1/x;->O:Z

    .line 178
    .line 179
    :cond_1
    if-nez v1, :cond_d

    .line 180
    .line 181
    iget-object v1, v0, Ls3/t;->e:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v1, Ly1/v0;

    .line 184
    .line 185
    iget-object v1, v1, Ly1/v0;->a:Lr1/q0;

    .line 186
    .line 187
    iget-object v2, v6, Ly1/x;->f1:Ly1/v0;

    .line 188
    .line 189
    iget-object v2, v2, Ly1/v0;->a:Lr1/q0;

    .line 190
    .line 191
    invoke-virtual {v2}, Lr1/q0;->p()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    const/4 v3, -0x1

    .line 196
    if-nez v2, :cond_2

    .line 197
    .line 198
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_2

    .line 203
    .line 204
    iput v3, v6, Ly1/x;->g1:I

    .line 205
    .line 206
    const-wide/16 v7, 0x0

    .line 207
    .line 208
    iput-wide v7, v6, Ly1/x;->h1:J

    .line 209
    .line 210
    :cond_2
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-nez v2, :cond_4

    .line 215
    .line 216
    move-object v2, v1

    .line 217
    check-cast v2, Ly1/a1;

    .line 218
    .line 219
    iget-object v2, v2, Ly1/a1;->h:[Lr1/q0;

    .line 220
    .line 221
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    iget-object v8, v6, Ly1/x;->q:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-ne v7, v8, :cond_3

    .line 236
    .line 237
    const/4 v7, 0x1

    .line 238
    goto :goto_1

    .line 239
    :cond_3
    const/4 v7, 0x0

    .line 240
    :goto_1
    invoke-static {v7}, La9/o;->t(Z)V

    .line 241
    .line 242
    .line 243
    const/4 v7, 0x0

    .line 244
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    if-ge v7, v8, :cond_4

    .line 249
    .line 250
    iget-object v8, v6, Ly1/x;->q:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    check-cast v8, Ly1/v;

    .line 257
    .line 258
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    check-cast v9, Lr1/q0;

    .line 263
    .line 264
    iput-object v9, v8, Ly1/v;->b:Lr1/q0;

    .line 265
    .line 266
    add-int/2addr v7, v5

    .line 267
    goto :goto_2

    .line 268
    :cond_4
    iget-boolean v2, v6, Ly1/x;->O:Z

    .line 269
    .line 270
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    if-eqz v2, :cond_c

    .line 276
    .line 277
    iget-object v2, v0, Ls3/t;->e:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v2, Ly1/v0;

    .line 280
    .line 281
    iget-object v2, v2, Ly1/v0;->a:Lr1/q0;

    .line 282
    .line 283
    invoke-virtual {v2}, Lr1/q0;->p()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_5

    .line 288
    .line 289
    iget-object v2, v6, Ly1/x;->f1:Ly1/v0;

    .line 290
    .line 291
    iget-object v2, v2, Ly1/v0;->a:Lr1/q0;

    .line 292
    .line 293
    invoke-virtual {v2}, Lr1/q0;->p()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_5

    .line 298
    .line 299
    const/4 v2, 0x1

    .line 300
    goto :goto_3

    .line 301
    :cond_5
    const/4 v2, 0x0

    .line 302
    :goto_3
    iget-object v9, v0, Ls3/t;->e:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v9, Ly1/v0;

    .line 305
    .line 306
    iget-object v9, v9, Ly1/v0;->b:Lf2/c0;

    .line 307
    .line 308
    iget-object v10, v6, Ly1/x;->f1:Ly1/v0;

    .line 309
    .line 310
    iget-object v10, v10, Ly1/v0;->b:Lf2/c0;

    .line 311
    .line 312
    invoke-virtual {v9, v10}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    iget-object v10, v0, Ls3/t;->e:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v10, Ly1/v0;

    .line 319
    .line 320
    iget-wide v10, v10, Ly1/v0;->d:J

    .line 321
    .line 322
    iget-object v12, v6, Ly1/x;->f1:Ly1/v0;

    .line 323
    .line 324
    iget-wide v12, v12, Ly1/v0;->s:J

    .line 325
    .line 326
    cmp-long v14, v10, v12

    .line 327
    .line 328
    if-nez v14, :cond_6

    .line 329
    .line 330
    const/4 v10, 0x1

    .line 331
    goto :goto_4

    .line 332
    :cond_6
    const/4 v10, 0x0

    .line 333
    :goto_4
    if-nez v2, :cond_7

    .line 334
    .line 335
    if-eqz v9, :cond_8

    .line 336
    .line 337
    if-nez v10, :cond_7

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_7
    const/4 v5, 0x0

    .line 341
    :cond_8
    :goto_5
    if-eqz v5, :cond_b

    .line 342
    .line 343
    invoke-virtual {v6}, Ly1/x;->A()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-nez v3, :cond_a

    .line 352
    .line 353
    iget-object v3, v0, Ls3/t;->e:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v3, Ly1/v0;

    .line 356
    .line 357
    iget-object v3, v3, Ly1/v0;->b:Lf2/c0;

    .line 358
    .line 359
    invoke-virtual {v3}, Lf2/c0;->b()Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-eqz v3, :cond_9

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_9
    iget-object v3, v0, Ls3/t;->e:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v3, Ly1/v0;

    .line 369
    .line 370
    iget-object v7, v3, Ly1/v0;->b:Lf2/c0;

    .line 371
    .line 372
    iget-wide v8, v3, Ly1/v0;->d:J

    .line 373
    .line 374
    iget-object v3, v7, Lf2/c0;->a:Ljava/lang/Object;

    .line 375
    .line 376
    iget-object v7, v6, Ly1/x;->p:Lr1/o0;

    .line 377
    .line 378
    invoke-virtual {v1, v3, v7}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 379
    .line 380
    .line 381
    iget-wide v10, v7, Lr1/o0;->e:J

    .line 382
    .line 383
    add-long/2addr v8, v10

    .line 384
    goto :goto_7

    .line 385
    :cond_a
    :goto_6
    iget-object v1, v0, Ls3/t;->e:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v1, Ly1/v0;

    .line 388
    .line 389
    iget-wide v8, v1, Ly1/v0;->d:J

    .line 390
    .line 391
    :goto_7
    move v13, v2

    .line 392
    move-wide v11, v8

    .line 393
    move v9, v5

    .line 394
    goto :goto_9

    .line 395
    :cond_b
    move v9, v5

    .line 396
    move-wide v11, v7

    .line 397
    :goto_8
    const/4 v13, -0x1

    .line 398
    goto :goto_9

    .line 399
    :cond_c
    move-wide v11, v7

    .line 400
    const/4 v9, 0x0

    .line 401
    goto :goto_8

    .line 402
    :goto_9
    iput-boolean v4, v6, Ly1/x;->O:Z

    .line 403
    .line 404
    iget-object v0, v0, Ls3/t;->e:Ljava/lang/Object;

    .line 405
    .line 406
    move-object v7, v0

    .line 407
    check-cast v7, Ly1/v0;

    .line 408
    .line 409
    iget v10, v6, Ly1/x;->N:I

    .line 410
    .line 411
    const/4 v14, 0x0

    .line 412
    const/4 v8, 0x1

    .line 413
    invoke-virtual/range {v6 .. v14}, Ly1/x;->f0(Ly1/v0;IZIJIZ)V

    .line 414
    .line 415
    .line 416
    :cond_d
    return-void

    .line 417
    :pswitch_8
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v0, Lz7/s;

    .line 420
    .line 421
    iget-object v1, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v1, Lwa/s;

    .line 424
    .line 425
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    :try_start_0
    invoke-virtual {v1, v0}, Lwa/s;->t(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .line 430
    .line 431
    goto :goto_a

    .line 432
    :catch_0
    invoke-virtual {v1}, Lwa/s;->q()V

    .line 433
    .line 434
    .line 435
    :goto_a
    return-void

    .line 436
    :pswitch_9
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v0, Lwa/s;

    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    iget-object v1, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v1, Landroid/content/Intent;

    .line 446
    .line 447
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    iget-object v3, v3, Lwa/s;->w:Lz7/s;

    .line 456
    .line 457
    const-string v5, "keys"

    .line 458
    .line 459
    invoke-virtual {v3, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    new-instance v5, Lwa/l;

    .line 470
    .line 471
    invoke-direct {v5, v0, v2, v1, v4}, Lwa/l;-><init>(Lwa/s;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 472
    .line 473
    .line 474
    invoke-static {v3, v5}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :pswitch_a
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v0, Lv9/e;

    .line 481
    .line 482
    iget-object v0, v0, Lv9/e;->f:Lu9/b;

    .line 483
    .line 484
    iget-object v1, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v1, Landroidx/room/s;

    .line 487
    .line 488
    invoke-interface {v0, v1}, Lu9/b;->n(Landroidx/room/s;)V

    .line 489
    .line 490
    .line 491
    return-void

    .line 492
    :pswitch_b
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v0, Lv3/e0;

    .line 495
    .line 496
    iget-object v1, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v1, Landroid/graphics/Bitmap;

    .line 499
    .line 500
    invoke-static {v0, v1}, Lv3/e0;->a(Lv3/e0;Landroid/graphics/Bitmap;)V

    .line 501
    .line 502
    .line 503
    return-void

    .line 504
    :pswitch_c
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v0, Ljava/lang/String;

    .line 507
    .line 508
    iget-object v2, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v2, Lcom/yunpan/appmanage/carsdk/u;

    .line 511
    .line 512
    iget-object v2, v2, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 515
    .line 516
    const/16 v3, 0x2200

    .line 517
    .line 518
    :try_start_1
    sget v4, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 519
    .line 520
    iget-object v4, v2, Lda/g;->A:Lda/g;

    .line 521
    .line 522
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    new-instance v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 531
    .line 532
    invoke-direct {v5, v4}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Landroid/content/pm/ApplicationInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 533
    .line 534
    .line 535
    move-object v1, v5

    .line 536
    goto :goto_b

    .line 537
    :catch_1
    nop

    .line 538
    :goto_b
    if-nez v1, :cond_e

    .line 539
    .line 540
    :try_start_2
    sget v4, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 541
    .line 542
    iget-object v2, v2, Lda/g;->A:Lda/g;

    .line 543
    .line 544
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 553
    .line 554
    invoke-direct {v2, v0}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Landroid/content/pm/ApplicationInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 555
    .line 556
    .line 557
    move-object v1, v2

    .line 558
    goto :goto_c

    .line 559
    :catch_2
    nop

    .line 560
    :cond_e
    :goto_c
    if-eqz v1, :cond_f

    .line 561
    .line 562
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/AppDao;->insert(Lcom/yunpan/appmanage/db/AppBean;)J

    .line 571
    .line 572
    .line 573
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    new-instance v2, Lja/a;

    .line 578
    .line 579
    const/16 v3, 0xc

    .line 580
    .line 581
    invoke-direct {v2, v3, v1}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    :cond_f
    return-void

    .line 588
    :pswitch_d
    invoke-direct {p0}, Ls1/f;->a()V

    .line 589
    .line 590
    .line 591
    return-void

    .line 592
    :pswitch_e
    iget-object v1, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v1, Lu1/i0;

    .line 595
    .line 596
    iget-object v1, v1, Lu1/i0;->f:Ljava/lang/Object;

    .line 597
    .line 598
    check-cast v1, Lkf/d;

    .line 599
    .line 600
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    iget-object v2, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 604
    .line 605
    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-eqz v3, :cond_10

    .line 612
    .line 613
    new-instance v3, Ljava/lang/Thread;

    .line 614
    .line 615
    new-instance v4, Ls1/f;

    .line 616
    .line 617
    invoke-direct {v4, v1, v0, v2}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    const-string v0, "ExoPlayer:WifiLockManager"

    .line 621
    .line 622
    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 626
    .line 627
    .line 628
    :cond_10
    return-void

    .line 629
    :pswitch_f
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast v0, Lkf/d;

    .line 632
    .line 633
    iget-object v1, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 634
    .line 635
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 636
    .line 637
    monitor-enter v0

    .line 638
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    if-eqz v1, :cond_11

    .line 643
    .line 644
    iget-object v1, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 645
    .line 646
    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 647
    .line 648
    if-eqz v1, :cond_11

    .line 649
    .line 650
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 651
    .line 652
    .line 653
    goto :goto_d

    .line 654
    :catchall_0
    move-exception v1

    .line 655
    goto :goto_e

    .line 656
    :cond_11
    :goto_d
    monitor-exit v0

    .line 657
    return-void

    .line 658
    :goto_e
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 659
    throw v1

    .line 660
    :pswitch_10
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 661
    .line 662
    check-cast v0, Lu1/i0;

    .line 663
    .line 664
    iget-object v0, v0, Lu1/i0;->f:Ljava/lang/Object;

    .line 665
    .line 666
    check-cast v0, Lkf/d;

    .line 667
    .line 668
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    iget-object v1, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 672
    .line 673
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 674
    .line 675
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    if-eqz v2, :cond_12

    .line 680
    .line 681
    new-instance v2, Ljava/lang/Thread;

    .line 682
    .line 683
    new-instance v4, Ls1/f;

    .line 684
    .line 685
    invoke-direct {v4, v0, v3, v1}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    const-string v0, "ExoPlayer:WakeLockManager"

    .line 689
    .line 690
    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 694
    .line 695
    .line 696
    :cond_12
    return-void

    .line 697
    :pswitch_11
    iget-object v1, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 698
    .line 699
    check-cast v1, La2/k;

    .line 700
    .line 701
    iget-object v1, v1, La2/k;->b:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast v1, Lu1/p;

    .line 704
    .line 705
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    .line 707
    .line 708
    iget-object v6, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 709
    .line 710
    check-cast v6, Landroid/content/Context;

    .line 711
    .line 712
    const-string v7, "connectivity"

    .line 713
    .line 714
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v7

    .line 718
    check-cast v7, Landroid/net/ConnectivityManager;

    .line 719
    .line 720
    const/4 v8, 0x5

    .line 721
    if-nez v7, :cond_13

    .line 722
    .line 723
    :goto_f
    const/4 v2, 0x0

    .line 724
    goto :goto_12

    .line 725
    :cond_13
    :try_start_5
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 726
    .line 727
    .line 728
    move-result-object v7
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    .line 729
    if-eqz v7, :cond_19

    .line 730
    .line 731
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 732
    .line 733
    .line 734
    move-result v9

    .line 735
    if-nez v9, :cond_14

    .line 736
    .line 737
    goto :goto_11

    .line 738
    :cond_14
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    .line 739
    .line 740
    .line 741
    move-result v9

    .line 742
    const/4 v10, 0x6

    .line 743
    const/4 v11, 0x4

    .line 744
    if-eqz v9, :cond_17

    .line 745
    .line 746
    if-eq v9, v5, :cond_1a

    .line 747
    .line 748
    if-eq v9, v11, :cond_17

    .line 749
    .line 750
    if-eq v9, v8, :cond_17

    .line 751
    .line 752
    if-eq v9, v10, :cond_16

    .line 753
    .line 754
    if-eq v9, v0, :cond_15

    .line 755
    .line 756
    const/16 v2, 0x8

    .line 757
    .line 758
    goto :goto_12

    .line 759
    :cond_15
    const/4 v2, 0x7

    .line 760
    goto :goto_12

    .line 761
    :cond_16
    :pswitch_12
    const/4 v2, 0x5

    .line 762
    goto :goto_12

    .line 763
    :cond_17
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 764
    .line 765
    .line 766
    move-result v3

    .line 767
    packed-switch v3, :pswitch_data_1

    .line 768
    .line 769
    .line 770
    :pswitch_13
    const/4 v2, 0x6

    .line 771
    goto :goto_12

    .line 772
    :pswitch_14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 773
    .line 774
    const/16 v3, 0x1d

    .line 775
    .line 776
    if-lt v2, v3, :cond_18

    .line 777
    .line 778
    goto :goto_10

    .line 779
    :cond_18
    const/4 v0, 0x0

    .line 780
    :goto_10
    move v2, v0

    .line 781
    goto :goto_12

    .line 782
    :pswitch_15
    const/4 v2, 0x4

    .line 783
    goto :goto_12

    .line 784
    :pswitch_16
    const/4 v2, 0x3

    .line 785
    goto :goto_12

    .line 786
    :cond_19
    :goto_11
    const/4 v2, 0x1

    .line 787
    goto :goto_12

    .line 788
    :catch_3
    nop

    .line 789
    goto :goto_f

    .line 790
    :cond_1a
    :goto_12
    :pswitch_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 791
    .line 792
    const/16 v3, 0x1f

    .line 793
    .line 794
    if-lt v0, v3, :cond_1b

    .line 795
    .line 796
    if-ne v2, v8, :cond_1b

    .line 797
    .line 798
    :try_start_6
    const-string v0, "phone"

    .line 799
    .line 800
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 805
    .line 806
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    new-instance v2, Lu1/n;

    .line 810
    .line 811
    invoke-direct {v2, v1}, Lu1/n;-><init>(Lu1/p;)V

    .line 812
    .line 813
    .line 814
    iget-object v3, v1, Lu1/p;->c:Ljava/lang/Object;

    .line 815
    .line 816
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 817
    .line 818
    invoke-static {v0, v3, v2}, La2/b;->s(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Lu1/n;)V

    .line 819
    .line 820
    .line 821
    invoke-static {v0, v2}, La2/b;->t(Landroid/telephony/TelephonyManager;Lu1/n;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 822
    .line 823
    .line 824
    goto :goto_13

    .line 825
    :catch_4
    invoke-virtual {v1, v8}, Lu1/p;->e(I)V

    .line 826
    .line 827
    .line 828
    goto :goto_13

    .line 829
    :cond_1b
    invoke-virtual {v1, v2}, Lu1/p;->e(I)V

    .line 830
    .line 831
    .line 832
    :goto_13
    return-void

    .line 833
    :pswitch_18
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 834
    .line 835
    check-cast v0, Lu1/p;

    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    new-instance v1, Landroid/content/IntentFilter;

    .line 841
    .line 842
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 843
    .line 844
    .line 845
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 846
    .line 847
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    new-instance v2, La2/k;

    .line 851
    .line 852
    invoke-direct {v2, v3, v0}, La2/k;-><init>(ILjava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v0, Landroid/content/Context;

    .line 858
    .line 859
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 860
    .line 861
    .line 862
    return-void

    .line 863
    :pswitch_19
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 864
    .line 865
    check-cast v0, Lb5/i;

    .line 866
    .line 867
    iget-object v1, v0, Lb5/i;->f:Ljava/lang/Object;

    .line 868
    .line 869
    iget-object v2, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 870
    .line 871
    check-cast v2, Lfa/d0;

    .line 872
    .line 873
    invoke-virtual {v2, v1}, Lfa/d0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    iput-object v1, v0, Lb5/i;->f:Ljava/lang/Object;

    .line 878
    .line 879
    new-instance v2, Lu1/b;

    .line 880
    .line 881
    invoke-direct {v2, v0, v1, v4}, Lu1/b;-><init>(Lb5/i;Ljava/lang/Object;I)V

    .line 882
    .line 883
    .line 884
    iget-object v0, v0, Lb5/i;->c:Ljava/lang/Object;

    .line 885
    .line 886
    check-cast v0, Lu1/b0;

    .line 887
    .line 888
    iget-object v1, v0, Lu1/b0;->a:Landroid/os/Handler;

    .line 889
    .line 890
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 899
    .line 900
    .line 901
    move-result v1

    .line 902
    if-nez v1, :cond_1c

    .line 903
    .line 904
    goto :goto_14

    .line 905
    :cond_1c
    invoke-virtual {v0, v2}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 906
    .line 907
    .line 908
    :goto_14
    return-void

    .line 909
    :pswitch_1a
    iget-object v0, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 910
    .line 911
    check-cast v0, Ltb/q;

    .line 912
    .line 913
    iget-object v2, v0, Ltb/q;->e:Ltb/r;

    .line 914
    .line 915
    iget-object v3, v2, Ltb/r;->e:Ljava/lang/Thread;

    .line 916
    .line 917
    iget-object v0, v0, Ltb/q;->d:Ljava/lang/Thread;

    .line 918
    .line 919
    if-ne v3, v0, :cond_1d

    .line 920
    .line 921
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 922
    .line 923
    check-cast v0, Lsb/e;

    .line 924
    .line 925
    iput-object v0, v2, Ltb/r;->f:Lsb/e;

    .line 926
    .line 927
    iget-object v0, v2, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 928
    .line 929
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 930
    .line 931
    .line 932
    new-instance v3, Ldb/v;

    .line 933
    .line 934
    invoke-direct {v3, v0}, Ldb/v;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 935
    .line 936
    .line 937
    iget-object v0, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 938
    .line 939
    invoke-virtual {v0, v3}, Ldb/p;->a(Lbi/a;)I

    .line 940
    .line 941
    .line 942
    iput-object v1, v2, Ltb/r;->e:Ljava/lang/Thread;

    .line 943
    .line 944
    :cond_1d
    return-void

    .line 945
    :pswitch_1b
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 946
    .line 947
    check-cast v0, Landroid/net/NetworkInfo;

    .line 948
    .line 949
    iget-object v1, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 950
    .line 951
    check-cast v1, La2/k;

    .line 952
    .line 953
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 954
    .line 955
    .line 956
    :try_start_7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 957
    .line 958
    .line 959
    move-result-object v2

    .line 960
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 961
    .line 962
    if-ne v2, v3, :cond_21

    .line 963
    .line 964
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 965
    .line 966
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 967
    .line 968
    .line 969
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    const/16 v2, 0x12e

    .line 974
    .line 975
    invoke-virtual {v0, v2}, Lwa/s;->i(I)V

    .line 976
    .line 977
    .line 978
    iget-object v0, v1, La2/k;->b:Ljava/lang/Object;

    .line 979
    .line 980
    check-cast v0, Lcom/yunpan/appmanage/service/AccService;

    .line 981
    .line 982
    const-string v1, "wifi"

    .line 983
    .line 984
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 989
    .line 990
    if-nez v0, :cond_1e

    .line 991
    .line 992
    goto/16 :goto_17

    .line 993
    .line 994
    :cond_1e
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    if-nez v0, :cond_1f

    .line 999
    .line 1000
    goto/16 :goto_17

    .line 1001
    .line 1002
    :cond_1f
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    const-string v1, "\""

    .line 1007
    .line 1008
    const-string v2, ""

    .line 1009
    .line 1010
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v1

    .line 1018
    if-eqz v1, :cond_20

    .line 1019
    .line 1020
    const-string v0, "\u672a\u77e5wifi"

    .line 1021
    .line 1022
    goto :goto_15

    .line 1023
    :catch_5
    move-exception v0

    .line 1024
    goto :goto_16

    .line 1025
    :cond_20
    :goto_15
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v1

    .line 1029
    const/16 v2, 0x130

    .line 1030
    .line 1031
    invoke-virtual {v1, v2, v0}, Lwa/s;->j(ILjava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    goto :goto_17

    .line 1035
    :cond_21
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v1

    .line 1039
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 1040
    .line 1041
    if-ne v1, v2, :cond_22

    .line 1042
    .line 1043
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    const/16 v1, 0x12f

    .line 1048
    .line 1049
    invoke-virtual {v0, v1}, Lwa/s;->i(I)V

    .line 1050
    .line 1051
    .line 1052
    goto :goto_17

    .line 1053
    :cond_22
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v1

    .line 1057
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 1058
    .line 1059
    if-ne v1, v2, :cond_23

    .line 1060
    .line 1061
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1062
    .line 1063
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    .line 1065
    .line 1066
    goto :goto_17

    .line 1067
    :cond_23
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v1

    .line 1071
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    .line 1072
    .line 1073
    if-ne v1, v2, :cond_24

    .line 1074
    .line 1075
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1076
    .line 1077
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1078
    .line 1079
    .line 1080
    goto :goto_17

    .line 1081
    :cond_24
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v1

    .line 1085
    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    .line 1086
    .line 1087
    if-ne v1, v2, :cond_25

    .line 1088
    .line 1089
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1090
    .line 1091
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1092
    .line 1093
    .line 1094
    goto :goto_17

    .line 1095
    :cond_25
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 1100
    .line 1101
    if-ne v0, v1, :cond_26

    .line 1102
    .line 1103
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1104
    .line 1105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1106
    .line 1107
    .line 1108
    goto :goto_17

    .line 1109
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1110
    .line 1111
    .line 1112
    :cond_26
    :goto_17
    return-void

    .line 1113
    :pswitch_1c
    const-string v0, "audio"

    .line 1114
    .line 1115
    iget-object v1, p0, Ls1/f;->b:Ljava/lang/Object;

    .line 1116
    .line 1117
    check-cast v1, Landroid/content/Context;

    .line 1118
    .line 1119
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    check-cast v0, Landroid/media/AudioManager;

    .line 1124
    .line 1125
    sput-object v0, Ls1/g;->a:Landroid/media/AudioManager;

    .line 1126
    .line 1127
    iget-object v0, p0, Ls1/f;->c:Ljava/lang/Object;

    .line 1128
    .line 1129
    check-cast v0, Lu1/e;

    .line 1130
    .line 1131
    invoke-virtual {v0}, Lu1/e;->e()Z

    .line 1132
    .line 1133
    .line 1134
    return-void

    .line 1135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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

    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_12
        :pswitch_15
        :pswitch_15
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
