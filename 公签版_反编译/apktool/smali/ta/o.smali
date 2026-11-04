.class public final Lta/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:[Ljava/lang/String;

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Ljava/util/regex/Pattern;

.field public E:I

.field public F:I

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Ljava/lang/String;

.field public N:Ljava/util/ArrayList;

.field public O:Ljava/util/ArrayList;

.field public P:Ljava/util/HashMap;

.field public Q:Lz7/o;

.field public R:Ljava/lang/String;

.field public S:J

.field public T:J

.field public U:J

.field public V:I

.field public final a:Lz7/s;

.field public b:Z

.field public c:Z

.field public d:Landroid/os/HandlerThread;

.field public e:Landroid/os/Handler;

.field public final f:Ll6/e;

.field public g:Ljava/lang/Process;

.field public h:Loa/b;

.field public i:Ljava/io/InputStream;

.field public j:Ljava/io/OutputStream;

.field public k:Lfg/b;

.field public final l:Ljava/util/concurrent/ArrayBlockingQueue;

.field public m:Z

.field public n:Ljava/util/HashSet;

.field public o:Z

.field public p:I

.field public q:Ljava/util/ArrayList;

.field public final r:[I

.field public s:Z

.field public t:Z

.field public u:Ljava/util/HashSet;

.field public v:Ljava/util/ArrayList;

.field public w:[Ljava/util/regex/Pattern;

.field public x:J

.field public y:[Lz7/o;

.field public z:I


# direct methods
.method public constructor <init>(Lz7/s;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lta/o;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lta/o;->c:Z

    .line 8
    .line 9
    new-instance v1, Ll6/e;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Ll6/e;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lta/o;->f:Ll6/e;

    .line 19
    .line 20
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 21
    .line 22
    const/16 v2, 0x3e8

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lta/o;->l:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 28
    .line 29
    iput-boolean v0, p0, Lta/o;->m:Z

    .line 30
    .line 31
    const/16 v1, 0x9

    .line 32
    .line 33
    new-array v1, v1, [I

    .line 34
    .line 35
    fill-array-data v1, :array_0

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lta/o;->r:[I

    .line 39
    .line 40
    iput-boolean v0, p0, Lta/o;->s:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lta/o;->t:Z

    .line 43
    .line 44
    const-wide/16 v1, 0x0

    .line 45
    .line 46
    iput-wide v1, p0, Lta/o;->x:J

    .line 47
    .line 48
    const/16 v3, 0x64

    .line 49
    .line 50
    iput v3, p0, Lta/o;->z:I

    .line 51
    .line 52
    iput-boolean v0, p0, Lta/o;->B:Z

    .line 53
    .line 54
    const-string v0, ""

    .line 55
    .line 56
    iput-object v0, p0, Lta/o;->G:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v0, p0, Lta/o;->H:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v0, p0, Lta/o;->I:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v0, p0, Lta/o;->M:Ljava/lang/String;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    iput-object v3, p0, Lta/o;->Q:Lz7/o;

    .line 66
    .line 67
    iput-object v0, p0, Lta/o;->R:Ljava/lang/String;

    .line 68
    .line 69
    iput-wide v1, p0, Lta/o;->S:J

    .line 70
    .line 71
    iput-wide v1, p0, Lta/o;->T:J

    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    iput-wide v0, p0, Lta/o;->U:J

    .line 78
    .line 79
    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lta/o;->V:I

    .line 81
    .line 82
    iput-object p1, p0, Lta/o;->a:Lz7/s;

    .line 83
    .line 84
    return-void

    .line 85
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lta/o;->m:Z

    .line 5
    .line 6
    iget-object v3, p0, Lta/o;->i:Ljava/io/InputStream;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v3

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v3, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v3, p0, Lta/o;->g:Ljava/lang/Process;

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v3, p0, Lta/o;->h:Loa/b;

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-interface {v3}, Loa/b;->destroy()V

    .line 35
    .line 36
    .line 37
    :cond_3
    iget-object v3, p0, Lta/o;->l:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 43
    .line 44
    iput-object v2, p0, Lta/o;->i:Ljava/io/InputStream;

    .line 45
    .line 46
    iput-object v2, p0, Lta/o;->g:Ljava/lang/Process;

    .line 47
    .line 48
    iput-object v2, p0, Lta/o;->h:Loa/b;

    .line 49
    .line 50
    iget-object v3, p0, Lta/o;->k:Lfg/b;

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    .line 55
    .line 56
    .line 57
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    :try_start_1
    iget-object v3, p0, Lta/o;->k:Lfg/b;

    .line 61
    .line 62
    const-wide/16 v4, 0x12c

    .line 63
    .line 64
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    .line 67
    :catch_1
    :try_start_2
    iput-object v2, p0, Lta/o;->k:Lfg/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_2
    const-wide/16 v3, 0x1f4

    .line 74
    .line 75
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lq4/a;->c()V

    .line 79
    .line 80
    .line 81
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 v4, 0x1a

    .line 84
    .line 85
    if-lt v3, v4, :cond_6

    .line 86
    .line 87
    sget-object v3, Lfa/a;->a:Lfa/b;

    .line 88
    .line 89
    iget-object v3, v3, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 90
    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    :try_start_3
    invoke-interface {v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getNewProcess()Loa/b;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iput-object v3, p0, Lta/o;->h:Loa/b;

    .line 98
    .line 99
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 100
    .line 101
    iget-object v4, p0, Lta/o;->h:Loa/b;

    .line 102
    .line 103
    invoke-interface {v4}, Loa/b;->getInputStream()Landroid/os/ParcelFileDescriptor;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 108
    .line 109
    .line 110
    iput-object v3, p0, Lta/o;->i:Ljava/io/InputStream;

    .line 111
    .line 112
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 113
    .line 114
    iget-object v4, p0, Lta/o;->h:Loa/b;

    .line 115
    .line 116
    invoke-interface {v4}, Loa/b;->getOutputStream()Landroid/os/ParcelFileDescriptor;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 121
    .line 122
    .line 123
    iput-object v3, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 124
    .line 125
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const-string v3, "exec 2>&1"

    .line 131
    .line 132
    invoke-virtual {p0, v3}, Lta/o;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :catch_2
    move-exception v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lta/o;->h:Loa/b;

    .line 141
    .line 142
    if-eqz v3, :cond_5

    .line 143
    .line 144
    invoke-interface {v3}, Loa/b;->destroy()V

    .line 145
    .line 146
    .line 147
    :cond_5
    iput-object v2, p0, Lta/o;->h:Loa/b;

    .line 148
    .line 149
    iget-object v3, p0, Lta/o;->i:Ljava/io/InputStream;

    .line 150
    .line 151
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 152
    .line 153
    .line 154
    iget-object v3, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 155
    .line 156
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 157
    .line 158
    .line 159
    iput-object v2, p0, Lta/o;->i:Ljava/io/InputStream;

    .line 160
    .line 161
    iput-object v2, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 162
    .line 163
    iput-object v2, p0, Lta/o;->g:Ljava/lang/Process;

    .line 164
    .line 165
    :cond_6
    :goto_3
    iget-object v2, p0, Lta/o;->h:Loa/b;

    .line 166
    .line 167
    if-nez v2, :cond_7

    .line 168
    .line 169
    new-instance v2, Ljava/lang/ProcessBuilder;

    .line 170
    .line 171
    new-array v3, v1, [Ljava/lang/String;

    .line 172
    .line 173
    aput-object p1, v3, v0

    .line 174
    .line 175
    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lta/o;->g:Ljava/lang/Process;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lta/o;->i:Ljava/io/InputStream;

    .line 192
    .line 193
    iget-object p1, p0, Lta/o;->g:Ljava/lang/Process;

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iput-object p1, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 200
    .line 201
    :cond_7
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 202
    .line 203
    iget-boolean p1, p1, Lwa/u;->u:Z

    .line 204
    .line 205
    if-eqz p1, :cond_8

    .line 206
    .line 207
    const-string p1, "\u521b\u5efashell"

    .line 208
    .line 209
    invoke-static {p1}, Lwa/w;->b(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_8
    new-instance p1, Lfg/b;

    .line 213
    .line 214
    new-instance v2, Lta/n;

    .line 215
    .line 216
    invoke-direct {v2, p0, v0}, Lta/n;-><init>(Lta/o;I)V

    .line 217
    .line 218
    .line 219
    invoke-direct {p1, v2, v1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 220
    .line 221
    .line 222
    iput-object p1, p0, Lta/o;->k:Lfg/b;

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 17
    .line 18
    const/16 v0, 0xa

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final c()V
    .locals 13

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "\u521d\u59cb\u5316\u65e5\u5fd7\u914d\u7f6e"

    .line 8
    .line 9
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lta/o;->n:Ljava/util/HashSet;

    .line 18
    .line 19
    const/16 v0, 0xc8

    .line 20
    .line 21
    iput v0, p0, Lta/o;->p:I

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lta/o;->q:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v1, p0, Lta/o;->a:Lz7/s;

    .line 31
    .line 32
    const-string v2, "keys"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const/4 v7, 0x1

    .line 51
    if-eqz v6, :cond_16

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lz7/p;

    .line 58
    .line 59
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;

    .line 60
    .line 61
    invoke-direct {v8}, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;-><init>()V

    .line 62
    .line 63
    .line 64
    iput v5, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->index:I

    .line 65
    .line 66
    add-int/2addr v5, v7

    .line 67
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    iget-object v9, v9, Lz7/s;->a:Lb8/n;

    .line 72
    .line 73
    const-string v10, "isOpen"

    .line 74
    .line 75
    invoke-virtual {v9, v10}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_1

    .line 80
    .line 81
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v9}, Lz7/p;->b()Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    iput-boolean v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isOpen:Z

    .line 94
    .line 95
    if-nez v9, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    iget-object v9, v9, Lz7/s;->a:Lb8/n;

    .line 103
    .line 104
    const-string v10, "tag_bs"

    .line 105
    .line 106
    invoke-virtual {v9, v10}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_2

    .line 111
    .line 112
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    iput-object v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->tag_bs:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    const-string v10, "name"

    .line 132
    .line 133
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    iput-object v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->tag_bs:Ljava/lang/String;

    .line 142
    .line 143
    :goto_1
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    iget-object v9, v9, Lz7/s;->a:Lb8/n;

    .line 148
    .line 149
    const-string v10, "waitingUp"

    .line 150
    .line 151
    invoke-virtual {v9, v10}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-eqz v9, :cond_3

    .line 156
    .line 157
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    invoke-virtual {v9}, Lz7/p;->b()Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    iput-boolean v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isWaitingUp:Z

    .line 170
    .line 171
    :cond_3
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    iget-object v9, v9, Lz7/s;->a:Lb8/n;

    .line 176
    .line 177
    const-string v10, "one"

    .line 178
    .line 179
    invoke-virtual {v9, v10}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-eqz v9, :cond_4

    .line 184
    .line 185
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v9}, Lz7/p;->b()Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    iput-boolean v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isOne:Z

    .line 198
    .line 199
    :cond_4
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    iget-object v9, v9, Lz7/s;->a:Lb8/n;

    .line 204
    .line 205
    const-string v10, "OutTimeOneMap"

    .line 206
    .line 207
    invoke-virtual {v9, v10}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-eqz v9, :cond_5

    .line 212
    .line 213
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    mul-int/lit16 v9, v9, 0x3e8

    .line 226
    .line 227
    iput v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->OutTimeOneMap:I

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_5
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    iget-object v9, v9, Lz7/s;->a:Lb8/n;

    .line 235
    .line 236
    const-string v10, "isOutTimeOneMap"

    .line 237
    .line 238
    invoke-virtual {v9, v10}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-eqz v9, :cond_6

    .line 243
    .line 244
    const/16 v9, 0x7d0

    .line 245
    .line 246
    iput v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->OutTimeOneMap:I

    .line 247
    .line 248
    :cond_6
    :goto_2
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    iget-object v9, v9, Lz7/s;->a:Lb8/n;

    .line 253
    .line 254
    const-string v10, "isConsistent"

    .line 255
    .line 256
    invoke-virtual {v9, v10}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    if-eqz v9, :cond_7

    .line 261
    .line 262
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-virtual {v9}, Lz7/p;->b()Z

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    iput-boolean v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isConsistent:Z

    .line 275
    .line 276
    :cond_7
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    const-string v10, "downLogcat"

    .line 281
    .line 282
    invoke-virtual {v9, v10}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    new-instance v10, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .line 290
    .line 291
    iput-object v10, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->downLogcat:Ljava/util/List;

    .line 292
    .line 293
    const/4 v10, 0x0

    .line 294
    :goto_3
    iget-object v11, v9, Lz7/o;->a:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    if-ge v10, v11, :cond_8

    .line 301
    .line 302
    iget-object v11, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->downLogcat:Ljava/util/List;

    .line 303
    .line 304
    invoke-virtual {v9, v10}, Lz7/o;->l(I)Lz7/p;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    invoke-virtual {v12}, Lz7/p;->i()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v12

    .line 312
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    add-int/lit8 v10, v10, 0x1

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_8
    iget-object v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->downLogcat:Ljava/util/List;

    .line 319
    .line 320
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v9

    .line 324
    if-nez v9, :cond_b

    .line 325
    .line 326
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    const-string v10, "downLogcatBegin"

    .line 331
    .line 332
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    if-nez v10, :cond_9

    .line 345
    .line 346
    iget-object v10, p0, Lta/o;->n:Ljava/util/HashSet;

    .line 347
    .line 348
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    iget-object v10, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->downLogcat:Ljava/util/List;

    .line 356
    .line 357
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 362
    .line 363
    .line 364
    move-result v11

    .line 365
    if-eqz v11, :cond_a

    .line 366
    .line 367
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    check-cast v11, Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 374
    .line 375
    .line 376
    move-result v11

    .line 377
    add-int/2addr v9, v11

    .line 378
    goto :goto_4

    .line 379
    :cond_a
    iget v10, p0, Lta/o;->p:I

    .line 380
    .line 381
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    .line 382
    .line 383
    .line 384
    move-result v9

    .line 385
    iput v9, p0, Lta/o;->p:I

    .line 386
    .line 387
    :cond_b
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    const-string v10, "longClick"

    .line 392
    .line 393
    invoke-virtual {v9, v10}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    iget-object v9, v9, Lz7/o;->a:Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 400
    .line 401
    .line 402
    move-result v9

    .line 403
    if-nez v9, :cond_f

    .line 404
    .line 405
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    const-string v10, "upLogcat"

    .line 410
    .line 411
    invoke-virtual {v9, v10}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    new-instance v10, Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .line 419
    .line 420
    iput-object v10, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->upLogcat:Ljava/util/List;

    .line 421
    .line 422
    const/4 v10, 0x0

    .line 423
    :goto_5
    iget-object v11, v9, Lz7/o;->a:Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 426
    .line 427
    .line 428
    move-result v11

    .line 429
    if-ge v10, v11, :cond_c

    .line 430
    .line 431
    iget-object v11, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->upLogcat:Ljava/util/List;

    .line 432
    .line 433
    invoke-virtual {v9, v10}, Lz7/o;->l(I)Lz7/p;

    .line 434
    .line 435
    .line 436
    move-result-object v12

    .line 437
    invoke-virtual {v12}, Lz7/p;->i()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v12

    .line 441
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    add-int/lit8 v10, v10, 0x1

    .line 445
    .line 446
    goto :goto_5

    .line 447
    :cond_c
    iget-object v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->upLogcat:Ljava/util/List;

    .line 448
    .line 449
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    if-nez v9, :cond_f

    .line 454
    .line 455
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 456
    .line 457
    .line 458
    move-result-object v9

    .line 459
    const-string v10, "upLogcatBegin"

    .line 460
    .line 461
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 462
    .line 463
    .line 464
    move-result-object v9

    .line 465
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v9

    .line 469
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v10

    .line 473
    if-nez v10, :cond_d

    .line 474
    .line 475
    iget-object v10, p0, Lta/o;->n:Ljava/util/HashSet;

    .line 476
    .line 477
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    :cond_d
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    iget-object v10, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->upLogcat:Ljava/util/List;

    .line 485
    .line 486
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 487
    .line 488
    .line 489
    move-result-object v10

    .line 490
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 491
    .line 492
    .line 493
    move-result v11

    .line 494
    if-eqz v11, :cond_e

    .line 495
    .line 496
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v11

    .line 500
    check-cast v11, Ljava/lang/String;

    .line 501
    .line 502
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 503
    .line 504
    .line 505
    move-result v11

    .line 506
    add-int/2addr v9, v11

    .line 507
    goto :goto_6

    .line 508
    :cond_e
    iget v10, p0, Lta/o;->p:I

    .line 509
    .line 510
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    .line 511
    .line 512
    .line 513
    move-result v9

    .line 514
    iput v9, p0, Lta/o;->p:I

    .line 515
    .line 516
    :cond_f
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 517
    .line 518
    .line 519
    move-result-object v9

    .line 520
    const-string v10, "zhClick"

    .line 521
    .line 522
    invoke-virtual {v9, v10}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 523
    .line 524
    .line 525
    move-result-object v9

    .line 526
    iget-object v9, v9, Lz7/o;->a:Ljava/util/ArrayList;

    .line 527
    .line 528
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-nez v9, :cond_13

    .line 533
    .line 534
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 535
    .line 536
    .line 537
    move-result-object v9

    .line 538
    const-string v10, "zhLogcat"

    .line 539
    .line 540
    invoke-virtual {v9, v10}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    new-instance v10, Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .line 548
    .line 549
    iput-object v10, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->zhLogcat:Ljava/util/List;

    .line 550
    .line 551
    const/4 v10, 0x0

    .line 552
    :goto_7
    iget-object v11, v9, Lz7/o;->a:Ljava/util/ArrayList;

    .line 553
    .line 554
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 555
    .line 556
    .line 557
    move-result v11

    .line 558
    if-ge v10, v11, :cond_10

    .line 559
    .line 560
    iget-object v11, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->zhLogcat:Ljava/util/List;

    .line 561
    .line 562
    invoke-virtual {v9, v10}, Lz7/o;->l(I)Lz7/p;

    .line 563
    .line 564
    .line 565
    move-result-object v12

    .line 566
    invoke-virtual {v12}, Lz7/p;->i()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v12

    .line 570
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    add-int/lit8 v10, v10, 0x1

    .line 574
    .line 575
    goto :goto_7

    .line 576
    :cond_10
    iget-object v9, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->zhLogcat:Ljava/util/List;

    .line 577
    .line 578
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 579
    .line 580
    .line 581
    move-result v9

    .line 582
    if-nez v9, :cond_13

    .line 583
    .line 584
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 585
    .line 586
    .line 587
    move-result-object v9

    .line 588
    const-string v10, "zhLogcatBegin"

    .line 589
    .line 590
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 591
    .line 592
    .line 593
    move-result-object v9

    .line 594
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v9

    .line 598
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 599
    .line 600
    .line 601
    move-result v10

    .line 602
    if-nez v10, :cond_11

    .line 603
    .line 604
    iget-object v10, p0, Lta/o;->n:Ljava/util/HashSet;

    .line 605
    .line 606
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    :cond_11
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 610
    .line 611
    .line 612
    move-result v9

    .line 613
    iget-object v10, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->zhLogcat:Ljava/util/List;

    .line 614
    .line 615
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 616
    .line 617
    .line 618
    move-result-object v10

    .line 619
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 620
    .line 621
    .line 622
    move-result v11

    .line 623
    if-eqz v11, :cond_12

    .line 624
    .line 625
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v11

    .line 629
    check-cast v11, Ljava/lang/String;

    .line 630
    .line 631
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 632
    .line 633
    .line 634
    move-result v11

    .line 635
    add-int/2addr v9, v11

    .line 636
    goto :goto_8

    .line 637
    :cond_12
    iget v10, p0, Lta/o;->p:I

    .line 638
    .line 639
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    .line 640
    .line 641
    .line 642
    move-result v9

    .line 643
    iput v9, p0, Lta/o;->p:I

    .line 644
    .line 645
    :cond_13
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 646
    .line 647
    .line 648
    move-result-object v9

    .line 649
    const-string v10, "click"

    .line 650
    .line 651
    invoke-virtual {v9, v10}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 652
    .line 653
    .line 654
    move-result-object v9

    .line 655
    iget-object v9, v9, Lz7/o;->a:Ljava/util/ArrayList;

    .line 656
    .line 657
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 658
    .line 659
    .line 660
    move-result v9

    .line 661
    if-nez v9, :cond_14

    .line 662
    .line 663
    iput-boolean v7, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isHaveClick:Z

    .line 664
    .line 665
    :cond_14
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 666
    .line 667
    .line 668
    move-result-object v6

    .line 669
    const-string v9, "doubleClick"

    .line 670
    .line 671
    invoke-virtual {v6, v9}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 672
    .line 673
    .line 674
    move-result-object v6

    .line 675
    iget-object v6, v6, Lz7/o;->a:Ljava/util/ArrayList;

    .line 676
    .line 677
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 678
    .line 679
    .line 680
    move-result v6

    .line 681
    if-nez v6, :cond_15

    .line 682
    .line 683
    iput-boolean v7, v8, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isHaveDoubleClick:Z

    .line 684
    .line 685
    :cond_15
    iget-object v6, p0, Lta/o;->q:Ljava/util/ArrayList;

    .line 686
    .line 687
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    goto/16 :goto_0

    .line 691
    .line 692
    :cond_16
    iput-boolean v4, p0, Lta/o;->o:Z

    .line 693
    .line 694
    :try_start_0
    iget-object v3, p0, Lta/o;->n:Ljava/util/HashSet;

    .line 695
    .line 696
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 697
    .line 698
    .line 699
    move-result v3

    .line 700
    if-nez v3, :cond_17

    .line 701
    .line 702
    iget-object v3, p0, Lta/o;->n:Ljava/util/HashSet;

    .line 703
    .line 704
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    check-cast v3, Ljava/lang/String;

    .line 713
    .line 714
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    const/16 v5, 0x20

    .line 719
    .line 720
    if-ne v3, v5, :cond_17

    .line 721
    .line 722
    iput-boolean v7, p0, Lta/o;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .line 724
    goto :goto_9

    .line 725
    :catch_0
    nop

    .line 726
    :cond_17
    :goto_9
    iget v3, p0, Lta/o;->p:I

    .line 727
    .line 728
    if-ne v3, v0, :cond_18

    .line 729
    .line 730
    const/16 v0, 0xa

    .line 731
    .line 732
    iput v0, p0, Lta/o;->p:I

    .line 733
    .line 734
    :cond_18
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    iget-object v0, v0, Lwa/s;->n:Ljava/util/HashSet;

    .line 739
    .line 740
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    if-nez v0, :cond_1b

    .line 745
    .line 746
    iget-object v0, p0, Lta/o;->q:Ljava/util/ArrayList;

    .line 747
    .line 748
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 749
    .line 750
    .line 751
    move-result v0

    .line 752
    sub-int/2addr v0, v7

    .line 753
    :goto_a
    if-ltz v0, :cond_1b

    .line 754
    .line 755
    iget-object v3, p0, Lta/o;->q:Ljava/util/ArrayList;

    .line 756
    .line 757
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;

    .line 762
    .line 763
    iget-boolean v3, v3, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isOne:Z

    .line 764
    .line 765
    if-eqz v3, :cond_1a

    .line 766
    .line 767
    new-instance v3, Ljava/lang/StringBuffer;

    .line 768
    .line 769
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 770
    .line 771
    .line 772
    iget-object v5, p0, Lta/o;->q:Ljava/util/ArrayList;

    .line 773
    .line 774
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v5

    .line 778
    check-cast v5, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;

    .line 779
    .line 780
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->downLogcat:Ljava/util/List;

    .line 781
    .line 782
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 783
    .line 784
    .line 785
    move-result-object v5

    .line 786
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 787
    .line 788
    .line 789
    move-result v6

    .line 790
    if-eqz v6, :cond_19

    .line 791
    .line 792
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v6

    .line 796
    check-cast v6, Ljava/lang/String;

    .line 797
    .line 798
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    .line 800
    .line 801
    goto :goto_b

    .line 802
    :cond_19
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 803
    .line 804
    .line 805
    move-result-object v5

    .line 806
    iget-object v5, v5, Lwa/s;->n:Ljava/util/HashSet;

    .line 807
    .line 808
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v3

    .line 816
    if-eqz v3, :cond_1a

    .line 817
    .line 818
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 819
    .line 820
    .line 821
    move-result-object v3

    .line 822
    invoke-virtual {v3, v0}, Lz7/o;->n(I)V

    .line 823
    .line 824
    .line 825
    iget-object v3, p0, Lta/o;->q:Ljava/util/ArrayList;

    .line 826
    .line 827
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    .line 831
    .line 832
    goto :goto_a

    .line 833
    :cond_1b
    :try_start_1
    invoke-virtual {p0}, Lta/o;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 834
    .line 835
    .line 836
    goto :goto_c

    .line 837
    :catch_1
    iput-boolean v4, p0, Lta/o;->s:Z

    .line 838
    .line 839
    const-string v0, "\u89e3\u6790\u65e5\u5fd7\u6620\u5c04\u7684\u8f66\u95e8\u914d\u7f6e\u51fa\u9519"

    .line 840
    .line 841
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 842
    .line 843
    .line 844
    :goto_c
    :try_start_2
    invoke-virtual {p0}, Lta/o;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 845
    .line 846
    .line 847
    goto :goto_d

    .line 848
    :catch_2
    iput-boolean v4, p0, Lta/o;->B:Z

    .line 849
    .line 850
    const-string v0, "\u89e3\u6790\u65e5\u5fd7\u6620\u5c04\u7684\u8bed\u97f3\u914d\u7f6e\u51fa\u9519"

    .line 851
    .line 852
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 853
    .line 854
    .line 855
    :goto_d
    iget-boolean v0, p0, Lta/o;->o:Z

    .line 856
    .line 857
    if-eqz v0, :cond_1c

    .line 858
    .line 859
    iget v0, p0, Lta/o;->p:I

    .line 860
    .line 861
    add-int/lit8 v0, v0, 0x14

    .line 862
    .line 863
    iput v0, p0, Lta/o;->p:I

    .line 864
    .line 865
    goto :goto_e

    .line 866
    :cond_1c
    iget v0, p0, Lta/o;->p:I

    .line 867
    .line 868
    add-int/2addr v0, v7

    .line 869
    iput v0, p0, Lta/o;->p:I

    .line 870
    .line 871
    :goto_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 872
    .line 873
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 874
    .line 875
    .line 876
    return-void
.end method

.method public final d()V
    .locals 15

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, p0, Lta/o;->a:Lz7/s;

    .line 6
    .line 7
    iget-object v5, v4, Lz7/s;->a:Lb8/n;

    .line 8
    .line 9
    const-string v6, "door"

    .line 10
    .line 11
    invoke-virtual {v5, v6}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-nez v5, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v4, v6}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "isOpen"

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    iput-boolean v6, p0, Lta/o;->s:Z

    .line 33
    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const-string v6, "isOneLog"

    .line 38
    .line 39
    invoke-virtual {v4, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    iput-boolean v6, p0, Lta/o;->t:Z

    .line 48
    .line 49
    iget-object v6, v4, Lz7/s;->a:Lb8/n;

    .line 50
    .line 51
    const-string v7, "valueDef"

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string v9, "valueClose"

    .line 58
    .line 59
    const-string v10, "valueOpen"

    .line 60
    .line 61
    if-nez v8, :cond_2

    .line 62
    .line 63
    const-string v8, "0"

    .line 64
    .line 65
    invoke-virtual {v4, v7, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v11, "1"

    .line 69
    .line 70
    invoke-virtual {v4, v10, v11}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v9, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {v4, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v7}, Lz7/p;->i()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v4, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v4, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    new-array v10, v2, [Ljava/lang/String;

    .line 125
    .line 126
    aput-object v7, v10, v1

    .line 127
    .line 128
    aput-object v8, v10, v3

    .line 129
    .line 130
    aput-object v9, v10, v0

    .line 131
    .line 132
    iput-object v10, p0, Lta/o;->A:[Ljava/lang/String;

    .line 133
    .line 134
    const/16 v7, 0x13

    .line 135
    .line 136
    new-array v7, v7, [Lz7/o;

    .line 137
    .line 138
    iput-object v7, p0, Lta/o;->y:[Lz7/o;

    .line 139
    .line 140
    const-string v7, "maps"

    .line 141
    .line 142
    invoke-virtual {v4, v7}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    iget-object v9, v8, Lz7/o;->a:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    const/16 v10, 0xa

    .line 153
    .line 154
    if-ge v9, v10, :cond_3

    .line 155
    .line 156
    new-instance v9, Lz7/s;

    .line 157
    .line 158
    invoke-direct {v9}, Lz7/s;-><init>()V

    .line 159
    .line 160
    .line 161
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-virtual {v9, v5, v10}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v9}, Lz7/o;->k(Lz7/p;)V

    .line 167
    .line 168
    .line 169
    new-instance v9, Lz7/s;

    .line 170
    .line 171
    invoke-direct {v9}, Lz7/s;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v5, v10}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v9}, Lz7/o;->k(Lz7/p;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    iget-object v9, v8, Lz7/o;->a:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    const/16 v11, 0xd

    .line 187
    .line 188
    if-ge v10, v11, :cond_4

    .line 189
    .line 190
    new-instance v10, Lz7/s;

    .line 191
    .line 192
    invoke-direct {v10}, Lz7/s;-><init>()V

    .line 193
    .line 194
    .line 195
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 196
    .line 197
    invoke-virtual {v10, v5, v11}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v10}, Lz7/o;->k(Lz7/p;)V

    .line 201
    .line 202
    .line 203
    new-instance v10, Lz7/s;

    .line 204
    .line 205
    invoke-direct {v10}, Lz7/s;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10, v5, v11}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v10}, Lz7/o;->k(Lz7/p;)V

    .line 212
    .line 213
    .line 214
    new-instance v10, Lz7/s;

    .line 215
    .line 216
    invoke-direct {v10}, Lz7/s;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v5, v11}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8, v10}, Lz7/o;->k(Lz7/p;)V

    .line 223
    .line 224
    .line 225
    new-instance v10, Lz7/s;

    .line 226
    .line 227
    invoke-direct {v10}, Lz7/s;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10, v5, v11}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v10}, Lz7/o;->k(Lz7/p;)V

    .line 234
    .line 235
    .line 236
    new-instance v10, Lz7/s;

    .line 237
    .line 238
    invoke-direct {v10}, Lz7/s;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v10, v5, v11}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8, v10}, Lz7/o;->k(Lz7/p;)V

    .line 245
    .line 246
    .line 247
    new-instance v10, Lz7/s;

    .line 248
    .line 249
    invoke-direct {v10}, Lz7/s;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10, v5, v11}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8, v10}, Lz7/o;->k(Lz7/p;)V

    .line 256
    .line 257
    .line 258
    new-instance v10, Lz7/s;

    .line 259
    .line 260
    invoke-direct {v10}, Lz7/s;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v10, v5, v11}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v8, v10}, Lz7/o;->k(Lz7/p;)V

    .line 267
    .line 268
    .line 269
    new-instance v10, Lz7/s;

    .line 270
    .line 271
    invoke-direct {v10}, Lz7/s;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v10, v5, v11}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v8, v10}, Lz7/o;->k(Lz7/p;)V

    .line 278
    .line 279
    .line 280
    :cond_4
    const/4 v10, 0x0

    .line 281
    const/4 v11, 0x0

    .line 282
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v12

    .line 286
    const/4 v13, 0x0

    .line 287
    if-ge v10, v12, :cond_7

    .line 288
    .line 289
    invoke-virtual {v8, v10}, Lz7/o;->l(I)Lz7/p;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    invoke-virtual {v12}, Lz7/p;->g()Lz7/s;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    invoke-virtual {v12, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    invoke-virtual {v12}, Lz7/p;->b()Z

    .line 302
    .line 303
    .line 304
    move-result v12

    .line 305
    if-eqz v12, :cond_6

    .line 306
    .line 307
    invoke-virtual {v8, v10}, Lz7/o;->l(I)Lz7/p;

    .line 308
    .line 309
    .line 310
    move-result-object v12

    .line 311
    invoke-virtual {v12}, Lz7/p;->g()Lz7/s;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    iget-object v12, v12, Lz7/s;->a:Lb8/n;

    .line 316
    .line 317
    invoke-virtual {v12, v7}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v12

    .line 321
    if-eqz v12, :cond_6

    .line 322
    .line 323
    iget-object v12, p0, Lta/o;->y:[Lz7/o;

    .line 324
    .line 325
    invoke-virtual {v8, v10}, Lz7/o;->l(I)Lz7/p;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    invoke-virtual {v14}, Lz7/p;->g()Lz7/s;

    .line 330
    .line 331
    .line 332
    move-result-object v14

    .line 333
    invoke-virtual {v14, v7}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 334
    .line 335
    .line 336
    move-result-object v14

    .line 337
    aput-object v14, v12, v10

    .line 338
    .line 339
    iget-object v12, p0, Lta/o;->y:[Lz7/o;

    .line 340
    .line 341
    aget-object v12, v12, v10

    .line 342
    .line 343
    iget-object v12, v12, Lz7/o;->a:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v12

    .line 349
    if-eqz v12, :cond_5

    .line 350
    .line 351
    iget-object v12, p0, Lta/o;->y:[Lz7/o;

    .line 352
    .line 353
    aput-object v13, v12, v10

    .line 354
    .line 355
    goto :goto_1

    .line 356
    :cond_5
    add-int/2addr v11, v3

    .line 357
    goto :goto_1

    .line 358
    :cond_6
    iget-object v12, p0, Lta/o;->y:[Lz7/o;

    .line 359
    .line 360
    aput-object v13, v12, v10

    .line 361
    .line 362
    :goto_1
    add-int/2addr v10, v3

    .line 363
    goto :goto_0

    .line 364
    :cond_7
    if-nez v11, :cond_8

    .line 365
    .line 366
    iput-boolean v1, p0, Lta/o;->s:Z

    .line 367
    .line 368
    return-void

    .line 369
    :cond_8
    new-instance v5, Ljava/util/HashSet;

    .line 370
    .line 371
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 372
    .line 373
    .line 374
    iput-object v5, p0, Lta/o;->u:Ljava/util/HashSet;

    .line 375
    .line 376
    new-instance v5, Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .line 380
    .line 381
    iput-object v5, p0, Lta/o;->v:Ljava/util/ArrayList;

    .line 382
    .line 383
    const/4 v5, 0x5

    .line 384
    new-array v7, v5, [Ljava/util/regex/Pattern;

    .line 385
    .line 386
    iput-object v7, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 387
    .line 388
    iget-boolean v7, p0, Lta/o;->t:Z

    .line 389
    .line 390
    const-string v8, "log1"

    .line 391
    .line 392
    const-string v9, "logLength1"

    .line 393
    .line 394
    const-string v10, "tag1"

    .line 395
    .line 396
    const-string v11, "([^,]{1,7})"

    .line 397
    .line 398
    const/4 v12, -0x1

    .line 399
    if-eqz v7, :cond_11

    .line 400
    .line 401
    iget-object v0, p0, Lta/o;->u:Ljava/util/HashSet;

    .line 402
    .line 403
    invoke-virtual {v4, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    iput v0, p0, Lta/o;->z:I

    .line 423
    .line 424
    invoke-virtual {v4, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v4, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-nez v2, :cond_10

    .line 445
    .line 446
    iget v2, p0, Lta/o;->z:I

    .line 447
    .line 448
    if-lez v2, :cond_10

    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-eqz v2, :cond_9

    .line 455
    .line 456
    goto/16 :goto_4

    .line 457
    .line 458
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    .line 463
    const-string v4, "[door"

    .line 464
    .line 465
    const-string v6, "]"

    .line 466
    .line 467
    invoke-static {v0, v4, v6}, Lif/a;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 472
    .line 473
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 474
    .line 475
    .line 476
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 480
    .line 481
    .line 482
    move-result-object v7

    .line 483
    :cond_a
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    .line 485
    .line 486
    move-result v8

    .line 487
    if-eqz v8, :cond_e

    .line 488
    .line 489
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v8

    .line 493
    check-cast v8, Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 496
    .line 497
    .line 498
    move-result v9

    .line 499
    if-le v9, v5, :cond_b

    .line 500
    .line 501
    goto :goto_2

    .line 502
    :cond_b
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 503
    .line 504
    .line 505
    move-result v9

    .line 506
    if-lez v9, :cond_a

    .line 507
    .line 508
    iget-object v10, p0, Lta/o;->v:Ljava/util/ArrayList;

    .line 509
    .line 510
    sub-int/2addr v9, v3

    .line 511
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v9

    .line 515
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    new-instance v9, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v9

    .line 536
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    move-result v9

    .line 540
    if-ne v9, v12, :cond_c

    .line 541
    .line 542
    goto :goto_2

    .line 543
    :cond_c
    if-lez v9, :cond_d

    .line 544
    .line 545
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v10

    .line 549
    invoke-static {v10}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v10

    .line 553
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    goto :goto_3

    .line 557
    :catch_0
    nop

    .line 558
    goto :goto_2

    .line 559
    :cond_d
    :goto_3
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 563
    .line 564
    .line 565
    move-result v8

    .line 566
    add-int/2addr v9, v8

    .line 567
    add-int/lit8 v9, v9, 0x6

    .line 568
    .line 569
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    goto :goto_2

    .line 574
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    if-nez v3, :cond_f

    .line 579
    .line 580
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 592
    .line 593
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    iget-object v2, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 597
    .line 598
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    aput-object v0, v2, v1

    .line 603
    .line 604
    goto/16 :goto_9

    .line 605
    .line 606
    :cond_10
    :goto_4
    iput-boolean v1, p0, Lta/o;->s:Z

    .line 607
    .line 608
    return-void

    .line 609
    :cond_11
    invoke-virtual {v4, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 622
    .line 623
    .line 624
    move-result v5

    .line 625
    if-nez v5, :cond_12

    .line 626
    .line 627
    invoke-virtual {v4, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    if-lez v5, :cond_12

    .line 636
    .line 637
    invoke-virtual {v4, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 638
    .line 639
    .line 640
    move-result-object v5

    .line 641
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    const-string v7, "[door1]"

    .line 646
    .line 647
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 648
    .line 649
    .line 650
    move-result v7

    .line 651
    if-eq v7, v12, :cond_13

    .line 652
    .line 653
    new-instance v8, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v14

    .line 662
    invoke-static {v14}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v14

    .line 666
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    add-int/lit8 v7, v7, 0x7

    .line 673
    .line 674
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v5

    .line 689
    iget-object v7, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 690
    .line 691
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    aput-object v5, v7, v1

    .line 696
    .line 697
    iget-object v5, p0, Lta/o;->u:Ljava/util/HashSet;

    .line 698
    .line 699
    invoke-virtual {v4, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 700
    .line 701
    .line 702
    move-result-object v7

    .line 703
    invoke-virtual {v7}, Lz7/p;->i()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v7

    .line 707
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    invoke-virtual {v4, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 711
    .line 712
    .line 713
    move-result-object v5

    .line 714
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 715
    .line 716
    .line 717
    move-result v5

    .line 718
    iput v5, p0, Lta/o;->z:I

    .line 719
    .line 720
    goto :goto_5

    .line 721
    :cond_12
    iget-object v5, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 722
    .line 723
    aput-object v13, v5, v1

    .line 724
    .line 725
    :cond_13
    :goto_5
    const-string v5, "log2"

    .line 726
    .line 727
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 728
    .line 729
    .line 730
    move-result-object v7

    .line 731
    invoke-virtual {v7}, Lz7/p;->i()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v7

    .line 735
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 736
    .line 737
    .line 738
    move-result v7

    .line 739
    if-nez v7, :cond_14

    .line 740
    .line 741
    const-string v7, "logLength2"

    .line 742
    .line 743
    invoke-virtual {v4, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 744
    .line 745
    .line 746
    move-result-object v8

    .line 747
    invoke-virtual {v8}, Lz7/p;->e()I

    .line 748
    .line 749
    .line 750
    move-result v8

    .line 751
    if-lez v8, :cond_14

    .line 752
    .line 753
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 754
    .line 755
    .line 756
    move-result-object v5

    .line 757
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v5

    .line 761
    const-string v8, "[door2]"

    .line 762
    .line 763
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    move-result v8

    .line 767
    if-eq v8, v12, :cond_15

    .line 768
    .line 769
    new-instance v9, Ljava/lang/StringBuilder;

    .line 770
    .line 771
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v10

    .line 778
    invoke-static {v10}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v10

    .line 782
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    add-int/lit8 v8, v8, 0x7

    .line 789
    .line 790
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v5

    .line 798
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v5

    .line 805
    iget-object v8, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 806
    .line 807
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    aput-object v5, v8, v3

    .line 812
    .line 813
    iget-object v3, p0, Lta/o;->u:Ljava/util/HashSet;

    .line 814
    .line 815
    const-string v5, "tag2"

    .line 816
    .line 817
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v5

    .line 825
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    iget v3, p0, Lta/o;->z:I

    .line 829
    .line 830
    invoke-virtual {v4, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 839
    .line 840
    .line 841
    move-result v3

    .line 842
    iput v3, p0, Lta/o;->z:I

    .line 843
    .line 844
    goto :goto_6

    .line 845
    :cond_14
    iget-object v5, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 846
    .line 847
    aput-object v13, v5, v3

    .line 848
    .line 849
    :cond_15
    :goto_6
    const-string v3, "log3"

    .line 850
    .line 851
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 852
    .line 853
    .line 854
    move-result-object v5

    .line 855
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v5

    .line 859
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v5

    .line 863
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 864
    .line 865
    .line 866
    move-result v5

    .line 867
    if-nez v5, :cond_16

    .line 868
    .line 869
    const-string v5, "logLength3"

    .line 870
    .line 871
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 872
    .line 873
    .line 874
    move-result-object v7

    .line 875
    invoke-virtual {v7}, Lz7/p;->e()I

    .line 876
    .line 877
    .line 878
    move-result v7

    .line 879
    if-lez v7, :cond_16

    .line 880
    .line 881
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v3

    .line 889
    const-string v7, "[door3]"

    .line 890
    .line 891
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 892
    .line 893
    .line 894
    move-result v7

    .line 895
    if-eq v7, v12, :cond_17

    .line 896
    .line 897
    new-instance v8, Ljava/lang/StringBuilder;

    .line 898
    .line 899
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v9

    .line 906
    invoke-static {v9}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v9

    .line 910
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    add-int/lit8 v7, v7, 0x7

    .line 917
    .line 918
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v3

    .line 922
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v3

    .line 926
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    iget-object v7, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 934
    .line 935
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    aput-object v3, v7, v0

    .line 940
    .line 941
    iget-object v0, p0, Lta/o;->u:Ljava/util/HashSet;

    .line 942
    .line 943
    const-string v3, "tag3"

    .line 944
    .line 945
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 946
    .line 947
    .line 948
    move-result-object v3

    .line 949
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v3

    .line 953
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    iget v0, p0, Lta/o;->z:I

    .line 957
    .line 958
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 959
    .line 960
    .line 961
    move-result-object v3

    .line 962
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 963
    .line 964
    .line 965
    move-result v3

    .line 966
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    iput v0, p0, Lta/o;->z:I

    .line 971
    .line 972
    goto :goto_7

    .line 973
    :cond_16
    iget-object v3, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 974
    .line 975
    aput-object v13, v3, v0

    .line 976
    .line 977
    :cond_17
    :goto_7
    const-string v0, "log4"

    .line 978
    .line 979
    invoke-virtual {v4, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 980
    .line 981
    .line 982
    move-result-object v3

    .line 983
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v3

    .line 987
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 992
    .line 993
    .line 994
    move-result v3

    .line 995
    if-nez v3, :cond_18

    .line 996
    .line 997
    const-string v3, "logLength4"

    .line 998
    .line 999
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v5

    .line 1003
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 1004
    .line 1005
    .line 1006
    move-result v5

    .line 1007
    if-lez v5, :cond_18

    .line 1008
    .line 1009
    invoke-virtual {v4, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    const-string v5, "[door4]"

    .line 1018
    .line 1019
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1020
    .line 1021
    .line 1022
    move-result v5

    .line 1023
    if-eq v5, v12, :cond_19

    .line 1024
    .line 1025
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v8

    .line 1034
    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v8

    .line 1038
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    add-int/lit8 v5, v5, 0x7

    .line 1045
    .line 1046
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    iget-object v5, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 1062
    .line 1063
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    aput-object v0, v5, v2

    .line 1068
    .line 1069
    iget-object v0, p0, Lta/o;->u:Ljava/util/HashSet;

    .line 1070
    .line 1071
    const-string v2, "tag4"

    .line 1072
    .line 1073
    invoke-virtual {v4, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v2

    .line 1077
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v2

    .line 1081
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    iget v0, p0, Lta/o;->z:I

    .line 1085
    .line 1086
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v2

    .line 1090
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 1091
    .line 1092
    .line 1093
    move-result v2

    .line 1094
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 1095
    .line 1096
    .line 1097
    move-result v0

    .line 1098
    iput v0, p0, Lta/o;->z:I

    .line 1099
    .line 1100
    goto :goto_8

    .line 1101
    :cond_18
    iget-object v0, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 1102
    .line 1103
    aput-object v13, v0, v2

    .line 1104
    .line 1105
    :cond_19
    :goto_8
    const-string v0, "log5"

    .line 1106
    .line 1107
    invoke-virtual {v6, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 1108
    .line 1109
    .line 1110
    move-result v2

    .line 1111
    const/4 v3, 0x4

    .line 1112
    if-eqz v2, :cond_1a

    .line 1113
    .line 1114
    invoke-virtual {v4, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v2

    .line 1118
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v2

    .line 1122
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v2

    .line 1126
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1127
    .line 1128
    .line 1129
    move-result v2

    .line 1130
    if-nez v2, :cond_1a

    .line 1131
    .line 1132
    const-string v2, "logLength5"

    .line 1133
    .line 1134
    invoke-virtual {v4, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v5

    .line 1138
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 1139
    .line 1140
    .line 1141
    move-result v5

    .line 1142
    if-lez v5, :cond_1a

    .line 1143
    .line 1144
    invoke-virtual {v4, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    const-string v5, "[door5]"

    .line 1153
    .line 1154
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1155
    .line 1156
    .line 1157
    move-result v5

    .line 1158
    if-eq v5, v12, :cond_1b

    .line 1159
    .line 1160
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v1

    .line 1169
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    add-int/lit8 v5, v5, 0x7

    .line 1180
    .line 1181
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v0

    .line 1196
    iget-object v1, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 1197
    .line 1198
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    aput-object v0, v1, v3

    .line 1203
    .line 1204
    iget-object v0, p0, Lta/o;->u:Ljava/util/HashSet;

    .line 1205
    .line 1206
    const-string v1, "tag5"

    .line 1207
    .line 1208
    invoke-virtual {v4, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v1

    .line 1212
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    iget v0, p0, Lta/o;->z:I

    .line 1220
    .line 1221
    invoke-virtual {v4, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 1226
    .line 1227
    .line 1228
    move-result v1

    .line 1229
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 1230
    .line 1231
    .line 1232
    move-result v0

    .line 1233
    iput v0, p0, Lta/o;->z:I

    .line 1234
    .line 1235
    goto :goto_9

    .line 1236
    :cond_1a
    iget-object v0, p0, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 1237
    .line 1238
    aput-object v13, v0, v3

    .line 1239
    .line 1240
    :cond_1b
    :goto_9
    iget v0, p0, Lta/o;->z:I

    .line 1241
    .line 1242
    iget v1, p0, Lta/o;->p:I

    .line 1243
    .line 1244
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 1245
    .line 1246
    .line 1247
    move-result v0

    .line 1248
    iput v0, p0, Lta/o;->p:I

    .line 1249
    .line 1250
    return-void
.end method

.method public final e()V
    .locals 12

    .line 1
    iget-object v0, p0, Lta/o;->a:Lz7/s;

    .line 2
    .line 3
    iget-object v1, v0, Lz7/s;->a:Lb8/n;

    .line 4
    .line 5
    const-string v2, "voice"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0, v2}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "isOpen"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput-boolean v2, p0, Lta/o;->B:Z

    .line 29
    .line 30
    const-string v2, "tag"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Lta/o;->C:Ljava/lang/String;

    .line 41
    .line 42
    const-string v2, "log"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "mode"

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iput v3, p0, Lta/o;->E:I

    .line 63
    .line 64
    const-string v3, "mapIndex"

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iput v3, p0, Lta/o;->F:I

    .line 75
    .line 76
    iget-object v3, v0, Lz7/s;->a:Lb8/n;

    .line 77
    .line 78
    const-string v4, "nav_guidewords"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_1

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iput-object v4, p0, Lta/o;->M:Ljava/lang/String;

    .line 95
    .line 96
    :cond_1
    const-string v4, "mapAppPackage"

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    iput-object v4, p0, Lta/o;->I:Ljava/lang/String;

    .line 113
    .line 114
    :cond_2
    iget v4, p0, Lta/o;->E:I

    .line 115
    .line 116
    const/4 v5, 0x1

    .line 117
    const/4 v6, 0x0

    .line 118
    if-ne v4, v5, :cond_3

    .line 119
    .line 120
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iput-object v2, p0, Lta/o;->D:Ljava/util/regex/Pattern;

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    const-string v4, "\n"

    .line 128
    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    array-length v4, v2

    .line 134
    const/4 v7, 0x0

    .line 135
    :goto_0
    if-ge v7, v4, :cond_6

    .line 136
    .line 137
    aget-object v8, v2, v7

    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_4

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    iget-object v9, p0, Lta/o;->G:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_5

    .line 157
    .line 158
    iput-object v8, p0, Lta/o;->G:Ljava/lang/String;

    .line 159
    .line 160
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_5
    iput-object v8, p0, Lta/o;->H:Ljava/lang/String;

    .line 164
    .line 165
    :cond_6
    :goto_2
    const-string v2, "match_map"

    .line 166
    .line 167
    invoke-virtual {v3, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_7

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iput-object v2, p0, Lta/o;->Q:Lz7/o;

    .line 178
    .line 179
    iget-object v2, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_7

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    iput-object v2, p0, Lta/o;->Q:Lz7/o;

    .line 189
    .line 190
    :cond_7
    const-string v2, "isNavTo"

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    iput-boolean v2, p0, Lta/o;->J:Z

    .line 201
    .line 202
    const-string v2, "isOpenUserApp"

    .line 203
    .line 204
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    iput-boolean v2, p0, Lta/o;->K:Z

    .line 213
    .line 214
    const-string v4, ""

    .line 215
    .line 216
    const-string v7, "\\s+"

    .line 217
    .line 218
    if-eqz v2, :cond_a

    .line 219
    .line 220
    new-instance v2, Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 223
    .line 224
    .line 225
    iput-object v2, p0, Lta/o;->P:Ljava/util/HashMap;

    .line 226
    .line 227
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 228
    .line 229
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eqz v8, :cond_a

    .line 246
    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 252
    .line 253
    if-eqz v8, :cond_8

    .line 254
    .line 255
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 256
    .line 257
    if-eqz v9, :cond_8

    .line 258
    .line 259
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 260
    .line 261
    if-ne v10, v5, :cond_9

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_9
    :try_start_0
    iget-object v10, p0, Lta/o;->P:Ljava/util/HashMap;

    .line 265
    .line 266
    sget-object v11, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 267
    .line 268
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-virtual {v9, v7, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v10, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .line 296
    .line 297
    goto :goto_3

    .line 298
    :catch_0
    nop

    .line 299
    goto :goto_3

    .line 300
    :cond_a
    const-string v2, "isShowText"

    .line 301
    .line 302
    invoke-virtual {v3, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-nez v3, :cond_b

    .line 307
    .line 308
    iput-boolean v6, p0, Lta/o;->L:Z

    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_b
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    iput-boolean v2, p0, Lta/o;->L:Z

    .line 320
    .line 321
    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .line 325
    .line 326
    iput-object v2, p0, Lta/o;->N:Ljava/util/ArrayList;

    .line 327
    .line 328
    new-instance v2, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    iput-object v2, p0, Lta/o;->O:Ljava/util/ArrayList;

    .line 334
    .line 335
    const-string v2, "maps"

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-eqz v3, :cond_d

    .line 352
    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    check-cast v3, Lz7/p;

    .line 358
    .line 359
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-virtual {v5}, Lz7/p;->b()Z

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    if-nez v5, :cond_c

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_c
    iget-object v5, p0, Lta/o;->N:Ljava/util/ArrayList;

    .line 375
    .line 376
    const-string v6, "name"

    .line 377
    .line 378
    invoke-virtual {v3, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    iget-object v5, p0, Lta/o;->O:Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v3, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    goto :goto_5

    .line 411
    :cond_d
    return-void
.end method

.method public final f(Ljava/lang/String;Lmc/b;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-boolean v3, v1, Lta/o;->B:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    iget v3, v1, Lta/o;->p:I

    .line 12
    .line 13
    const/16 v4, 0xf

    .line 14
    .line 15
    if-le v3, v4, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ge v3, v4, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget v4, v1, Lta/o;->p:I

    .line 29
    .line 30
    if-ge v3, v4, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-boolean v3, v1, Lta/o;->o:Z

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x1

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/16 v6, 0x2f

    .line 44
    .line 45
    if-eq v3, v6, :cond_2

    .line 46
    .line 47
    const-string v3, "/"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-le v3, v4, :cond_2

    .line 54
    .line 55
    sub-int/2addr v3, v5

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_2
    move-object v3, v0

    .line 61
    iget-boolean v0, v1, Lta/o;->B:Z

    .line 62
    .line 63
    const-wide/16 v6, 0x3e8

    .line 64
    .line 65
    const/4 v8, -0x1

    .line 66
    const/4 v9, 0x0

    .line 67
    if-eqz v0, :cond_b

    .line 68
    .line 69
    iget-boolean v0, v1, Lta/o;->o:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, v1, Lta/o;->C:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    :goto_0
    const/4 v0, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v0, v1, Lta/o;->C:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/4 v0, 0x0

    .line 93
    :goto_1
    if-eqz v0, :cond_5

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v10

    .line 99
    iget-wide v12, v1, Lta/o;->S:J

    .line 100
    .line 101
    sub-long/2addr v10, v12

    .line 102
    cmp-long v12, v10, v6

    .line 103
    .line 104
    if-gez v12, :cond_5

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    :cond_5
    if-eqz v0, :cond_b

    .line 108
    .line 109
    :try_start_0
    iget v0, v1, Lta/o;->E:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    const-string v10, ""

    .line 112
    .line 113
    if-nez v0, :cond_7

    .line 114
    .line 115
    :try_start_1
    iget-object v0, v1, Lta/o;->H:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object v0, v1, Lta/o;->G:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eq v0, v8, :cond_8

    .line 130
    .line 131
    iget-object v11, v1, Lta/o;->G:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    add-int/2addr v0, v11

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    goto :goto_2

    .line 143
    :catch_0
    nop

    .line 144
    goto :goto_4

    .line 145
    :cond_6
    iget-object v0, v1, Lta/o;->G:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v11, v1, Lta/o;->H:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v3, v0, v11, v9}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    goto :goto_2

    .line 154
    :cond_7
    if-ne v0, v5, :cond_8

    .line 155
    .line 156
    iget-object v0, v1, Lta/o;->D:Ljava/util/regex/Pattern;

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    if-eqz v11, :cond_8

    .line 167
    .line 168
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    goto :goto_2

    .line 177
    :cond_8
    move-object v0, v10

    .line 178
    :goto_2
    iget-object v11, v1, Lta/o;->R:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_9

    .line 185
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v11

    .line 190
    iget-wide v13, v1, Lta/o;->S:J

    .line 191
    .line 192
    sub-long/2addr v11, v13

    .line 193
    const-wide/16 v13, 0xf30

    .line 194
    .line 195
    cmp-long v15, v11, v13

    .line 196
    .line 197
    if-gez v15, :cond_9

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_9
    move-object v10, v0

    .line 201
    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_b

    .line 206
    .line 207
    iput-object v10, v1, Lta/o;->R:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide v11

    .line 213
    iput-wide v11, v1, Lta/o;->S:J

    .line 214
    .line 215
    iget-boolean v0, v1, Lta/o;->L:Z

    .line 216
    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    invoke-static {v10}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_a
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    iget-object v10, v10, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 231
    .line 232
    iget-object v10, v10, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 233
    .line 234
    new-instance v11, La2/e0;

    .line 235
    .line 236
    const/16 v12, 0xb

    .line 237
    .line 238
    invoke-direct {v11, v1, v0, v2, v12}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_b
    :goto_4
    iget-boolean v0, v1, Lta/o;->s:Z

    .line 246
    .line 247
    if-eqz v0, :cond_23

    .line 248
    .line 249
    :try_start_2
    iget-object v0, v1, Lta/o;->u:Ljava/util/HashSet;

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    if-eqz v10, :cond_f

    .line 260
    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    check-cast v10, Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v11

    .line 271
    if-eqz v11, :cond_d

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_d
    iget-boolean v11, v1, Lta/o;->o:Z

    .line 275
    .line 276
    if-eqz v11, :cond_e

    .line 277
    .line 278
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    if-eqz v10, :cond_c

    .line 283
    .line 284
    :goto_6
    const/4 v0, 0x1

    .line 285
    goto :goto_7

    .line 286
    :catch_1
    move-exception v0

    .line 287
    goto/16 :goto_f

    .line 288
    .line 289
    :cond_e
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v10

    .line 293
    if-eqz v10, :cond_c

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_f
    const/4 v0, 0x0

    .line 297
    :goto_7
    if-eqz v0, :cond_23

    .line 298
    .line 299
    iget-boolean v0, v1, Lta/o;->t:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 300
    .line 301
    iget-object v10, v1, Lta/o;->r:[I

    .line 302
    .line 303
    const/4 v11, 0x3

    .line 304
    const/4 v12, 0x4

    .line 305
    if-eqz v0, :cond_16

    .line 306
    .line 307
    :try_start_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    iget-object v0, v1, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 313
    .line 314
    aget-object v0, v0, v9

    .line 315
    .line 316
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 321
    .line 322
    .line 323
    move-result v13

    .line 324
    if-eqz v13, :cond_23

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    const/4 v14, 0x1

    .line 331
    :goto_8
    if-gt v14, v13, :cond_23

    .line 332
    .line 333
    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v15

    .line 337
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v15

    .line 341
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v15

    .line 345
    iget-object v8, v1, Lta/o;->A:[Ljava/lang/String;

    .line 346
    .line 347
    aget-object v8, v8, v5

    .line 348
    .line 349
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v8

    .line 353
    iget-object v15, v1, Lta/o;->v:Ljava/util/ArrayList;

    .line 354
    .line 355
    add-int/lit8 v6, v14, -0x1

    .line 356
    .line 357
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    check-cast v6, Ljava/lang/Integer;

    .line 362
    .line 363
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 368
    .line 369
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    array-length v7, v10

    .line 373
    if-lt v6, v7, :cond_10

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_10
    aget v7, v10, v6

    .line 377
    .line 378
    if-eq v7, v8, :cond_15

    .line 379
    .line 380
    aput v8, v10, v6

    .line 381
    .line 382
    if-ne v8, v5, :cond_13

    .line 383
    .line 384
    iget-object v7, v1, Lta/o;->y:[Lz7/o;

    .line 385
    .line 386
    mul-int/lit8 v8, v6, 0x2

    .line 387
    .line 388
    add-int/2addr v8, v5

    .line 389
    aget-object v7, v7, v8

    .line 390
    .line 391
    if-nez v7, :cond_11

    .line 392
    .line 393
    goto :goto_9

    .line 394
    :cond_11
    invoke-virtual {v2, v7}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    if-ge v6, v12, :cond_15

    .line 398
    .line 399
    aget v6, v10, v9

    .line 400
    .line 401
    aget v7, v10, v5

    .line 402
    .line 403
    add-int/2addr v6, v7

    .line 404
    aget v7, v10, v4

    .line 405
    .line 406
    add-int/2addr v6, v7

    .line 407
    aget v7, v10, v11

    .line 408
    .line 409
    add-int/2addr v6, v7

    .line 410
    if-ne v6, v5, :cond_15

    .line 411
    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 413
    .line 414
    .line 415
    move-result-wide v6

    .line 416
    iget-wide v11, v1, Lta/o;->x:J

    .line 417
    .line 418
    sub-long/2addr v6, v11

    .line 419
    const-wide/16 v11, 0x3e8

    .line 420
    .line 421
    cmp-long v17, v6, v11

    .line 422
    .line 423
    if-lez v17, :cond_15

    .line 424
    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 426
    .line 427
    .line 428
    move-result-wide v6

    .line 429
    iput-wide v6, v1, Lta/o;->x:J

    .line 430
    .line 431
    iget-object v6, v1, Lta/o;->y:[Lz7/o;

    .line 432
    .line 433
    aget-object v6, v6, v9

    .line 434
    .line 435
    if-nez v6, :cond_12

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_12
    invoke-virtual {v2, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    goto :goto_9

    .line 442
    :cond_13
    iget-object v7, v1, Lta/o;->y:[Lz7/o;

    .line 443
    .line 444
    mul-int/lit8 v6, v6, 0x2

    .line 445
    .line 446
    add-int/2addr v6, v4

    .line 447
    aget-object v6, v7, v6

    .line 448
    .line 449
    if-nez v6, :cond_14

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_14
    invoke-virtual {v2, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :cond_15
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 456
    .line 457
    const-wide/16 v6, 0x3e8

    .line 458
    .line 459
    const/4 v8, -0x1

    .line 460
    const/4 v11, 0x3

    .line 461
    const/4 v12, 0x4

    .line 462
    goto/16 :goto_8

    .line 463
    .line 464
    :cond_16
    const/4 v0, 0x0

    .line 465
    :goto_a
    iget-object v6, v1, Lta/o;->w:[Ljava/util/regex/Pattern;

    .line 466
    .line 467
    array-length v7, v6

    .line 468
    if-ge v0, v7, :cond_23

    .line 469
    .line 470
    aget-object v6, v6, v0

    .line 471
    .line 472
    if-nez v6, :cond_1a

    .line 473
    .line 474
    :cond_17
    :goto_b
    const/4 v6, 0x4

    .line 475
    :cond_18
    const/4 v8, 0x3

    .line 476
    :cond_19
    const-wide/16 v13, 0x3e8

    .line 477
    .line 478
    goto/16 :goto_e

    .line 479
    .line 480
    :cond_1a
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 485
    .line 486
    .line 487
    move-result v7

    .line 488
    if-eqz v7, :cond_17

    .line 489
    .line 490
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    .line 491
    .line 492
    .line 493
    move-result v7

    .line 494
    if-nez v7, :cond_1b

    .line 495
    .line 496
    goto :goto_b

    .line 497
    :cond_1b
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 498
    .line 499
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    .line 500
    .line 501
    .line 502
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    const-string v7, "1"

    .line 518
    .line 519
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v7

    .line 523
    if-nez v7, :cond_1d

    .line 524
    .line 525
    const-string v7, "true"

    .line 526
    .line 527
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    if-eqz v6, :cond_1c

    .line 532
    .line 533
    goto :goto_c

    .line 534
    :cond_1c
    const/4 v6, 0x0

    .line 535
    goto :goto_d

    .line 536
    :cond_1d
    :goto_c
    const/4 v6, 0x1

    .line 537
    :goto_d
    aget v7, v10, v0

    .line 538
    .line 539
    if-eq v7, v6, :cond_17

    .line 540
    .line 541
    aput v6, v10, v0

    .line 542
    .line 543
    if-ne v6, v5, :cond_20

    .line 544
    .line 545
    iget-object v6, v1, Lta/o;->y:[Lz7/o;

    .line 546
    .line 547
    mul-int/lit8 v7, v0, 0x2

    .line 548
    .line 549
    add-int/2addr v7, v5

    .line 550
    aget-object v6, v6, v7

    .line 551
    .line 552
    if-nez v6, :cond_1e

    .line 553
    .line 554
    goto :goto_b

    .line 555
    :cond_1e
    invoke-virtual {v2, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    const/4 v6, 0x4

    .line 559
    if-ge v0, v6, :cond_18

    .line 560
    .line 561
    aget v7, v10, v9

    .line 562
    .line 563
    aget v11, v10, v5

    .line 564
    .line 565
    add-int/2addr v7, v11

    .line 566
    aget v11, v10, v4

    .line 567
    .line 568
    add-int/2addr v7, v11

    .line 569
    const/4 v8, 0x3

    .line 570
    aget v11, v10, v8

    .line 571
    .line 572
    add-int/2addr v7, v11

    .line 573
    if-ne v7, v5, :cond_19

    .line 574
    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 576
    .line 577
    .line 578
    move-result-wide v11

    .line 579
    iget-wide v13, v1, Lta/o;->x:J

    .line 580
    .line 581
    sub-long/2addr v11, v13

    .line 582
    const-wide/16 v13, 0x3e8

    .line 583
    .line 584
    cmp-long v7, v11, v13

    .line 585
    .line 586
    if-lez v7, :cond_22

    .line 587
    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 589
    .line 590
    .line 591
    move-result-wide v11

    .line 592
    iput-wide v11, v1, Lta/o;->x:J

    .line 593
    .line 594
    iget-object v7, v1, Lta/o;->y:[Lz7/o;

    .line 595
    .line 596
    aget-object v7, v7, v9

    .line 597
    .line 598
    if-nez v7, :cond_1f

    .line 599
    .line 600
    goto :goto_e

    .line 601
    :cond_1f
    invoke-virtual {v2, v7}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    goto :goto_e

    .line 605
    :cond_20
    const/4 v6, 0x4

    .line 606
    const/4 v8, 0x3

    .line 607
    const-wide/16 v13, 0x3e8

    .line 608
    .line 609
    iget-object v7, v1, Lta/o;->y:[Lz7/o;

    .line 610
    .line 611
    mul-int/lit8 v11, v0, 0x2

    .line 612
    .line 613
    add-int/2addr v11, v4

    .line 614
    aget-object v7, v7, v11

    .line 615
    .line 616
    if-nez v7, :cond_21

    .line 617
    .line 618
    goto :goto_e

    .line 619
    :cond_21
    invoke-virtual {v2, v7}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 620
    .line 621
    .line 622
    :cond_22
    :goto_e
    add-int/lit8 v0, v0, 0x1

    .line 623
    .line 624
    goto/16 :goto_a

    .line 625
    .line 626
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 627
    .line 628
    .line 629
    :cond_23
    iget-object v0, v1, Lta/o;->n:Ljava/util/HashSet;

    .line 630
    .line 631
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    :cond_24
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    if-eqz v4, :cond_27

    .line 640
    .line 641
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    check-cast v4, Ljava/lang/String;

    .line 646
    .line 647
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 648
    .line 649
    .line 650
    move-result v6

    .line 651
    if-eqz v6, :cond_25

    .line 652
    .line 653
    goto :goto_10

    .line 654
    :cond_25
    iget-boolean v6, v1, Lta/o;->o:Z

    .line 655
    .line 656
    if-eqz v6, :cond_26

    .line 657
    .line 658
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 659
    .line 660
    .line 661
    move-result v4

    .line 662
    if-eqz v4, :cond_24

    .line 663
    .line 664
    :goto_11
    const/4 v0, 0x1

    .line 665
    goto :goto_12

    .line 666
    :cond_26
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    if-eqz v4, :cond_24

    .line 671
    .line 672
    goto :goto_11

    .line 673
    :cond_27
    const/4 v0, 0x0

    .line 674
    :goto_12
    if-nez v0, :cond_28

    .line 675
    .line 676
    return-void

    .line 677
    :cond_28
    const-string v4, ":"

    .line 678
    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    move-result v4

    .line 683
    if-gez v4, :cond_29

    .line 684
    .line 685
    return-void

    .line 686
    :cond_29
    add-int/2addr v4, v5

    .line 687
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v3

    .line 691
    iget v4, v1, Lta/o;->V:I

    .line 692
    .line 693
    iget-object v6, v1, Lta/o;->a:Lz7/s;

    .line 694
    .line 695
    iget-object v7, v1, Lta/o;->f:Ll6/e;

    .line 696
    .line 697
    const-wide/16 v10, 0x0

    .line 698
    .line 699
    const-string v8, "keys"

    .line 700
    .line 701
    if-ltz v4, :cond_2c

    .line 702
    .line 703
    iget-object v12, v1, Lta/o;->q:Ljava/util/ArrayList;

    .line 704
    .line 705
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v4

    .line 709
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;

    .line 710
    .line 711
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->zhLogcat:Ljava/util/List;

    .line 712
    .line 713
    if-eqz v4, :cond_2c

    .line 714
    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 716
    .line 717
    .line 718
    move-result-wide v12

    .line 719
    iget-wide v14, v1, Lta/o;->U:J

    .line 720
    .line 721
    sub-long/2addr v12, v14

    .line 722
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 723
    .line 724
    iget v4, v4, Lwa/u;->r:I

    .line 725
    .line 726
    int-to-long v14, v4

    .line 727
    cmp-long v4, v12, v14

    .line 728
    .line 729
    if-gez v4, :cond_2c

    .line 730
    .line 731
    iget-object v4, v1, Lta/o;->q:Ljava/util/ArrayList;

    .line 732
    .line 733
    iget v12, v1, Lta/o;->V:I

    .line 734
    .line 735
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v4

    .line 739
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;

    .line 740
    .line 741
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->zhLogcat:Ljava/util/List;

    .line 742
    .line 743
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    :cond_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 748
    .line 749
    .line 750
    move-result v12

    .line 751
    if-eqz v12, :cond_2b

    .line 752
    .line 753
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v12

    .line 757
    check-cast v12, Ljava/lang/String;

    .line 758
    .line 759
    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 760
    .line 761
    .line 762
    move-result v12

    .line 763
    if-nez v12, :cond_2a

    .line 764
    .line 765
    const/4 v0, 0x0

    .line 766
    :cond_2b
    if-eqz v0, :cond_2c

    .line 767
    .line 768
    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v7, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v6, v8}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    iget-object v3, v1, Lta/o;->q:Ljava/util/ArrayList;

    .line 779
    .line 780
    iget v4, v1, Lta/o;->V:I

    .line 781
    .line 782
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;

    .line 787
    .line 788
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->index:I

    .line 789
    .line 790
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    const-string v3, "zhClick"

    .line 799
    .line 800
    invoke-virtual {v0, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 805
    .line 806
    .line 807
    const/4 v2, -0x1

    .line 808
    iput v2, v1, Lta/o;->V:I

    .line 809
    .line 810
    iput-wide v10, v1, Lta/o;->U:J

    .line 811
    .line 812
    return-void

    .line 813
    :cond_2c
    const/4 v0, 0x0

    .line 814
    :goto_13
    iget-object v4, v1, Lta/o;->q:Ljava/util/ArrayList;

    .line 815
    .line 816
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    if-ge v0, v4, :cond_47

    .line 821
    .line 822
    iget-object v4, v1, Lta/o;->q:Ljava/util/ArrayList;

    .line 823
    .line 824
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v4

    .line 828
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;

    .line 829
    .line 830
    iget-boolean v12, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isOpen:Z

    .line 831
    .line 832
    if-nez v12, :cond_2d

    .line 833
    .line 834
    move-wide v11, v10

    .line 835
    const/4 v4, -0x1

    .line 836
    const/4 v9, 0x1

    .line 837
    const/4 v10, 0x0

    .line 838
    goto/16 :goto_1b

    .line 839
    .line 840
    :cond_2d
    iget-object v12, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->downLogcat:Ljava/util/List;

    .line 841
    .line 842
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 843
    .line 844
    .line 845
    move-result-object v12

    .line 846
    :cond_2e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 847
    .line 848
    .line 849
    move-result v13

    .line 850
    if-eqz v13, :cond_2f

    .line 851
    .line 852
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v13

    .line 856
    check-cast v13, Ljava/lang/String;

    .line 857
    .line 858
    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 859
    .line 860
    .line 861
    move-result v13

    .line 862
    if-nez v13, :cond_2e

    .line 863
    .line 864
    const/4 v12, 0x0

    .line 865
    goto :goto_14

    .line 866
    :cond_2f
    const/4 v12, 0x1

    .line 867
    :goto_14
    if-eqz v12, :cond_30

    .line 868
    .line 869
    iget-boolean v13, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isConsistent:Z

    .line 870
    .line 871
    if-eqz v13, :cond_30

    .line 872
    .line 873
    iget-object v13, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->downLogcat:Ljava/util/List;

    .line 874
    .line 875
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v13

    .line 879
    check-cast v13, Ljava/lang/String;

    .line 880
    .line 881
    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 882
    .line 883
    .line 884
    move-result v13

    .line 885
    if-nez v13, :cond_30

    .line 886
    .line 887
    const/4 v12, 0x0

    .line 888
    :cond_30
    if-eqz v12, :cond_31

    .line 889
    .line 890
    iget v13, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->OutTimeOneMap:I

    .line 891
    .line 892
    if-lez v13, :cond_31

    .line 893
    .line 894
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 895
    .line 896
    .line 897
    move-result-object v13

    .line 898
    iget-object v13, v13, Lwa/s;->o:Ljava/util/HashMap;

    .line 899
    .line 900
    iget-object v14, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->tag_bs:Ljava/lang/String;

    .line 901
    .line 902
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v13

    .line 906
    if-eqz v13, :cond_31

    .line 907
    .line 908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 909
    .line 910
    .line 911
    move-result-wide v13

    .line 912
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 913
    .line 914
    .line 915
    move-result-object v15

    .line 916
    iget-object v15, v15, Lwa/s;->o:Ljava/util/HashMap;

    .line 917
    .line 918
    iget-object v5, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->tag_bs:Ljava/lang/String;

    .line 919
    .line 920
    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v5

    .line 924
    check-cast v5, Ljava/lang/Long;

    .line 925
    .line 926
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 927
    .line 928
    .line 929
    move-result-wide v16

    .line 930
    sub-long v13, v13, v16

    .line 931
    .line 932
    iget v5, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->OutTimeOneMap:I

    .line 933
    .line 934
    int-to-long v9, v5

    .line 935
    cmp-long v5, v13, v9

    .line 936
    .line 937
    if-gez v5, :cond_31

    .line 938
    .line 939
    goto/16 :goto_1c

    .line 940
    .line 941
    :cond_31
    if-eqz v12, :cond_32

    .line 942
    .line 943
    iget v5, v1, Lta/o;->V:I

    .line 944
    .line 945
    if-ne v5, v0, :cond_32

    .line 946
    .line 947
    iget-boolean v5, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isWaitingUp:Z

    .line 948
    .line 949
    if-eqz v5, :cond_32

    .line 950
    .line 951
    iget-object v5, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->upLogcat:Ljava/util/List;

    .line 952
    .line 953
    if-eqz v5, :cond_32

    .line 954
    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 956
    .line 957
    .line 958
    move-result-wide v9

    .line 959
    iget-wide v13, v1, Lta/o;->T:J

    .line 960
    .line 961
    sub-long/2addr v9, v13

    .line 962
    const-wide/16 v13, 0xbb8

    .line 963
    .line 964
    cmp-long v5, v9, v13

    .line 965
    .line 966
    if-gez v5, :cond_32

    .line 967
    .line 968
    goto/16 :goto_1c

    .line 969
    .line 970
    :cond_32
    const-string v5, "click"

    .line 971
    .line 972
    if-eqz v12, :cond_3d

    .line 973
    .line 974
    iget-boolean v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isWaitingUp:Z

    .line 975
    .line 976
    if-eqz v3, :cond_33

    .line 977
    .line 978
    iget v3, v1, Lta/o;->V:I

    .line 979
    .line 980
    if-eq v3, v0, :cond_33

    .line 981
    .line 982
    const-wide/16 v9, 0x0

    .line 983
    .line 984
    iput-wide v9, v1, Lta/o;->T:J

    .line 985
    .line 986
    :cond_33
    iget v3, v1, Lta/o;->V:I

    .line 987
    .line 988
    if-ne v3, v0, :cond_34

    .line 989
    .line 990
    iget-boolean v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isHaveDoubleClick:Z

    .line 991
    .line 992
    if-eqz v3, :cond_34

    .line 993
    .line 994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 995
    .line 996
    .line 997
    move-result-wide v9

    .line 998
    iget-wide v12, v1, Lta/o;->U:J

    .line 999
    .line 1000
    sub-long/2addr v9, v12

    .line 1001
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 1002
    .line 1003
    iget v3, v3, Lwa/u;->r:I

    .line 1004
    .line 1005
    int-to-long v12, v3

    .line 1006
    cmp-long v3, v9, v12

    .line 1007
    .line 1008
    if-gez v3, :cond_34

    .line 1009
    .line 1010
    const/4 v3, 0x0

    .line 1011
    invoke-virtual {v7, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    .line 1013
    .line 1014
    const/4 v3, 0x1

    .line 1015
    invoke-virtual {v7, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v6, v8}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    iget v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->index:I

    .line 1023
    .line 1024
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v0

    .line 1032
    const-string v3, "doubleClick"

    .line 1033
    .line 1034
    invoke-virtual {v0, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1039
    .line 1040
    .line 1041
    const/4 v2, -0x1

    .line 1042
    iput v2, v1, Lta/o;->V:I

    .line 1043
    .line 1044
    const-wide/16 v2, 0x0

    .line 1045
    .line 1046
    iput-wide v2, v1, Lta/o;->U:J

    .line 1047
    .line 1048
    goto/16 :goto_1c

    .line 1049
    .line 1050
    :cond_34
    iget-object v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->upLogcat:Ljava/util/List;

    .line 1051
    .line 1052
    if-eqz v3, :cond_35

    .line 1053
    .line 1054
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v3

    .line 1058
    const/4 v9, 0x1

    .line 1059
    iput v9, v3, Landroid/os/Message;->what:I

    .line 1060
    .line 1061
    new-instance v9, Lcom/yunpan/appmanage/bean/LogcatRxHandlerMsgBean;

    .line 1062
    .line 1063
    invoke-virtual {v6, v8}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v10

    .line 1067
    iget v12, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->index:I

    .line 1068
    .line 1069
    invoke-virtual {v10, v12}, Lz7/o;->l(I)Lz7/p;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v10

    .line 1073
    invoke-virtual {v10}, Lz7/p;->g()Lz7/s;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v10

    .line 1077
    const-string v12, "longClick"

    .line 1078
    .line 1079
    invoke-virtual {v10, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v10

    .line 1083
    invoke-direct {v9, v2, v10}, Lcom/yunpan/appmanage/bean/LogcatRxHandlerMsgBean;-><init>(Lec/c;Lz7/o;)V

    .line 1084
    .line 1085
    .line 1086
    iput-object v9, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1087
    .line 1088
    sget-object v9, Lwa/t;->a:Lwa/u;

    .line 1089
    .line 1090
    iget v9, v9, Lwa/u;->r:I

    .line 1091
    .line 1092
    int-to-long v9, v9

    .line 1093
    invoke-virtual {v7, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1094
    .line 1095
    .line 1096
    :cond_35
    iget-object v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->upLogcat:Ljava/util/List;

    .line 1097
    .line 1098
    if-nez v3, :cond_39

    .line 1099
    .line 1100
    iget-object v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->zhLogcat:Ljava/util/List;

    .line 1101
    .line 1102
    if-nez v3, :cond_39

    .line 1103
    .line 1104
    iget-boolean v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isHaveDoubleClick:Z

    .line 1105
    .line 1106
    if-nez v3, :cond_39

    .line 1107
    .line 1108
    iget-boolean v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isHaveClick:Z

    .line 1109
    .line 1110
    if-eqz v3, :cond_37

    .line 1111
    .line 1112
    invoke-virtual {v6, v8}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v3

    .line 1116
    iget v7, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->index:I

    .line 1117
    .line 1118
    invoke-virtual {v3, v7}, Lz7/o;->l(I)Lz7/p;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v3

    .line 1122
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v3

    .line 1126
    invoke-virtual {v3, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v3

    .line 1130
    invoke-virtual {v2, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1131
    .line 1132
    .line 1133
    iget-boolean v2, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isOne:Z

    .line 1134
    .line 1135
    if-eqz v2, :cond_38

    .line 1136
    .line 1137
    new-instance v2, Ljava/lang/StringBuffer;

    .line 1138
    .line 1139
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1140
    .line 1141
    .line 1142
    const/4 v9, 0x0

    .line 1143
    :goto_15
    iget-object v3, v1, Lta/o;->q:Ljava/util/ArrayList;

    .line 1144
    .line 1145
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v3

    .line 1149
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;

    .line 1150
    .line 1151
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->downLogcat:Ljava/util/List;

    .line 1152
    .line 1153
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1154
    .line 1155
    .line 1156
    move-result v3

    .line 1157
    if-ge v9, v3, :cond_36

    .line 1158
    .line 1159
    iget-object v3, v1, Lta/o;->q:Ljava/util/ArrayList;

    .line 1160
    .line 1161
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v3

    .line 1165
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;

    .line 1166
    .line 1167
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->downLogcat:Ljava/util/List;

    .line 1168
    .line 1169
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v3

    .line 1173
    check-cast v3, Ljava/lang/String;

    .line 1174
    .line 1175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    .line 1177
    .line 1178
    add-int/lit8 v9, v9, 0x1

    .line 1179
    .line 1180
    goto :goto_15

    .line 1181
    :cond_36
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v3

    .line 1185
    iget-object v3, v3, Lwa/s;->n:Ljava/util/HashSet;

    .line 1186
    .line 1187
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v2

    .line 1191
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    iget-object v2, v1, Lta/o;->q:Ljava/util/ArrayList;

    .line 1195
    .line 1196
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v6, v8}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    iget v2, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->index:I

    .line 1204
    .line 1205
    invoke-virtual {v0, v2}, Lz7/o;->n(I)V

    .line 1206
    .line 1207
    .line 1208
    :cond_37
    :goto_16
    const/4 v2, -0x1

    .line 1209
    goto :goto_17

    .line 1210
    :cond_38
    iget v0, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->OutTimeOneMap:I

    .line 1211
    .line 1212
    if-lez v0, :cond_37

    .line 1213
    .line 1214
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v0

    .line 1218
    iget-object v0, v0, Lwa/s;->o:Ljava/util/HashMap;

    .line 1219
    .line 1220
    iget-object v2, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->tag_bs:Ljava/lang/String;

    .line 1221
    .line 1222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1223
    .line 1224
    .line 1225
    move-result-wide v3

    .line 1226
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v3

    .line 1230
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    goto :goto_16

    .line 1234
    :goto_17
    iput v2, v1, Lta/o;->V:I

    .line 1235
    .line 1236
    const-wide/16 v2, 0x0

    .line 1237
    .line 1238
    iput-wide v2, v1, Lta/o;->U:J

    .line 1239
    .line 1240
    return-void

    .line 1241
    :cond_39
    iput v0, v1, Lta/o;->V:I

    .line 1242
    .line 1243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1244
    .line 1245
    .line 1246
    move-result-wide v9

    .line 1247
    iput-wide v9, v1, Lta/o;->U:J

    .line 1248
    .line 1249
    iget-boolean v0, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isWaitingUp:Z

    .line 1250
    .line 1251
    if-eqz v0, :cond_3a

    .line 1252
    .line 1253
    iput-wide v9, v1, Lta/o;->T:J

    .line 1254
    .line 1255
    :cond_3a
    iget-object v0, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->upLogcat:Ljava/util/List;

    .line 1256
    .line 1257
    if-eqz v0, :cond_3b

    .line 1258
    .line 1259
    return-void

    .line 1260
    :cond_3b
    iget-boolean v0, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isHaveClick:Z

    .line 1261
    .line 1262
    if-eqz v0, :cond_3c

    .line 1263
    .line 1264
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v0

    .line 1268
    const/4 v3, 0x0

    .line 1269
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1270
    .line 1271
    new-instance v3, Lcom/yunpan/appmanage/bean/LogcatRxHandlerMsgBean;

    .line 1272
    .line 1273
    invoke-virtual {v6, v8}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v6

    .line 1277
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->index:I

    .line 1278
    .line 1279
    invoke-virtual {v6, v4}, Lz7/o;->l(I)Lz7/p;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v4

    .line 1283
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v4

    .line 1287
    invoke-virtual {v4, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v4

    .line 1291
    invoke-direct {v3, v2, v4}, Lcom/yunpan/appmanage/bean/LogcatRxHandlerMsgBean;-><init>(Lec/c;Lz7/o;)V

    .line 1292
    .line 1293
    .line 1294
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1295
    .line 1296
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 1297
    .line 1298
    iget v2, v2, Lwa/u;->r:I

    .line 1299
    .line 1300
    int-to-long v2, v2

    .line 1301
    invoke-virtual {v7, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1302
    .line 1303
    .line 1304
    :cond_3c
    return-void

    .line 1305
    :cond_3d
    iget v9, v1, Lta/o;->V:I

    .line 1306
    .line 1307
    if-eq v9, v0, :cond_3f

    .line 1308
    .line 1309
    :cond_3e
    const/4 v4, -0x1

    .line 1310
    const/4 v9, 0x1

    .line 1311
    const/4 v10, 0x0

    .line 1312
    const-wide/16 v11, 0x0

    .line 1313
    .line 1314
    goto/16 :goto_1b

    .line 1315
    .line 1316
    :cond_3f
    iget-object v9, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->upLogcat:Ljava/util/List;

    .line 1317
    .line 1318
    if-eqz v9, :cond_3e

    .line 1319
    .line 1320
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v9

    .line 1324
    :cond_40
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1325
    .line 1326
    .line 1327
    move-result v10

    .line 1328
    if-eqz v10, :cond_41

    .line 1329
    .line 1330
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v10

    .line 1334
    check-cast v10, Ljava/lang/String;

    .line 1335
    .line 1336
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v10

    .line 1340
    if-nez v10, :cond_40

    .line 1341
    .line 1342
    const/4 v9, 0x0

    .line 1343
    goto :goto_18

    .line 1344
    :cond_41
    const/4 v9, 0x1

    .line 1345
    :goto_18
    if-eqz v9, :cond_3e

    .line 1346
    .line 1347
    iget-boolean v0, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isWaitingUp:Z

    .line 1348
    .line 1349
    if-eqz v0, :cond_42

    .line 1350
    .line 1351
    const-wide/16 v9, 0x0

    .line 1352
    .line 1353
    iput-wide v9, v1, Lta/o;->T:J

    .line 1354
    .line 1355
    :cond_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1356
    .line 1357
    .line 1358
    move-result-wide v9

    .line 1359
    iget-wide v12, v1, Lta/o;->U:J

    .line 1360
    .line 1361
    sub-long/2addr v9, v12

    .line 1362
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 1363
    .line 1364
    iget v3, v0, Lwa/u;->r:I

    .line 1365
    .line 1366
    int-to-long v12, v3

    .line 1367
    cmp-long v3, v9, v12

    .line 1368
    .line 1369
    if-gez v3, :cond_46

    .line 1370
    .line 1371
    const/4 v9, 0x1

    .line 1372
    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1373
    .line 1374
    .line 1375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1376
    .line 1377
    .line 1378
    move-result-wide v9

    .line 1379
    iput-wide v9, v1, Lta/o;->U:J

    .line 1380
    .line 1381
    iget-boolean v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isHaveClick:Z

    .line 1382
    .line 1383
    if-eqz v3, :cond_45

    .line 1384
    .line 1385
    iget-boolean v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isHaveDoubleClick:Z

    .line 1386
    .line 1387
    if-nez v3, :cond_44

    .line 1388
    .line 1389
    iget-object v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->zhLogcat:Ljava/util/List;

    .line 1390
    .line 1391
    if-eqz v3, :cond_43

    .line 1392
    .line 1393
    goto :goto_19

    .line 1394
    :cond_43
    invoke-virtual {v6, v8}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    iget v3, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->index:I

    .line 1399
    .line 1400
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v0

    .line 1404
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v0

    .line 1408
    invoke-virtual {v0, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1413
    .line 1414
    .line 1415
    goto :goto_1a

    .line 1416
    :cond_44
    :goto_19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v3

    .line 1420
    const/4 v10, 0x0

    .line 1421
    iput v10, v3, Landroid/os/Message;->what:I

    .line 1422
    .line 1423
    new-instance v9, Lcom/yunpan/appmanage/bean/LogcatRxHandlerMsgBean;

    .line 1424
    .line 1425
    invoke-virtual {v6, v8}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v6

    .line 1429
    iget v8, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->index:I

    .line 1430
    .line 1431
    invoke-virtual {v6, v8}, Lz7/o;->l(I)Lz7/p;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v6

    .line 1435
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v6

    .line 1439
    invoke-virtual {v6, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v5

    .line 1443
    invoke-direct {v9, v2, v5}, Lcom/yunpan/appmanage/bean/LogcatRxHandlerMsgBean;-><init>(Lec/c;Lz7/o;)V

    .line 1444
    .line 1445
    .line 1446
    iput-object v9, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1447
    .line 1448
    iget v0, v0, Lwa/u;->r:I

    .line 1449
    .line 1450
    int-to-long v5, v0

    .line 1451
    invoke-virtual {v7, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1452
    .line 1453
    .line 1454
    :goto_1a
    iget v0, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->OutTimeOneMap:I

    .line 1455
    .line 1456
    if-lez v0, :cond_45

    .line 1457
    .line 1458
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v0

    .line 1462
    iget-object v0, v0, Lwa/s;->o:Ljava/util/HashMap;

    .line 1463
    .line 1464
    iget-object v2, v4, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->tag_bs:Ljava/lang/String;

    .line 1465
    .line 1466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1467
    .line 1468
    .line 1469
    move-result-wide v3

    .line 1470
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v3

    .line 1474
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    .line 1476
    .line 1477
    :cond_45
    return-void

    .line 1478
    :cond_46
    const/4 v4, -0x1

    .line 1479
    iput v4, v1, Lta/o;->V:I

    .line 1480
    .line 1481
    const-wide/16 v11, 0x0

    .line 1482
    .line 1483
    iput-wide v11, v1, Lta/o;->U:J

    .line 1484
    .line 1485
    return-void

    .line 1486
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    .line 1487
    .line 1488
    move-wide v10, v11

    .line 1489
    const/4 v5, 0x1

    .line 1490
    const/4 v9, 0x0

    .line 1491
    goto/16 :goto_13

    .line 1492
    .line 1493
    :cond_47
    :goto_1c
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lta/o;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lta/o;->d:Landroid/os/HandlerThread;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lta/o;->d:Landroid/os/HandlerThread;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lta/o;->e:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v2, p0, Lta/o;->f:Ll6/e;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 24
    .line 25
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lta/o;->i:Ljava/io/InputStream;

    .line 29
    .line 30
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v0, p0, Lta/o;->g:Ljava/lang/Process;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    nop

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    iget-object v0, p0, Lta/o;->h:Loa/b;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-interface {v0}, Loa/b;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_1
    iget-object v0, p0, Lta/o;->l:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lta/o;->j:Ljava/io/OutputStream;

    .line 56
    .line 57
    iput-object v1, p0, Lta/o;->i:Ljava/io/InputStream;

    .line 58
    .line 59
    iput-object v1, p0, Lta/o;->g:Ljava/lang/Process;

    .line 60
    .line 61
    iput-object v1, p0, Lta/o;->h:Loa/b;

    .line 62
    .line 63
    iget-object v0, p0, Lta/o;->k:Lfg/b;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    :try_start_1
    iget-object v0, p0, Lta/o;->k:Lfg/b;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    :catch_1
    iput-object v1, p0, Lta/o;->k:Lfg/b;

    .line 79
    .line 80
    :cond_4
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
