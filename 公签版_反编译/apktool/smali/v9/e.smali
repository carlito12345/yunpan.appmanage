.class public final Lv9/e;
.super Ls1/g;
.source "SourceFile"

# interfaces
.implements Lu9/c;


# static fields
.field public static final i:Ljava/util/ArrayList;

.field public static final j:Ljava/lang/String;

.field public static final k:[B


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Landroidx/media3/exoplayer/video/a;

.field public f:Lu9/b;

.field public final synthetic g:I

.field public h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lv9/e;->i:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lv9/e;->j:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "__RET=$?;echo %1$s;echo %1$s >&2;echo $__RET;unset __RET\n"

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object v0, v3, v1

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "UTF-8"

    .line 31
    .line 32
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lv9/e;->k:[B

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lv9/e;->g:I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lv9/e;-><init>(B)V

    .line 4
    sget-object v0, Lv9/e;->i:Ljava/util/ArrayList;

    .line 5
    iput-object v0, p0, Lv9/e;->c:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv9/e;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ls1/g;-><init>()V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv9/e;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lv9/e;->c:Ljava/util/ArrayList;

    .line 10
    sget-object p1, Lv9/e;->i:Ljava/util/ArrayList;

    iput-object p1, p0, Lv9/e;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lv9/i;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lv9/e;->g:I

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lv9/e;-><init>(B)V

    .line 2
    iput-object p1, p0, Lv9/e;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lv9/e;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lv9/e;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    sget-object v2, Lv9/e;->i:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v5, 0x0

    .line 14
    :goto_0
    iget-object v6, p0, Lv9/e;->d:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-ne v6, v2, :cond_1

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    :cond_1
    const/4 v2, 0x0

    .line 20
    if-eqz v5, :cond_3

    .line 21
    .line 22
    iget-object v1, p0, Lv9/e;->f:Lu9/b;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    move-object v1, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    :cond_3
    :goto_1
    if-eqz v3, :cond_5

    .line 34
    .line 35
    sget-boolean v4, Lu9/d;->b:Z

    .line 36
    .line 37
    if-eqz v4, :cond_4

    .line 38
    .line 39
    move-object v4, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_4
    move-object v4, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_5
    iget-object v4, p0, Lv9/e;->d:Ljava/util/ArrayList;

    .line 44
    .line 45
    :goto_2
    if-eqz v1, :cond_7

    .line 46
    .line 47
    if-ne v1, v4, :cond_7

    .line 48
    .line 49
    sget-object v5, Lv9/l;->a:Ljava/lang/Class;

    .line 50
    .line 51
    if-nez v5, :cond_6

    .line 52
    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    sput-object v5, Lv9/l;->a:Ljava/lang/Class;

    .line 66
    .line 67
    :cond_6
    sget-object v5, Lv9/l;->a:Ljava/lang/Class;

    .line 68
    .line 69
    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_7

    .line 74
    .line 75
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object v4, v1

    .line 80
    :cond_7
    new-instance v5, Ljava/util/concurrent/FutureTask;

    .line 81
    .line 82
    new-instance v6, Lv9/j;

    .line 83
    .line 84
    const/4 v7, 0x1

    .line 85
    invoke-direct {v6, p2, v1, v7}, Lv9/j;-><init>(Ljava/io/InputStream;Ljava/util/List;I)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 89
    .line 90
    .line 91
    new-instance p2, Ljava/util/concurrent/FutureTask;

    .line 92
    .line 93
    new-instance v6, Lv9/j;

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-direct {v6, p3, v4, v7}, Lv9/j;-><init>(Ljava/io/InputStream;Ljava/util/List;I)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 100
    .line 101
    .line 102
    sget-object p3, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 103
    .line 104
    invoke-interface {p3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p3, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    new-instance p3, Landroidx/room/s;

    .line 111
    .line 112
    const/16 v4, 0x16

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-direct {p3, v4, v6}, Landroidx/room/s;-><init>(IC)V

    .line 116
    .line 117
    .line 118
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_8

    .line 127
    .line 128
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    check-cast v6, Lv9/b;

    .line 133
    .line 134
    invoke-virtual {v6, p1}, Lv9/b;->r(Ljava/io/OutputStream;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_8
    sget-object v4, Lv9/e;->k:[B

    .line 139
    .line 140
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    iput p1, p3, Landroidx/room/s;->b:I

    .line 160
    .line 161
    iput-object v1, p3, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 162
    .line 163
    if-eqz v3, :cond_9

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_9
    iget-object v2, p0, Lv9/e;->d:Ljava/util/ArrayList;

    .line 167
    .line 168
    :goto_4
    iput-object v2, p3, Landroidx/room/s;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-eqz p2, :cond_a

    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    check-cast p2, Lv9/b;

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_a
    iget-object p1, p0, Lv9/e;->f:Lu9/b;

    .line 191
    .line 192
    if-eqz p1, :cond_c

    .line 193
    .line 194
    iget-object p2, p0, Lv9/e;->e:Landroidx/media3/exoplayer/video/a;

    .line 195
    .line 196
    if-nez p2, :cond_b

    .line 197
    .line 198
    invoke-interface {p1, p3}, Lu9/b;->n(Landroidx/room/s;)V

    .line 199
    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_b
    new-instance p1, Ls1/f;

    .line 203
    .line 204
    const/16 v0, 0xc

    .line 205
    .line 206
    invoke-direct {p1, p0, v0, p3}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/a;->execute(Ljava/lang/Runnable;)V

    .line 210
    .line 211
    .line 212
    :cond_c
    :goto_6
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Lv9/e;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lv9/e;->n0()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lv9/e;->h:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Runnable;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lv9/e;->h:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lv9/e;->n0()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d0(Landroidx/media3/exoplayer/video/a;Lua/i6;)V
    .locals 2

    .line 1
    iget v0, p0, Lv9/e;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lv9/e;->e:Landroidx/media3/exoplayer/video/a;

    .line 7
    .line 8
    iput-object p2, p0, Lv9/e;->f:Lu9/b;

    .line 9
    .line 10
    iget-object p1, p0, Lv9/e;->h:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lv9/i;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lv9/i;->N(Lu9/c;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    new-instance v0, Lv9/d;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lv9/d;-><init>(Lv9/e;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lv9/e;->h:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p1, p0, Lv9/e;->e:Landroidx/media3/exoplayer/video/a;

    .line 27
    .line 28
    iput-object p2, p0, Lv9/e;->f:Lu9/b;

    .line 29
    .line 30
    new-instance p1, Lua/g5;

    .line 31
    .line 32
    const/16 p2, 0xf

    .line 33
    .line 34
    invoke-direct {p1, p2, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lv9/c;->b()Lv9/i;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Lv9/i;->N(Lu9/c;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object p2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    new-instance v0, Lua/g8;

    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    invoke-direct {v0, v1, p1}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l0()Landroidx/room/s;
    .locals 3

    .line 1
    iget v0, p0, Lv9/e;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lua/i1;

    .line 7
    .line 8
    invoke-direct {v0}, Lua/i1;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lv9/e;->f:Lu9/b;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lv9/e;->e:Landroidx/media3/exoplayer/video/a;

    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, Lv9/e;->h:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lv9/i;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Lv9/i;->K(Lv9/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    nop

    .line 25
    :goto_0
    iget-object v0, v0, Lua/i1;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroidx/room/s;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Landroidx/room/s;

    .line 32
    .line 33
    const/16 v1, 0x16

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v0, v1, v2}, Landroidx/room/s;-><init>(IC)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object v0

    .line 40
    :pswitch_0
    new-instance v0, Lv9/d;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-direct {v0, p0, v1}, Lv9/d;-><init>(Lv9/e;I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lv9/e;->h:Ljava/lang/Object;

    .line 47
    .line 48
    new-instance v0, Lua/i1;

    .line 49
    .line 50
    invoke-direct {v0}, Lua/i1;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lv9/e;->f:Lu9/b;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lv9/e;->e:Landroidx/media3/exoplayer/video/a;

    .line 57
    .line 58
    invoke-virtual {p0}, Lv9/e;->m0()V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Lua/i1;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Landroidx/room/s;

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    new-instance v0, Landroidx/room/s;

    .line 68
    .line 69
    const/16 v1, 0x16

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-direct {v0, v1, v2}, Landroidx/room/s;-><init>(IC)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-object v0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public m0()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lv9/c;->a()Lv9/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Lu9/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-virtual {v0, p0}, Lv9/i;->K(Lv9/e;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void

    .line 9
    :catch_1
    invoke-virtual {p0}, Lv9/e;->n0()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv9/e;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lv9/b;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Landroidx/room/s;

    .line 24
    .line 25
    const/16 v1, 0x16

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, v1, v2}, Landroidx/room/s;-><init>(IC)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lv9/e;->f:Lu9/b;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lv9/e;->e:Landroidx/media3/exoplayer/video/a;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v1, v0}, Lu9/b;->n(Landroidx/room/s;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v1, Ls1/f;

    .line 44
    .line 45
    const/16 v3, 0xc

    .line 46
    .line 47
    invoke-direct {v1, p0, v3, v0}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/video/a;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    return-void
.end method
