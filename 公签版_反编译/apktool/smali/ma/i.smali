.class public final Lma/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/Context;

.field public c:Landroid/content/pm/PackageInstaller;

.field public final d:Landroid/os/HandlerThread;

.field public e:Landroid/os/Handler;

.field public f:Z

.field public final g:Ljava/util/concurrent/Semaphore;

.field public h:Lma/f;

.field public i:Ljava/lang/String;

.field public final j:Lma/f;

.field public k:Lma/g;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lma/i;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v2, "appManage Worker"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lma/i;->d:Landroid/os/HandlerThread;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lma/i;->f:Z

    .line 19
    .line 20
    new-instance v2, Ljava/util/concurrent/Semaphore;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lma/i;->g:Ljava/util/concurrent/Semaphore;

    .line 26
    .line 27
    iput-object v0, p0, Lma/i;->i:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Lma/f;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v0, p0, v1, v2}, Lma/f;-><init>(Lma/i;Landroid/os/Looper;I)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lma/i;->j:Lma/f;

    .line 40
    .line 41
    return-void
.end method

.method public static a()Lma/i;
    .locals 1

    .line 1
    sget-object v0, Lma/h;->a:Lma/i;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/yunpan/appmanage/base/AppStart;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lma/i;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lm0/o;->d(Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInstaller;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lma/i;->c:Landroid/content/pm/PackageInstaller;

    .line 16
    .line 17
    new-instance p1, Lma/j;

    .line 18
    .line 19
    iget-object v0, p0, Lma/i;->b:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v1, Ll5/y;

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    invoke-direct {v1, v2, p0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0, v1}, Lma/j;-><init>(Landroid/content/Context;Ll5/y;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lma/i;->d:Landroid/os/HandlerThread;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lma/i;->e:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v1, Lma/f;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-direct {v1, p0, v0, v2}, Lma/f;-><init>(Lma/i;Landroid/os/Looper;I)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lma/i;->h:Lma/f;

    .line 57
    .line 58
    :try_start_0
    iget-object v0, p0, Lma/i;->b:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Landroid/content/IntentFilter;

    .line 65
    .line 66
    const-string v2, "com.yunpan.appmanage.action.ACTION_DELIVER_PI_EVENT"

    .line 67
    .line 68
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lma/i;->e:Landroid/os/Handler;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    const-string p1, "\u5931\u8d25\uff1a\u6ce8\u518c\u56de\u8c03\u5931\u8d25"

    .line 79
    .line 80
    iput-object p1, p0, Lma/i;->a:Ljava/lang/String;

    .line 81
    .line 82
    sget-object p1, Lma/h;->a:Lma/i;

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p1, Lma/i;->f:Z

    .line 86
    .line 87
    iget-object p1, p0, Lma/i;->g:Ljava/util/concurrent/Semaphore;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;Lma/g;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lma/i;->k:Lma/g;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 4
    .line 5
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->h0:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    new-instance v1, La2/c0;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1, p2}, La2/c0;-><init>(Lma/i;Ljava/lang/String;Lma/g;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    const-string p1, "\u4e0d\u80fd\u5728\u4e3b\u7ebf\u7a0b\u4e2d\u8c03\u7528\u6b64\u65b9\u6cd5"

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v3, 0x15

    .line 23
    .line 24
    if-ge v2, v3, :cond_1

    .line 25
    .line 26
    const-string p1, "\u7cfb\u7edf\u4f4e\u4e8e5.0\u65e0\u6cd5\u4f7f\u7528\u7ba1\u5bb6\u5b89\u88c5\u5668"

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    sget v2, Lcom/yunpan/appmanage/ui/ActivityOuShang;->E:I

    .line 30
    .line 31
    const-string v2, "OUSHANG_WHILTE_APP_LIST"

    .line 32
    .line 33
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 34
    .line 35
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/w;->E:Z

    .line 36
    .line 37
    if-eqz v3, :cond_6

    .line 38
    .line 39
    :try_start_0
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 40
    .line 41
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 42
    .line 43
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    const-string v5, "null"

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    :cond_2
    const-string v4, ""

    .line 64
    .line 65
    :cond_3
    new-instance v5, Lef/b;

    .line 66
    .line 67
    new-instance v6, Ljava/io/File;

    .line 68
    .line 69
    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v5, v6}, Lef/b;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .line 74
    .line 75
    :try_start_1
    invoke-virtual {v5}, Lef/b;->M()V

    .line 76
    .line 77
    .line 78
    iget-object v6, v5, Lef/b;->e:Lff/c;

    .line 79
    .line 80
    iget-object v6, v6, Lff/c;->a:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    const-string v8, ","

    .line 87
    .line 88
    if-nez v7, :cond_4

    .line 89
    .line 90
    :try_start_2
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_4

    .line 95
    .line 96
    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v2

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-nez v7, :cond_5

    .line 123
    .line 124
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v3, v2, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .line 147
    .line 148
    :cond_5
    :try_start_3
    invoke-virtual {v5}, Lef/b;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Lef/b;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catchall_1
    move-exception v3

    .line 157
    :try_start_5
    const-class v4, Ljava/lang/Throwable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 158
    .line 159
    :try_start_6
    const-string v5, "addSuppressed"

    .line 160
    .line 161
    new-array v6, v1, [Ljava/lang/Class;

    .line 162
    .line 163
    aput-object v4, v6, v0

    .line 164
    .line 165
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    new-array v5, v1, [Ljava/lang/Object;

    .line 170
    .line 171
    aput-object v3, v5, v0

    .line 172
    .line 173
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 174
    .line 175
    .line 176
    :catch_0
    :goto_2
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 177
    :catch_1
    :cond_6
    :goto_3
    monitor-enter p0

    .line 178
    :try_start_8
    const-string v2, ""

    .line 179
    .line 180
    iput-object v2, p0, Lma/i;->i:Ljava/lang/String;

    .line 181
    .line 182
    iput-boolean v0, p0, Lma/i;->f:Z

    .line 183
    .line 184
    new-instance v2, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    const-string v4, ".apks"

    .line 194
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    const/high16 v5, 0x100000

    .line 200
    .line 201
    const/4 v6, 0x0

    .line 202
    if-nez v4, :cond_8

    .line 203
    .line 204
    const-string v4, ".apkm"

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-nez v4, :cond_8

    .line 211
    .line 212
    const-string v4, ".xapk"

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-nez v4, :cond_8

    .line 219
    .line 220
    const-string v4, ".zip"

    .line 221
    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_7

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_7
    new-instance v3, Lcom/yunpan/appmanage/bean/ApkSourceBean;

    .line 230
    .line 231
    new-instance v4, Ljava/io/File;

    .line 232
    .line 233
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-direct {v3, v4}, Lcom/yunpan/appmanage/bean/ApkSourceBean;-><init>(Ljava/io/File;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    goto/16 :goto_e

    .line 243
    .line 244
    :catchall_2
    move-exception p1

    .line 245
    goto/16 :goto_1b

    .line 246
    .line 247
    :cond_8
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 253
    .line 254
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 255
    .line 256
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->Q:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 267
    .line 268
    .line 269
    move-result-wide v7

    .line 270
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 280
    :try_start_9
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 281
    .line 282
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/w;->r0:Z

    .line 283
    .line 284
    if-eqz v4, :cond_9

    .line 285
    .line 286
    new-instance v4, Ljava/io/File;

    .line 287
    .line 288
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v4, v3, v6, v6}, Lif/a;->w(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_9
    new-instance v4, Ljava/io/File;

    .line 296
    .line 297
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v4, v3, v6, v6}, Lza/g;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 301
    .line 302
    .line 303
    :goto_5
    :try_start_a
    const-string p1, ""

    .line 304
    .line 305
    new-instance v4, Ljava/io/File;

    .line 306
    .line 307
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    array-length v4, v3

    .line 315
    const/4 v7, 0x0

    .line 316
    const/4 v8, 0x0

    .line 317
    :goto_6
    if-ge v7, v4, :cond_c

    .line 318
    .line 319
    aget-object v9, v3, v7

    .line 320
    .line 321
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    const-string v11, ".apk"

    .line 330
    .line 331
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v10

    .line 335
    if-eqz v10, :cond_a

    .line 336
    .line 337
    new-instance v10, Lcom/yunpan/appmanage/bean/ApkSourceBean;

    .line 338
    .line 339
    invoke-direct {v10, v9}, Lcom/yunpan/appmanage/bean/ApkSourceBean;-><init>(Ljava/io/File;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 349
    if-eqz v10, :cond_b

    .line 350
    .line 351
    :try_start_b
    iget-object v10, p0, Lma/i;->b:Landroid/content/Context;

    .line 352
    .line 353
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    invoke-virtual {v10, v11, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 362
    .line 363
    .line 364
    move-result-object v10

    .line 365
    if-eqz v10, :cond_b

    .line 366
    .line 367
    iget-object p1, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 370
    .line 371
    .line 372
    move-result v10

    .line 373
    if-le v10, v1, :cond_b

    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 376
    .line 377
    .line 378
    move-result v10

    .line 379
    sub-int/2addr v10, v1

    .line 380
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    new-instance v10, Lcom/yunpan/appmanage/bean/ApkSourceBean;

    .line 384
    .line 385
    invoke-direct {v10, v9}, Lcom/yunpan/appmanage/bean/ApkSourceBean;-><init>(Ljava/io/File;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 389
    .line 390
    .line 391
    goto :goto_7

    .line 392
    :catch_2
    move-exception v9

    .line 393
    :try_start_c
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 394
    .line 395
    .line 396
    goto :goto_7

    .line 397
    :cond_a
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    const-string v10, ".obb"

    .line 406
    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v9

    .line 411
    if-eqz v9, :cond_b

    .line 412
    .line 413
    const/4 v8, 0x1

    .line 414
    :cond_b
    :goto_7
    add-int/2addr v7, v1

    .line 415
    goto :goto_6

    .line 416
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-nez v4, :cond_f

    .line 421
    .line 422
    if-eqz v8, :cond_f

    .line 423
    .line 424
    array-length v4, v3

    .line 425
    const/4 v7, 0x0

    .line 426
    :goto_8
    if-ge v7, v4, :cond_f

    .line 427
    .line 428
    aget-object v8, v3, v7

    .line 429
    .line 430
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    const-string v10, ".obb"

    .line 439
    .line 440
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 444
    if-eqz v9, :cond_e

    .line 445
    .line 446
    :try_start_d
    new-instance v9, Ljava/io/File;

    .line 447
    .line 448
    new-instance v10, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    iget-object v11, p0, Lma/i;->b:Landroid/content/Context;

    .line 454
    .line 455
    invoke-virtual {v11}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 460
    .line 461
    .line 462
    move-result-object v11

    .line 463
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v11, "/"

    .line 471
    .line 472
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v11, "/"

    .line 479
    .line 480
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v10

    .line 487
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 491
    .line 492
    .line 493
    new-instance v9, Ljava/io/File;

    .line 494
    .line 495
    new-instance v10, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .line 499
    .line 500
    iget-object v11, p0, Lma/i;->b:Landroid/content/Context;

    .line 501
    .line 502
    invoke-virtual {v11}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    .line 503
    .line 504
    .line 505
    move-result-object v11

    .line 506
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 507
    .line 508
    .line 509
    move-result-object v11

    .line 510
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v11

    .line 514
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v11, "/"

    .line 518
    .line 519
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v11, "/"

    .line 526
    .line 527
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v11

    .line 534
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v10

    .line 541
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 545
    .line 546
    .line 547
    move-result v9

    .line 548
    if-nez v9, :cond_e

    .line 549
    .line 550
    new-instance v9, Ljava/io/FileInputStream;

    .line 551
    .line 552
    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 553
    .line 554
    .line 555
    :try_start_e
    new-instance v10, Ljava/io/FileOutputStream;

    .line 556
    .line 557
    new-instance v11, Ljava/io/File;

    .line 558
    .line 559
    new-instance v12, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .line 563
    .line 564
    iget-object v13, p0, Lma/i;->b:Landroid/content/Context;

    .line 565
    .line 566
    invoke-virtual {v13}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    .line 567
    .line 568
    .line 569
    move-result-object v13

    .line 570
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 571
    .line 572
    .line 573
    move-result-object v13

    .line 574
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v13

    .line 578
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    const-string v13, "/"

    .line 582
    .line 583
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    const-string v13, "/"

    .line 590
    .line 591
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v8

    .line 598
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v8

    .line 605
    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 609
    .line 610
    .line 611
    :try_start_f
    new-array v8, v5, [B

    .line 612
    .line 613
    :goto_9
    invoke-virtual {v9, v8}, Ljava/io/InputStream;->read([B)I

    .line 614
    .line 615
    .line 616
    move-result v11

    .line 617
    if-lez v11, :cond_d

    .line 618
    .line 619
    invoke-virtual {v10, v8, v0, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 620
    .line 621
    .line 622
    goto :goto_9

    .line 623
    :cond_d
    :try_start_10
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 624
    .line 625
    .line 626
    :try_start_11
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 627
    .line 628
    .line 629
    goto :goto_d

    .line 630
    :catchall_3
    move-exception v8

    .line 631
    goto :goto_b

    .line 632
    :catchall_4
    move-exception v8

    .line 633
    :try_start_12
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 634
    .line 635
    .line 636
    goto :goto_a

    .line 637
    :catchall_5
    move-exception v10

    .line 638
    :try_start_13
    const-class v11, Ljava/lang/Throwable;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 639
    .line 640
    :try_start_14
    const-string v12, "addSuppressed"

    .line 641
    .line 642
    new-array v13, v1, [Ljava/lang/Class;

    .line 643
    .line 644
    aput-object v11, v13, v0

    .line 645
    .line 646
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 647
    .line 648
    .line 649
    move-result-object v11

    .line 650
    new-array v12, v1, [Ljava/lang/Object;

    .line 651
    .line 652
    aput-object v10, v12, v0

    .line 653
    .line 654
    invoke-virtual {v11, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 655
    .line 656
    .line 657
    :catch_3
    :goto_a
    :try_start_15
    throw v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 658
    :goto_b
    :try_start_16
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 659
    .line 660
    .line 661
    goto :goto_c

    .line 662
    :catchall_6
    move-exception v9

    .line 663
    :try_start_17
    const-class v10, Ljava/lang/Throwable;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 664
    .line 665
    :try_start_18
    const-string v11, "addSuppressed"

    .line 666
    .line 667
    new-array v12, v1, [Ljava/lang/Class;

    .line 668
    .line 669
    aput-object v10, v12, v0

    .line 670
    .line 671
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 672
    .line 673
    .line 674
    move-result-object v10

    .line 675
    new-array v11, v1, [Ljava/lang/Object;

    .line 676
    .line 677
    aput-object v9, v11, v0

    .line 678
    .line 679
    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 680
    .line 681
    .line 682
    :catch_4
    :goto_c
    :try_start_19
    throw v8
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 683
    :catch_5
    :cond_e
    :goto_d
    add-int/2addr v7, v1

    .line 684
    goto/16 :goto_8

    .line 685
    .line 686
    :cond_f
    :goto_e
    :try_start_1a
    iget-object p1, p0, Lma/i;->c:Landroid/content/pm/PackageInstaller;

    .line 687
    .line 688
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller;->getMySessions()Ljava/util/List;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    :catch_6
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 697
    .line 698
    .line 699
    move-result v3

    .line 700
    if-eqz v3, :cond_10

    .line 701
    .line 702
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v3

    .line 706
    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 707
    .line 708
    :try_start_1b
    iget-object v4, p0, Lma/i;->c:Landroid/content/pm/PackageInstaller;

    .line 709
    .line 710
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 715
    .line 716
    .line 717
    goto :goto_f

    .line 718
    :cond_10
    :try_start_1c
    new-instance p1, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 719
    .line 720
    invoke-direct {p1, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    .line 724
    .line 725
    .line 726
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 727
    .line 728
    const/16 v4, 0x1a

    .line 729
    .line 730
    if-lt v3, v4, :cond_11

    .line 731
    .line 732
    invoke-static {p1}, Leg/a;->l(Landroid/content/pm/PackageInstaller$SessionParams;)V

    .line 733
    .line 734
    .line 735
    goto :goto_10

    .line 736
    :catchall_7
    move-exception p1

    .line 737
    goto/16 :goto_1a

    .line 738
    .line 739
    :catch_7
    move-exception p1

    .line 740
    goto/16 :goto_19

    .line 741
    .line 742
    :cond_11
    :goto_10
    iget-object v3, p0, Lma/i;->c:Landroid/content/pm/PackageInstaller;

    .line 743
    .line 744
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 745
    .line 746
    .line 747
    move-result p1

    .line 748
    iget-object v3, p0, Lma/i;->c:Landroid/content/pm/PackageInstaller;

    .line 749
    .line 750
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 751
    .line 752
    .line 753
    move-result-object v6

    .line 754
    const/4 p1, 0x0

    .line 755
    :goto_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    if-ge p1, v3, :cond_15

    .line 760
    .line 761
    new-instance v3, Ljava/io/FileInputStream;

    .line 762
    .line 763
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v4

    .line 767
    check-cast v4, Lcom/yunpan/appmanage/bean/ApkSourceBean;

    .line 768
    .line 769
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/ApkSourceBean;->path:Ljava/lang/String;

    .line 770
    .line 771
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_7
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 772
    .line 773
    .line 774
    :try_start_1d
    const-string v4, "%d.apk"

    .line 775
    .line 776
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 777
    .line 778
    .line 779
    move-result-object v7

    .line 780
    new-array v8, v1, [Ljava/lang/Object;

    .line 781
    .line 782
    aput-object v7, v8, v0

    .line 783
    .line 784
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v8

    .line 788
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v4

    .line 792
    check-cast v4, Lcom/yunpan/appmanage/bean/ApkSourceBean;

    .line 793
    .line 794
    iget-wide v11, v4, Lcom/yunpan/appmanage/bean/ApkSourceBean;->size:J

    .line 795
    .line 796
    const-wide/16 v9, 0x0

    .line 797
    .line 798
    move-object v7, v6

    .line 799
    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    .line 800
    .line 801
    .line 802
    move-result-object v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 803
    :try_start_1e
    new-array v7, v5, [B

    .line 804
    .line 805
    :goto_12
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    .line 806
    .line 807
    .line 808
    move-result v8

    .line 809
    if-lez v8, :cond_12

    .line 810
    .line 811
    invoke-virtual {v4, v7, v0, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 812
    .line 813
    .line 814
    goto :goto_12

    .line 815
    :catchall_8
    move-exception p1

    .line 816
    goto :goto_14

    .line 817
    :cond_12
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 818
    .line 819
    .line 820
    if-eqz v4, :cond_13

    .line 821
    .line 822
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 823
    .line 824
    .line 825
    goto :goto_13

    .line 826
    :catchall_9
    move-exception p1

    .line 827
    goto :goto_16

    .line 828
    :cond_13
    :goto_13
    :try_start_20
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 829
    .line 830
    .line 831
    add-int/2addr p1, v1

    .line 832
    goto :goto_11

    .line 833
    :goto_14
    if-eqz v4, :cond_14

    .line 834
    .line 835
    :try_start_21
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 836
    .line 837
    .line 838
    goto :goto_15

    .line 839
    :catchall_a
    move-exception v2

    .line 840
    :try_start_22
    const-class v4, Ljava/lang/Throwable;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 841
    .line 842
    :try_start_23
    const-string v5, "addSuppressed"

    .line 843
    .line 844
    new-array v7, v1, [Ljava/lang/Class;

    .line 845
    .line 846
    aput-object v4, v7, v0

    .line 847
    .line 848
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 849
    .line 850
    .line 851
    move-result-object v4

    .line 852
    new-array v5, v1, [Ljava/lang/Object;

    .line 853
    .line 854
    aput-object v2, v5, v0

    .line 855
    .line 856
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 857
    .line 858
    .line 859
    :catch_8
    :cond_14
    :goto_15
    :try_start_24
    throw p1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    .line 860
    :goto_16
    :try_start_25
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 861
    .line 862
    .line 863
    goto :goto_17

    .line 864
    :catchall_b
    move-exception v2

    .line 865
    :try_start_26
    const-class v3, Ljava/lang/Throwable;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_7
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    .line 866
    .line 867
    :try_start_27
    const-string v4, "addSuppressed"

    .line 868
    .line 869
    new-array v5, v1, [Ljava/lang/Class;

    .line 870
    .line 871
    aput-object v3, v5, v0

    .line 872
    .line 873
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 874
    .line 875
    .line 876
    move-result-object v3

    .line 877
    new-array v1, v1, [Ljava/lang/Object;

    .line 878
    .line 879
    aput-object v2, v1, v0

    .line 880
    .line 881
    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_9
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    .line 882
    .line 883
    .line 884
    :catch_9
    :goto_17
    :try_start_28
    throw p1

    .line 885
    :cond_15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 886
    .line 887
    const/16 v1, 0x1f

    .line 888
    .line 889
    if-lt p1, v1, :cond_16

    .line 890
    .line 891
    const/high16 p1, 0xa000000

    .line 892
    .line 893
    goto :goto_18

    .line 894
    :cond_16
    const/high16 p1, 0x8000000

    .line 895
    .line 896
    :goto_18
    new-instance v1, Landroid/content/Intent;

    .line 897
    .line 898
    const-string v2, "com.yunpan.appmanage.action.ACTION_DELIVER_PI_EVENT"

    .line 899
    .line 900
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    iget-object v2, p0, Lma/i;->b:Landroid/content/Context;

    .line 904
    .line 905
    invoke-static {v2, v0, v1, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 906
    .line 907
    .line 908
    move-result-object p1

    .line 909
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 910
    .line 911
    .line 912
    move-result-object p1

    .line 913
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_7
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    .line 914
    .line 915
    .line 916
    :try_start_29
    iget-object p1, p0, Lma/i;->g:Ljava/util/concurrent/Semaphore;

    .line 917
    .line 918
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_7
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    .line 919
    .line 920
    .line 921
    :try_start_2a
    const-string p1, ""

    .line 922
    .line 923
    iput-object p1, p0, Lma/i;->i:Ljava/lang/String;

    .line 924
    .line 925
    iget-object p1, p0, Lma/i;->a:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_7
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    .line 926
    .line 927
    :try_start_2b
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 928
    .line 929
    .line 930
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    .line 931
    return-object p1

    .line 932
    :catch_a
    :try_start_2c
    const-string p1, "\u5b89\u88c5\u7ebf\u7a0b\u4e2d\u65ad"
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_7
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    .line 933
    .line 934
    :try_start_2d
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 935
    .line 936
    .line 937
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    .line 938
    return-object p1

    .line 939
    :goto_19
    :try_start_2e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 940
    .line 941
    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    .line 943
    .line 944
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    .line 946
    .line 947
    const-string v1, "\u5b89\u88c5\u5931\u8d25\uff1a"

    .line 948
    .line 949
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object p1

    .line 956
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object p1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    .line 963
    if-eqz v6, :cond_17

    .line 964
    .line 965
    :try_start_2f
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 966
    .line 967
    .line 968
    :cond_17
    monitor-exit p0

    .line 969
    return-object p1

    .line 970
    :goto_1a
    if-eqz v6, :cond_18

    .line 971
    .line 972
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 973
    .line 974
    .line 975
    :cond_18
    throw p1

    .line 976
    :catch_b
    const-string p1, "\u89e3\u538b\u5931\u8d25"

    .line 977
    .line 978
    monitor-exit p0

    .line 979
    return-object p1

    .line 980
    :goto_1b
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    .line 981
    goto :goto_1d

    .line 982
    :goto_1c
    throw p1

    .line 983
    :goto_1d
    goto :goto_1c
.end method
