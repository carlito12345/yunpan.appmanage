.class public final Lsf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/File;

.field public b:Lag/l;

.field public c:Z

.field public final d:Lcg/a;

.field public e:Z

.field public final f:[C

.field public g:Ljava/util/concurrent/ThreadFactory;

.field public h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/ArrayList;

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/io/File;[C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lsf/a;->i:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lsf/a;->j:Z

    .line 13
    .line 14
    iput-object p1, p0, Lsf/a;->a:Ljava/io/File;

    .line 15
    .line 16
    iput-object p2, p0, Lsf/a;->f:[C

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lsf/a;->e:Z

    .line 20
    .line 21
    new-instance p1, Lcg/a;

    .line 22
    .line 23
    invoke-direct {p1}, Lcg/a;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lsf/a;->d:Lcg/a;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final A()Ljava/io/RandomAccessFile;
    .locals 3

    .line 1
    iget-object v0, p0, Lsf/a;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ".zip.001"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Leg/c;->e(Ljava/io/File;)[Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lyf/g;

    .line 20
    .line 21
    invoke-direct {v2, v0, v1}, Lyf/g;-><init>(Ljava/io/File;[Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v2, Lyf/g;->b:[Ljava/io/File;

    .line 25
    .line 26
    array-length v0, v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lyf/g;->r(I)V

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 34
    .line 35
    const-string v2, "r"

    .line 36
    .line 37
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public final J()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lsf/a;->b:Lag/l;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lsf/a;->a:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    new-instance v0, Lag/l;

    .line 17
    .line 18
    invoke-direct {v0}, Lag/l;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lsf/a;->b:Lag/l;

    .line 22
    .line 23
    iput-object v2, v0, Lag/l;->g:Ljava/io/File;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lsf/a;->A()Ljava/io/RandomAccessFile;

    .line 33
    .line 34
    .line 35
    move-result-object v3
    :try_end_0
    .catch Lwf/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    new-instance v4, Ls4/a;

    .line 37
    .line 38
    const/16 v5, 0x9

    .line 39
    .line 40
    invoke-direct {v4, v5}, Ls4/a;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Lag/h;

    .line 44
    .line 45
    iget-boolean v6, p0, Lsf/a;->j:Z

    .line 46
    .line 47
    invoke-direct {v5, v6}, Lag/h;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v3, v5}, Ls4/a;->o(Ljava/io/RandomAccessFile;Lag/h;)Lag/l;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iput-object v4, p0, Lsf/a;->b:Lag/l;

    .line 55
    .line 56
    iput-object v2, v4, Lag/l;->g:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Lwf/a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :catch_1
    move-exception v0

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception v2

    .line 67
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception v3

    .line 72
    :try_start_4
    const-class v4, Ljava/lang/Throwable;
    :try_end_4
    .catch Lwf/a; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 73
    .line 74
    :try_start_5
    const-string v5, "addSuppressed"

    .line 75
    .line 76
    new-array v6, v1, [Ljava/lang/Class;

    .line 77
    .line 78
    aput-object v4, v6, v0

    .line 79
    .line 80
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object v3, v1, v0

    .line 87
    .line 88
    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 89
    .line 90
    .line 91
    :catch_2
    :goto_0
    :try_start_6
    throw v2
    :try_end_6
    .catch Lwf/a; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 92
    :goto_1
    new-instance v1, Lwf/a;

    .line 93
    .line 94
    invoke-direct {v1, v0}, Lwf/a;-><init>(Ljava/lang/Exception;)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :goto_2
    throw v0

    .line 99
    :cond_2
    new-instance v0, Lwf/a;

    .line 100
    .line 101
    const-string v1, "no read access for the input zip file"

    .line 102
    .line 103
    invoke-direct {v0, v1}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsf/a;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/io/InputStream;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Lm7/e;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lm7/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Leg/c;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_c

    .line 12
    .line 13
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lwf/a;

    .line 32
    .line 33
    const-string v0, "output directory is not valid"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_b

    .line 44
    .line 45
    :goto_0
    iget-object v1, p0, Lsf/a;->b:Lag/l;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lsf/a;->J()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v1, p0, Lsf/a;->b:Lag/l;

    .line 53
    .line 54
    if-eqz v1, :cond_a

    .line 55
    .line 56
    new-instance v2, Ldg/a;

    .line 57
    .line 58
    iget-boolean v3, p0, Lsf/a;->e:Z

    .line 59
    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    iget-object v3, p0, Lsf/a;->g:Ljava/util/concurrent/ThreadFactory;

    .line 63
    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iput-object v3, p0, Lsf/a;->g:Ljava/util/concurrent/ThreadFactory;

    .line 71
    .line 72
    :cond_3
    iget-object v3, p0, Lsf/a;->g:Ljava/util/concurrent/ThreadFactory;

    .line 73
    .line 74
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iput-object v3, p0, Lsf/a;->h:Ljava/util/concurrent/ExecutorService;

    .line 79
    .line 80
    :cond_4
    new-instance v3, Lcom/bumptech/glide/manager/s;

    .line 81
    .line 82
    iget-object v4, p0, Lsf/a;->h:Ljava/util/concurrent/ExecutorService;

    .line 83
    .line 84
    iget-boolean v5, p0, Lsf/a;->e:Z

    .line 85
    .line 86
    iget-object v6, p0, Lsf/a;->d:Lcg/a;

    .line 87
    .line 88
    const/4 v7, 0x4

    .line 89
    invoke-direct {v3, v7, v4, v6, v5}, Lcom/bumptech/glide/manager/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v4, p0, Lsf/a;->f:[C

    .line 93
    .line 94
    invoke-direct {v2, v1, v4, v0, v3}, Ldg/a;-><init>(Lag/l;[CLm7/e;Lcom/bumptech/glide/manager/s;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, La2/g1;

    .line 98
    .line 99
    new-instance v3, Lag/h;

    .line 100
    .line 101
    iget-boolean v4, p0, Lsf/a;->j:Z

    .line 102
    .line 103
    invoke-direct {v3, v4}, Lag/h;-><init>(Z)V

    .line 104
    .line 105
    .line 106
    const/16 v4, 0xe

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-direct {v0, v4, p1, v3, v5}, La2/g1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x2

    .line 113
    iget-object v3, v2, Ldg/a;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v3, Lcg/a;

    .line 116
    .line 117
    iget-boolean v4, v2, Ldg/a;->a:Z

    .line 118
    .line 119
    if-eqz v4, :cond_6

    .line 120
    .line 121
    iget v5, v3, Lcg/a;->a:I

    .line 122
    .line 123
    invoke-static {p1, v5}, Ld0/f;->a(II)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_5

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    new-instance p1, Lwf/a;

    .line 131
    .line 132
    const-string v0, "invalid operation - Zip4j is in busy state"

    .line 133
    .line 134
    invoke-direct {p1, v0}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_6
    :goto_1
    const-wide/16 v5, 0x0

    .line 139
    .line 140
    iput-wide v5, v3, Lcg/a;->b:J

    .line 141
    .line 142
    iput-wide v5, v3, Lcg/a;->c:J

    .line 143
    .line 144
    const/4 v7, 0x0

    .line 145
    iput v7, v3, Lcg/a;->d:I

    .line 146
    .line 147
    iput p1, v3, Lcg/a;->a:I

    .line 148
    .line 149
    if-eqz v4, :cond_9

    .line 150
    .line 151
    iget-object p1, v1, Lag/l;->b:Lag/c;

    .line 152
    .line 153
    iget-object p1, p1, Lag/c;->a:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    move-wide v7, v5

    .line 160
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_8

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lag/f;

    .line 171
    .line 172
    iget-object v4, v1, Lag/b;->p:Lag/k;

    .line 173
    .line 174
    if-eqz v4, :cond_7

    .line 175
    .line 176
    iget-wide v9, v4, Lag/k;->d:J

    .line 177
    .line 178
    cmp-long v4, v9, v5

    .line 179
    .line 180
    if-lez v4, :cond_7

    .line 181
    .line 182
    :goto_3
    add-long/2addr v7, v9

    .line 183
    goto :goto_2

    .line 184
    :cond_7
    iget-wide v9, v1, Lag/b;->i:J

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_8
    iput-wide v7, v3, Lcg/a;->b:J

    .line 188
    .line 189
    new-instance p1, Ly7/b;

    .line 190
    .line 191
    const/16 v1, 0xb

    .line 192
    .line 193
    const/4 v3, 0x0

    .line 194
    invoke-direct {p1, v1, v2, v0, v3}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 195
    .line 196
    .line 197
    iget-object v0, v2, Ldg/a;->c:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 200
    .line 201
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_9
    invoke-virtual {v2, v0, v3}, Ldg/a;->d(La2/g1;Lcg/a;)V

    .line 206
    .line 207
    .line 208
    :goto_4
    return-void

    .line 209
    :cond_a
    new-instance p1, Lwf/a;

    .line 210
    .line 211
    const-string v0, "Internal error occurred when extracting zip file"

    .line 212
    .line 213
    invoke-direct {p1, v0}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p1

    .line 217
    :cond_b
    new-instance p1, Lwf/a;

    .line 218
    .line 219
    const-string v0, "Cannot create output directories"

    .line 220
    .line 221
    invoke-direct {p1, v0}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p1

    .line 225
    :cond_c
    new-instance p1, Lwf/a;

    .line 226
    .line 227
    const-string v0, "output path is null or invalid"

    .line 228
    .line 229
    invoke-direct {p1, v0}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :goto_5
    throw p1

    .line 234
    :goto_6
    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsf/a;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
