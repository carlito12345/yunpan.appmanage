.class public final Lm0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/HashMap;

.field public d:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm0/h0;->c:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm0/h0;->d:Ljava/util/HashSet;

    .line 17
    .line 18
    iput-object p1, p0, Lm0/h0;->a:Landroid/content/Context;

    .line 19
    .line 20
    new-instance p1, Landroid/os/HandlerThread;

    .line 21
    .line 22
    const-string v0, "NotificationManagerCompat"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lm0/h0;->b:Landroid/os/Handler;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lm0/g0;)V
    .locals 6

    .line 1
    const-string v0, "NotifManCompat"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    iget-object v3, p1, Lm0/g0;->a:Landroid/content/ComponentName;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v2, p1, Lm0/g0;->d:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v2, p1, Lm0/g0;->d:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-boolean v2, p1, Lm0/g0;->b:Z

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .line 38
    .line 39
    const-string v4, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    .line 40
    .line 41
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/16 v4, 0x21

    .line 49
    .line 50
    iget-object v5, p0, Lm0/h0;->a:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v5, v2, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iput-boolean v2, p1, Lm0/g0;->b:Z

    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    iput v2, p1, Lm0/g0;->e:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    if-eqz v3, :cond_5

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    :cond_5
    invoke-virtual {v5, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-boolean v2, p1, Lm0/g0;->b:Z

    .line 73
    .line 74
    :goto_1
    if-eqz v2, :cond_b

    .line 75
    .line 76
    iget-object v2, p1, Lm0/g0;->c:Li/c;

    .line 77
    .line 78
    if-nez v2, :cond_6

    .line 79
    .line 80
    goto :goto_7

    .line 81
    :cond_6
    :goto_2
    iget-object v2, p1, Lm0/g0;->d:Ljava/util/ArrayDeque;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lm0/e0;

    .line 88
    .line 89
    if-nez v4, :cond_7

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_7
    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_8

    .line 97
    .line 98
    invoke-virtual {v4}, Lm0/e0;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catch_0
    nop

    .line 103
    goto :goto_4

    .line 104
    :catch_1
    nop

    .line 105
    goto :goto_5

    .line 106
    :cond_8
    :goto_3
    iget-object v5, p1, Lm0/g0;->c:Li/c;

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Lm0/e0;->a(Li/c;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :goto_4
    if-eqz v3, :cond_9

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    goto :goto_6

    .line 121
    :goto_5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_9

    .line 126
    .line 127
    if-eqz v3, :cond_9

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    :cond_9
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_a

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lm0/h0;->b(Lm0/g0;)V

    .line 139
    .line 140
    .line 141
    :cond_a
    return-void

    .line 142
    :cond_b
    :goto_7
    invoke-virtual {p0, p1}, Lm0/h0;->b(Lm0/g0;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final b(Lm0/g0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lm0/h0;->b:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget-object v2, p1, Lm0/g0;->a:Landroid/content/ComponentName;

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v3, p1, Lm0/g0;->e:I

    .line 14
    .line 15
    add-int/lit8 v4, v3, 0x1

    .line 16
    .line 17
    iput v4, p1, Lm0/g0;->e:I

    .line 18
    .line 19
    const/4 v5, 0x6

    .line 20
    if-le v4, v5, :cond_2

    .line 21
    .line 22
    iget-object p1, p1, Lm0/g0;->d:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 25
    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const/4 p1, 0x1

    .line 37
    shl-int/2addr p1, v3

    .line 38
    mul-int/lit16 p1, p1, 0x3e8

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    int-to-long v2, p1

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x3

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    if-eq v1, v0, :cond_5

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    if-eq v1, v5, :cond_2

    .line 13
    .line 14
    if-eq v1, v4, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Landroid/content/ComponentName;

    .line 20
    .line 21
    iget-object v1, p0, Lm0/h0;->c:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lm0/g0;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lm0/h0;->a(Lm0/g0;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return v0

    .line 35
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Landroid/content/ComponentName;

    .line 38
    .line 39
    iget-object v1, p0, Lm0/h0;->c:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lm0/g0;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget-boolean v1, p1, Lm0/g0;->b:Z

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Lm0/h0;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 56
    .line 57
    .line 58
    iput-boolean v3, p1, Lm0/g0;->b:Z

    .line 59
    .line 60
    :cond_3
    iput-object v2, p1, Lm0/g0;->c:Li/c;

    .line 61
    .line 62
    :cond_4
    return v0

    .line 63
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lm0/f0;

    .line 66
    .line 67
    iget-object v1, p1, Lm0/f0;->a:Landroid/content/ComponentName;

    .line 68
    .line 69
    iget-object p1, p1, Lm0/f0;->b:Landroid/os/IBinder;

    .line 70
    .line 71
    iget-object v4, p0, Lm0/h0;->c:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lm0/g0;

    .line 78
    .line 79
    if-eqz v1, :cond_8

    .line 80
    .line 81
    sget v4, Li/b;->e:I

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    sget-object v2, Li/c;->c:Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_7

    .line 93
    .line 94
    instance-of v4, v2, Li/c;

    .line 95
    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    check-cast v2, Li/c;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    new-instance v2, Li/a;

    .line 102
    .line 103
    invoke-direct {v2, p1}, Li/a;-><init>(Landroid/os/IBinder;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    iput-object v2, v1, Lm0/g0;->c:Li/c;

    .line 107
    .line 108
    iput v3, v1, Lm0/g0;->e:I

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Lm0/h0;->a(Lm0/g0;)V

    .line 111
    .line 112
    .line 113
    :cond_8
    return v0

    .line 114
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Lm0/e0;

    .line 117
    .line 118
    iget-object v1, p0, Lm0/h0;->a:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v5, "enabled_notification_listeners"

    .line 125
    .line 126
    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    sget-object v5, Lm0/i0;->c:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v5

    .line 133
    if-eqz v1, :cond_c

    .line 134
    .line 135
    :try_start_0
    sget-object v6, Lm0/i0;->d:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-nez v6, :cond_c

    .line 142
    .line 143
    const-string v6, ":"

    .line 144
    .line 145
    const/4 v7, -0x1

    .line 146
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    new-instance v7, Ljava/util/HashSet;

    .line 151
    .line 152
    array-length v8, v6

    .line 153
    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 154
    .line 155
    .line 156
    array-length v8, v6

    .line 157
    const/4 v9, 0x0

    .line 158
    :goto_1
    if-ge v9, v8, :cond_b

    .line 159
    .line 160
    aget-object v10, v6, v9

    .line 161
    .line 162
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    if-eqz v10, :cond_a

    .line 167
    .line 168
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catchall_0
    move-exception p1

    .line 177
    goto/16 :goto_8

    .line 178
    .line 179
    :cond_a
    :goto_2
    add-int/2addr v9, v0

    .line 180
    goto :goto_1

    .line 181
    :cond_b
    sput-object v7, Lm0/i0;->e:Ljava/util/HashSet;

    .line 182
    .line 183
    sput-object v1, Lm0/i0;->d:Ljava/lang/String;

    .line 184
    .line 185
    :cond_c
    sget-object v1, Lm0/i0;->e:Ljava/util/HashSet;

    .line 186
    .line 187
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v5, p0, Lm0/h0;->d:Ljava/util/HashSet;

    .line 189
    .line 190
    invoke-interface {v1, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_d

    .line 195
    .line 196
    goto/16 :goto_6

    .line 197
    .line 198
    :cond_d
    iput-object v1, p0, Lm0/h0;->d:Ljava/util/HashSet;

    .line 199
    .line 200
    iget-object v5, p0, Lm0/h0;->a:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    new-instance v6, Landroid/content/Intent;

    .line 207
    .line 208
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v7, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    .line 212
    .line 213
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    new-instance v6, Ljava/util/HashSet;

    .line 222
    .line 223
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-eqz v7, :cond_10

    .line 235
    .line 236
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 241
    .line 242
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 243
    .line 244
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-nez v8, :cond_e

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_e
    new-instance v8, Landroid/content/ComponentName;

    .line 254
    .line 255
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 256
    .line 257
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 260
    .line 261
    invoke-direct {v8, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 265
    .line 266
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 267
    .line 268
    if-eqz v7, :cond_f

    .line 269
    .line 270
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_f
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_10
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    :cond_11
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    if-eqz v5, :cond_13

    .line 287
    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    check-cast v5, Landroid/content/ComponentName;

    .line 293
    .line 294
    iget-object v7, p0, Lm0/h0;->c:Ljava/util/HashMap;

    .line 295
    .line 296
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-nez v7, :cond_11

    .line 301
    .line 302
    const-string v7, "NotifManCompat"

    .line 303
    .line 304
    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    if-eqz v7, :cond_12

    .line 309
    .line 310
    if-eqz v5, :cond_12

    .line 311
    .line 312
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    :cond_12
    iget-object v7, p0, Lm0/h0;->c:Ljava/util/HashMap;

    .line 316
    .line 317
    new-instance v8, Lm0/g0;

    .line 318
    .line 319
    invoke-direct {v8, v5}, Lm0/g0;-><init>(Landroid/content/ComponentName;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_13
    iget-object v1, p0, Lm0/h0;->c:Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    :cond_14
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    if-eqz v5, :cond_17

    .line 341
    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    check-cast v5, Ljava/util/Map$Entry;

    .line 347
    .line 348
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    if-nez v7, :cond_14

    .line 357
    .line 358
    const-string v7, "NotifManCompat"

    .line 359
    .line 360
    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    if-eqz v7, :cond_15

    .line 365
    .line 366
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    if-eqz v7, :cond_15

    .line 371
    .line 372
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    :cond_15
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    check-cast v5, Lm0/g0;

    .line 380
    .line 381
    iget-boolean v7, v5, Lm0/g0;->b:Z

    .line 382
    .line 383
    if-eqz v7, :cond_16

    .line 384
    .line 385
    iget-object v7, p0, Lm0/h0;->a:Landroid/content/Context;

    .line 386
    .line 387
    invoke-virtual {v7, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 388
    .line 389
    .line 390
    iput-boolean v3, v5, Lm0/g0;->b:Z

    .line 391
    .line 392
    :cond_16
    iput-object v2, v5, Lm0/g0;->c:Li/c;

    .line 393
    .line 394
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 395
    .line 396
    .line 397
    goto :goto_5

    .line 398
    :cond_17
    :goto_6
    iget-object v1, p0, Lm0/h0;->c:Ljava/util/HashMap;

    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-eqz v2, :cond_18

    .line 413
    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    check-cast v2, Lm0/g0;

    .line 419
    .line 420
    iget-object v3, v2, Lm0/g0;->d:Ljava/util/ArrayDeque;

    .line 421
    .line 422
    invoke-virtual {v3, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0, v2}, Lm0/h0;->a(Lm0/g0;)V

    .line 426
    .line 427
    .line 428
    goto :goto_7

    .line 429
    :cond_18
    return v0

    .line 430
    :goto_8
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    goto :goto_a

    .line 432
    :goto_9
    throw p1

    .line 433
    :goto_a
    goto :goto_9
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const-string v0, "NotifManCompat"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lm0/h0;->b:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v1, Lm0/f0;

    .line 18
    .line 19
    invoke-direct {v1, p1, p2}, Lm0/f0;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string v0, "NotifManCompat"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lm0/h0;->b:Landroid/os/Handler;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
