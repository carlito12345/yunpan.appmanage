.class public final Lcom/yunpan/appmanage/util/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/util/z;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/util/z;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x6

    .line 19
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/yunpan/appmanage/util/z;->c:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/yunpan/appmanage/util/z;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/yunpan/appmanage/util/z;->e:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/yunpan/appmanage/util/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/yunpan/appmanage/util/z;->g:Ljava/io/File;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/yunpan/appmanage/util/z;->g:Ljava/io/File;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->deleteDir(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 27
    .line 28
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 29
    .line 30
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/k;->w:Z

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 78
    .line 79
    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x1

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 91
    .line 92
    iput-boolean v3, v2, Lcom/yunpan/appmanage/util/k;->d0:Z

    .line 93
    .line 94
    iput-boolean v0, v2, Lcom/yunpan/appmanage/util/k;->e0:Z

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 98
    .line 99
    iput-boolean v0, v2, Lcom/yunpan/appmanage/util/k;->d0:Z

    .line 100
    .line 101
    iput-boolean v3, v2, Lcom/yunpan/appmanage/util/k;->e0:Z

    .line 102
    .line 103
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/yunpan/appmanage/util/z;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 109
    .line 110
    .line 111
    new-instance v3, Ly7/b;

    .line 112
    .line 113
    const/4 v4, 0x5

    .line 114
    invoke-direct {v3, v4, p0, v1, v0}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 115
    .line 116
    .line 117
    iget-object v4, p0, Lcom/yunpan/appmanage/util/z;->c:Ljava/util/concurrent/ExecutorService;

    .line 118
    .line 119
    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    const-wide/16 v5, 0xc8

    .line 127
    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catch_0
    nop

    .line 135
    goto :goto_1

    .line 136
    :cond_5
    iget-object v2, p0, Lcom/yunpan/appmanage/util/z;->b:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iget-object v7, p0, Lcom/yunpan/appmanage/util/z;->e:Ljava/util/concurrent/ExecutorService;

    .line 143
    .line 144
    iget-object v8, p0, Lcom/yunpan/appmanage/util/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 145
    .line 146
    if-nez v3, :cond_6

    .line 147
    .line 148
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 149
    .line 150
    .line 151
    new-instance v3, Ly7/b;

    .line 152
    .line 153
    const/4 v9, 0x4

    .line 154
    invoke-direct {v3, v9, p0, v2, v0}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v7, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    :goto_2
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_7

    .line 165
    .line 166
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .line 168
    .line 169
    :catch_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 170
    .line 171
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 179
    .line 180
    .line 181
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 182
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-interface {v2}, Lcom/yunpan/appmanage/db/FileInfoDao;->getCount()I

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-interface {v2}, Lcom/yunpan/appmanage/db/FileInfoDao;->getDirCount()I

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-interface {v2}, Lcom/yunpan/appmanage/db/FileInfoDao;->getFileCount()I

    .line 220
    .line 221
    .line 222
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 223
    .line 224
    .line 225
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 236
    .line 237
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_8

    .line 246
    .line 247
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 248
    .line 249
    iput-boolean v0, v1, Lcom/yunpan/appmanage/util/k;->d0:Z

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_8
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 253
    .line 254
    iput-boolean v0, v1, Lcom/yunpan/appmanage/util/k;->e0:Z

    .line 255
    .line 256
    :goto_3
    return-void
.end method
