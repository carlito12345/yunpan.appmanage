.class public Lcom/yunpan/appmanage/service/StartService;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public a:Landroid/media/session/MediaSessionManager;

.field public b:Lta/r;

.field public c:Z

.field public d:Z

.field public e:Landroid/content/SharedPreferences;

.field public final f:Lcom/yunpan/appmanage/carsdk/u;

.field public final g:La2/k;

.field public h:Lhi/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/service/StartService;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/yunpan/appmanage/service/StartService;->d:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->e:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    new-instance v1, Lcom/yunpan/appmanage/carsdk/u;

    .line 13
    .line 14
    const/16 v2, 0xf

    .line 15
    .line 16
    invoke-direct {v1, v2, p0}, Lcom/yunpan/appmanage/carsdk/u;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/yunpan/appmanage/service/StartService;->f:Lcom/yunpan/appmanage/carsdk/u;

    .line 20
    .line 21
    new-instance v1, La2/k;

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    invoke-direct {v1, v2, p0}, La2/k;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/yunpan/appmanage/service/StartService;->g:La2/k;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->h:Lhi/d;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lwa/u;->d(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->f:Lcom/yunpan/appmanage/carsdk/u;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->e:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "StartServiceTime"

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 v2, 0x15

    .line 40
    .line 41
    if-lt v0, v2, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->a:Landroid/media/session/MediaSessionManager;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Lcom/yunpan/appmanage/service/StartService;->b:Lta/r;

    .line 48
    .line 49
    invoke-static {v0, v2}, Lt0/e;->s(Landroid/media/session/MediaSessionManager;Lta/r;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/yunpan/appmanage/service/StartService;->a:Landroid/media/session/MediaSessionManager;

    .line 53
    .line 54
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->g:La2/k;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    nop

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->h:Lhi/d;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :try_start_1
    new-instance v0, Lm0/i0;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lm0/i0;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Lm0/i0;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    :catch_1
    :try_start_2
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/digest/a;->p(Lcom/yunpan/appmanage/service/StartService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    .line 79
    .line 80
    :catch_2
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/service/StartService;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/yunpan/appmanage/service/StartService;->c:Z

    .line 8
    .line 9
    const-string v0, "\u901a\u77e5\u6743"

    .line 10
    .line 11
    const-string v1, "\u521d\u59cb\u5316"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 17
    .line 18
    iget-boolean v0, v0, Lwa/u;->C:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/yunpan/appmanage/service/StartService;->d()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object p0, v0, Lwa/s;->f:Lcom/yunpan/appmanage/service/StartService;

    .line 30
    .line 31
    new-instance v0, Lhi/d;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v0, v1}, Lhi/d;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->h:Lhi/d;

    .line 38
    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/yunpan/appmanage/service/StartService;->h:Lhi/d;

    .line 60
    .line 61
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/digest/a;->d(Lcom/yunpan/appmanage/service/StartService;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lta/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/yunpan/appmanage/service/StartService;->g:La2/k;

    .line 81
    .line 82
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    const/16 v1, 0x15

    .line 88
    .line 89
    if-lt v0, v1, :cond_3

    .line 90
    .line 91
    const/16 v1, 0x17

    .line 92
    .line 93
    if-lt v0, v1, :cond_2

    .line 94
    .line 95
    :try_start_0
    invoke-static {}, Lm0/o;->h()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {p0, v0}, Lr8/a;->l(Lcom/yunpan/appmanage/service/StartService;Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lt0/e;->f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->a:Landroid/media/session/MediaSessionManager;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p0}, Lta/q;->i(Lcom/yunpan/appmanage/service/StartService;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lt0/e;->f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->a:Landroid/media/session/MediaSessionManager;

    .line 119
    .line 120
    :goto_0
    new-instance v0, Lta/r;

    .line 121
    .line 122
    invoke-direct {v0}, Lta/r;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->b:Lta/r;

    .line 126
    .line 127
    new-instance v0, Landroid/content/ComponentName;

    .line 128
    .line 129
    const-class v1, Lcom/yunpan/appmanage/service/StartService;

    .line 130
    .line 131
    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/yunpan/appmanage/service/StartService;->a:Landroid/media/session/MediaSessionManager;

    .line 139
    .line 140
    invoke-static {v2, v0}, Lt0/e;->o(Landroid/media/session/MediaSessionManager;Landroid/content/ComponentName;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iput-object v2, v1, Lwa/s;->b:Ljava/util/List;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/yunpan/appmanage/service/StartService;->a:Landroid/media/session/MediaSessionManager;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/yunpan/appmanage/service/StartService;->b:Lta/r;

    .line 149
    .line 150
    invoke-static {v1, v2, v0}, Lt0/e;->t(Landroid/media/session/MediaSessionManager;Lta/r;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    :catch_0
    :cond_3
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 154
    .line 155
    iget-boolean v1, v0, Lwa/u;->h:Z

    .line 156
    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 160
    .line 161
    if-eqz v0, :cond_4

    .line 162
    .line 163
    const-string v0, "\u653e\u5f03\u4efb\u52a1\uff1a\u60a8\u52fe\u9009\u4e86\u624b\u52a8\u70b9\u51fb\u542f\u52a8"

    .line 164
    .line 165
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    return-void

    .line 169
    :cond_5
    const-string v1, "StartServiceTime"

    .line 170
    .line 171
    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iput-object v1, p0, Lcom/yunpan/appmanage/service/StartService;->e:Landroid/content/SharedPreferences;

    .line 177
    .line 178
    iget-object v1, p0, Lcom/yunpan/appmanage/service/StartService;->f:Lcom/yunpan/appmanage/carsdk/u;

    .line 179
    .line 180
    const/4 v2, 0x0

    .line 181
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    .line 183
    .line 184
    iget-boolean v1, v0, Lwa/u;->d0:Z

    .line 185
    .line 186
    if-eqz v1, :cond_7

    .line 187
    .line 188
    iget-object v1, p0, Lcom/yunpan/appmanage/service/StartService;->e:Landroid/content/SharedPreferences;

    .line 189
    .line 190
    if-eqz v1, :cond_7

    .line 191
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 193
    .line 194
    .line 195
    move-result-wide v1

    .line 196
    iget-object v3, p0, Lcom/yunpan/appmanage/service/StartService;->e:Landroid/content/SharedPreferences;

    .line 197
    .line 198
    const-wide/16 v4, 0x0

    .line 199
    .line 200
    const-string v6, "StartServiceTime"

    .line 201
    .line 202
    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v3

    .line 206
    sub-long/2addr v1, v3

    .line 207
    const-wide/16 v3, 0x1b58

    .line 208
    .line 209
    cmp-long v5, v1, v3

    .line 210
    .line 211
    if-gez v5, :cond_7

    .line 212
    .line 213
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 214
    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    const-string v0, "\u653e\u5f03\u4efb\u52a1\uff1a\u7591\u662f\u91cd\u590d\u62c9\u8d77"

    .line 218
    .line 219
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_6
    return-void

    .line 223
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    .line 224
    .line 225
    new-instance v1, Lha/db;

    .line 226
    .line 227
    const/16 v2, 0x13

    .line 228
    .line 229
    invoke-direct {v1, v2, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->a:Landroid/media/session/MediaSessionManager;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v2, 0x17

    .line 10
    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lm0/o;->h()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0}, Lr8/a;->l(Lcom/yunpan/appmanage/service/StartService;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lt0/e;->f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->a:Landroid/media/session/MediaSessionManager;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-lt v0, v1, :cond_1

    .line 29
    .line 30
    invoke-static {p0}, Lta/q;->i(Lcom/yunpan/appmanage/service/StartService;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lt0/e;->f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/yunpan/appmanage/service/StartService;->a:Landroid/media/session/MediaSessionManager;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 42
    .line 43
    const-string v1, "\u5a92\u4f53\u4f1a\u8bdd\u7ba1\u7406\u5668\u4e3a\u7a7a"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    if-lt v0, v1, :cond_3

    .line 52
    .line 53
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/yunpan/appmanage/service/StartService;->a:Landroid/media/session/MediaSessionManager;

    .line 58
    .line 59
    new-instance v2, Landroid/content/ComponentName;

    .line 60
    .line 61
    const-class v3, Lcom/yunpan/appmanage/service/StartService;

    .line 62
    .line 63
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Lt0/e;->o(Landroid/media/session/MediaSessionManager;Landroid/content/ComponentName;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, v0, Lwa/s;->b:Ljava/util/List;

    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const-string v2, "GJStartServiceChannel"

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    :try_start_1
    new-instance v0, Landroid/app/NotificationChannel;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const v3, 0x7f13016f

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, "\u5b88\u62a4"

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 37
    .line 38
    .line 39
    const-class v1, Landroid/app/NotificationManager;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/service/notification/NotificationListenerService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/app/NotificationManager;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    new-instance v0, Lm0/q;

    .line 56
    .line 57
    invoke-direct {v0, p0, v2}, Lm0/q;-><init>(Landroid/app/Service;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "\u97f3\u4e50\u63a7\u5236"

    .line 61
    .line 62
    invoke-static {v1}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, v0, Lm0/q;->e:Ljava/lang/CharSequence;

    .line 67
    .line 68
    const-string v1, ""

    .line 69
    .line 70
    invoke-static {v1}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, v0, Lm0/q;->f:Ljava/lang/CharSequence;

    .line 75
    .line 76
    iget-object v1, v0, Lm0/q;->m:Landroid/app/Notification;

    .line 77
    .line 78
    const v2, 0x7f08008f

    .line 79
    .line 80
    .line 81
    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 82
    .line 83
    invoke-virtual {v0}, Lm0/q;->d()V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lm0/q;->m:Landroid/app/Notification;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    iput-object v2, v1, Landroid/app/Notification;->vibrate:[J

    .line 90
    .line 91
    const/4 v1, -0x1

    .line 92
    iput v1, v0, Lm0/q;->g:I

    .line 93
    .line 94
    const-string v1, "service"

    .line 95
    .line 96
    iput-object v1, v0, Lm0/q;->i:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0}, Lm0/q;->c()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lm0/q;->a()Landroid/app/Notification;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-void
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\u901a\u77e5\u6743"

    .line 5
    .line 6
    const-string v1, "\u521b\u5efa"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/yunpan/appmanage/service/StartService;->d:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/yunpan/appmanage/service/StartService;->d:Z

    .line 17
    .line 18
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/yunpan/appmanage/base/AppStart;->d()V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 24
    .line 25
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v0, "\u901a\u77e5\u670d\u52a1\uff1a\u521b\u5efa"

    .line 30
    .line 31
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/yunpan/appmanage/service/StartService;->b()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    const-string v0, "\u901a\u77e5\u6743"

    .line 2
    .line 3
    const-string v1, "\u9500\u6bc1"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 9
    .line 10
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "\u901a\u77e5\u670d\u52a1\uff1a\u9500\u6bc1"

    .line 15
    .line 16
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/service/StartService;->a()V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onListenerConnected()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\u901a\u77e5\u6743"

    .line 5
    .line 6
    const-string v1, "\u8fde\u63a5"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/yunpan/appmanage/service/StartService;->d:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/yunpan/appmanage/service/StartService;->d:Z

    .line 17
    .line 18
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/yunpan/appmanage/base/AppStart;->d()V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 24
    .line 25
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v0, "\u901a\u77e5\u670d\u52a1\uff1a\u8fde\u63a5"

    .line 30
    .line 31
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/yunpan/appmanage/service/StartService;->b()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onListenerDisconnected()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\u901a\u77e5\u6743"

    .line 5
    .line 6
    const-string v1, "\u65ad\u5f00"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 12
    .line 13
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "\u901a\u77e5\u670d\u52a1\uff1a\u65ad\u5f00"

    .line 18
    .line 19
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/yunpan/appmanage/service/StartService;->c:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/yunpan/appmanage/service/StartService;->a()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Lb1/o;->n(Landroid/service/notification/StatusBarNotification;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method
