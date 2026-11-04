.class public abstract Lee/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static f:I

.field public static final g:Lde/d;


# instance fields
.field public a:I

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/Thread;

.field public d:Lee/c;

.field public final e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lde/d;->r()Lde/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lee/b;->g:Lde/d;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lee/b;->a:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Transport"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v1, Lee/b;->f:I

    .line 15
    .line 16
    add-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    sput v2, Lee/b;->f:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lee/b;->b:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lee/b;->e:Ljava/util/HashMap;

    .line 36
    .line 37
    return-void
.end method

.method public static i(Ljava/io/InputStream;[BII)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p3, :cond_1

    .line 3
    .line 4
    add-int v1, p2, v0

    .line 5
    .line 6
    sub-int v2, p3, v0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gtz v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/2addr v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 7

    .line 1
    const-string v0, "Invalid state: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v1, 0x4

    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    :try_start_0
    iget v6, p0, Lee/b;->a:I

    .line 10
    .line 11
    if-eqz v6, :cond_4

    .line 12
    .line 13
    if-eq v6, v2, :cond_1

    .line 14
    .line 15
    if-eq v6, v1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lee/c;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lee/b;->a:I

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Lee/c;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput v5, p0, Lee/b;->a:I

    .line 37
    .line 38
    throw p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    iput v5, p0, Lee/b;->a:I

    .line 46
    .line 47
    new-instance p1, Lee/c;

    .line 48
    .line 49
    iget-object p2, p0, Lee/b;->d:Lee/c;

    .line 50
    .line 51
    invoke-direct {p1, p2}, Lee/c;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    if-eqz v6, :cond_3

    .line 56
    .line 57
    if-eq v6, v2, :cond_3

    .line 58
    .line 59
    if-eq v6, v1, :cond_3

    .line 60
    .line 61
    :try_start_1
    sget p1, Lde/d;->b:I

    .line 62
    .line 63
    if-lt p1, v3, :cond_2

    .line 64
    .line 65
    sget-object p1, Lee/b;->g:Lde/d;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_2
    :goto_0
    iput v5, p0, Lee/b;->a:I

    .line 75
    .line 76
    iput-object v4, p0, Lee/b;->c:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    :cond_3
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :cond_4
    :try_start_2
    iput v3, p0, Lee/b;->a:I

    .line 81
    .line 82
    iput-object v4, p0, Lee/b;->d:Lee/c;

    .line 83
    .line 84
    new-instance v0, Ljava/lang/Thread;

    .line 85
    .line 86
    iget-object v6, p0, Lee/b;->b:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v0, p0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 97
    .line 98
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    iget-object v6, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 102
    .line 103
    .line 104
    iget-object v6, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 105
    .line 106
    invoke-virtual {v6, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 107
    .line 108
    .line 109
    iget p1, p0, Lee/b;->a:I

    .line 110
    .line 111
    if-eq p1, v3, :cond_9

    .line 112
    .line 113
    const/4 p2, 0x2

    .line 114
    if-eq p1, p2, :cond_7

    .line 115
    .line 116
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    if-eq p1, v2, :cond_6

    .line 120
    .line 121
    if-eq p1, v1, :cond_6

    .line 122
    .line 123
    :try_start_4
    sget p1, Lde/d;->b:I

    .line 124
    .line 125
    if-lt p1, v3, :cond_5

    .line 126
    .line 127
    sget-object p1, Lee/b;->g:Lde/d;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    :cond_5
    iput v5, p0, Lee/b;->a:I

    .line 133
    .line 134
    iput-object v4, p0, Lee/b;->c:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    .line 136
    :cond_6
    monitor-exit p0

    .line 137
    return-void

    .line 138
    :catchall_2
    move-exception p1

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    :try_start_5
    iget-object p1, p0, Lee/b;->d:Lee/c;

    .line 141
    .line 142
    if-nez p1, :cond_8

    .line 143
    .line 144
    iput v2, p0, Lee/b;->a:I

    .line 145
    .line 146
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 147
    monitor-exit p0

    .line 148
    return-void

    .line 149
    :cond_8
    :try_start_6
    iput v1, p0, Lee/b;->a:I

    .line 150
    .line 151
    iput-object v4, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 152
    .line 153
    throw p1

    .line 154
    :cond_9
    iput v5, p0, Lee/b;->a:I

    .line 155
    .line 156
    iput-object v4, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 157
    .line 158
    new-instance p1, Lee/c;

    .line 159
    .line 160
    const-string p2, "Connection timeout"

    .line 161
    .line 162
    invoke-direct {p1, p2}, Lee/c;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 167
    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 168
    :goto_2
    :try_start_8
    iput v5, p0, Lee/b;->a:I

    .line 169
    .line 170
    iput-object v4, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 171
    .line 172
    new-instance p2, Lee/c;

    .line 173
    .line 174
    invoke-direct {p2, p1}, Lee/c;-><init>(Ljava/lang/Exception;)V

    .line 175
    .line 176
    .line 177
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 178
    :goto_3
    :try_start_9
    iget p2, p0, Lee/b;->a:I

    .line 179
    .line 180
    if-eqz p2, :cond_b

    .line 181
    .line 182
    if-eq p2, v2, :cond_b

    .line 183
    .line 184
    if-eq p2, v1, :cond_b

    .line 185
    .line 186
    sget p2, Lde/d;->b:I

    .line 187
    .line 188
    if-lt p2, v3, :cond_a

    .line 189
    .line 190
    sget-object p2, Lee/b;->g:Lde/d;

    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    :cond_a
    iput v5, p0, Lee/b;->a:I

    .line 196
    .line 197
    iput-object v4, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 198
    .line 199
    :cond_b
    throw p1

    .line 200
    :goto_4
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 201
    throw p1
.end method

.method public final declared-synchronized b(Z)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lee/b;->a:I

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    if-eq v0, p1, :cond_4

    .line 17
    .line 18
    sget p1, Lde/d;->b:I

    .line 19
    .line 20
    if-lt p1, v3, :cond_0

    .line 21
    .line 22
    sget-object p1, Lee/b;->g:Lde/d;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_3

    .line 30
    :cond_0
    :goto_0
    iput-object v4, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 31
    .line 32
    iput v2, p0, Lee/b;->a:I

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :cond_2
    iget-object v0, p0, Lee/b;->e:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lee/b;->d(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    :cond_4
    move-object p1, v4

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    :goto_1
    :try_start_2
    iput-object v4, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 54
    .line 55
    iput v2, p0, Lee/b;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    move-object v4, p1

    .line 58
    :goto_2
    if-nez v4, :cond_5

    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :cond_5
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    :cond_6
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    throw p1
.end method

.method public abstract c()V
.end method

.method public abstract d(Z)V
.end method

.method public abstract e(Lee/a;)V
.end method

.method public abstract f(Lce/q;)V
.end method

.method public final g()V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_7

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lee/b;->h()Lce/t;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object v2, p0, Lee/b;->e:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lee/a;

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    sget v1, Lde/d;->b:I

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    if-lt v1, v2, :cond_0

    .line 31
    .line 32
    sget-object v1, Lee/b;->g:Lde/d;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto :goto_4

    .line 40
    :cond_0
    :goto_1
    move-object v1, p0

    .line 41
    check-cast v1, Lce/b1;

    .line 42
    .line 43
    iget-object v2, v1, Lce/b1;->q:[B

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-static {v3, v2}, La9/o;->A(I[B)S

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const v3, 0xffff

    .line 51
    .line 52
    .line 53
    and-int/2addr v2, v3

    .line 54
    const/16 v3, 0x21

    .line 55
    .line 56
    if-lt v2, v3, :cond_2

    .line 57
    .line 58
    add-int/lit8 v3, v2, 0x4

    .line 59
    .line 60
    iget v4, v1, Lce/b1;->A:I

    .line 61
    .line 62
    if-le v3, v4, :cond_1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget-object v1, v1, Lce/b1;->p:Ljava/io/InputStream;

    .line 66
    .line 67
    add-int/lit8 v2, v2, -0x20

    .line 68
    .line 69
    int-to-long v2, v2

    .line 70
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :goto_2
    iget-object v1, v1, Lce/b1;->p:Ljava/io/InputStream;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    int-to-long v2, v2

    .line 81
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {p0, v1}, Lee/b;->e(Lee/a;)V

    .line 86
    .line 87
    .line 88
    iput-boolean v0, v1, Lee/a;->b:Z

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 91
    .line 92
    .line 93
    :goto_3
    monitor-exit p0

    .line 94
    goto :goto_0

    .line 95
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    throw v1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    goto :goto_5

    .line 99
    :cond_4
    new-instance v1, Ljava/io/IOException;

    .line 100
    .line 101
    const-string v2, "end of stream"

    .line 102
    .line 103
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 107
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    const-string v3, "Read timed out"

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_5
    const/4 v0, 0x0

    .line 123
    :goto_6
    xor-int/lit8 v2, v0, 0x1

    .line 124
    .line 125
    if-nez v0, :cond_6

    .line 126
    .line 127
    sget v0, Lde/d;->b:I

    .line 128
    .line 129
    const/4 v3, 0x3

    .line 130
    if-lt v0, v3, :cond_6

    .line 131
    .line 132
    sget-object v0, Lee/b;->g:Lde/d;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    :try_start_3
    invoke-virtual {p0, v2}, Lee/b;->b(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :catch_1
    move-exception v0

    .line 143
    sget-object v1, Lee/b;->g:Lde/d;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_7
    return-void
.end method

.method public abstract h()Lce/t;
.end method

.method public final declared-synchronized j(Lce/q;Lce/q;J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    move-object v0, p0

    .line 3
    check-cast v0, Lce/b1;

    .line 4
    .line 5
    iget v1, v0, Lce/b1;->m:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iput v1, v0, Lce/b1;->m:I

    .line 10
    .line 11
    const/16 v3, 0x7d00

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    iput v2, v0, Lce/b1;->m:I

    .line 16
    .line 17
    :cond_0
    iget v0, v0, Lce/b1;->m:I

    .line 18
    .line 19
    iput v0, p1, Lce/q;->m:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p2, Lee/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    :try_start_1
    iget-object v0, p0, Lee/b;->e:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lee/b;->f(Lce/q;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    add-long/2addr v0, p3

    .line 37
    iput-wide v0, p2, Lee/a;->a:J

    .line 38
    .line 39
    :goto_0
    iget-boolean v0, p2, Lee/a;->b:Z

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, p3, p4}, Ljava/lang/Object;->wait(J)V

    .line 44
    .line 45
    .line 46
    iget-wide p3, p2, Lee/a;->a:J

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    sub-long/2addr p3, v0

    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    cmp-long v3, p3, v0

    .line 56
    .line 57
    if-lez v3, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance p2, Lee/c;

    .line 61
    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object p4, p0, Lee/b;->b:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p4, " timedout waiting for response to "

    .line 73
    .line 74
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-direct {p2, p3}, Lee/c;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :catchall_0
    move-exception p2

    .line 89
    goto :goto_4

    .line 90
    :catch_0
    move-exception p2

    .line 91
    goto :goto_1

    .line 92
    :catch_1
    move-exception p2

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    :try_start_2
    iget-object p2, p0, Lee/b;->e:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :catchall_1
    move-exception p1

    .line 102
    goto :goto_5

    .line 103
    :goto_1
    :try_start_3
    new-instance p3, Lee/c;

    .line 104
    .line 105
    invoke-direct {p3, p2}, Lee/c;-><init>(Ljava/lang/Exception;)V

    .line 106
    .line 107
    .line 108
    throw p3

    .line 109
    :goto_2
    sget p3, Lde/d;->b:I

    .line 110
    .line 111
    const/4 p4, 0x2

    .line 112
    if-le p3, p4, :cond_3

    .line 113
    .line 114
    sget-object p3, Lee/b;->g:Lde/d;

    .line 115
    .line 116
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .line 118
    .line 119
    :cond_3
    :try_start_4
    invoke-virtual {p0, v2}, Lee/b;->b(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :catch_2
    move-exception p3

    .line 124
    :try_start_5
    sget-object p4, Lee/b;->g:Lde/d;

    .line 125
    .line 126
    invoke-virtual {p3, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 127
    .line 128
    .line 129
    :goto_3
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    :goto_4
    :try_start_6
    iget-object p3, p0, Lee/b;->e:Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    throw p2

    .line 136
    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 137
    goto :goto_7

    .line 138
    :goto_6
    throw p1

    .line 139
    :goto_7
    goto :goto_6
.end method

.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lee/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_1
    iget-object v2, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput v1, p0, Lee/b;->a:I

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-virtual {p0}, Lee/b;->g()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw v1

    .line 30
    :catchall_1
    move-exception v2

    .line 31
    monitor-enter v0

    .line 32
    :try_start_3
    iget-object v3, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 33
    .line 34
    if-eq v0, v3, :cond_1

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_2
    move-exception v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iput v1, p0, Lee/b;->a:I

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 43
    .line 44
    .line 45
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 46
    throw v2

    .line 47
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 48
    throw v1

    .line 49
    :catch_0
    move-exception v2

    .line 50
    monitor-enter v0

    .line 51
    :try_start_5
    iget-object v3, p0, Lee/b;->c:Ljava/lang/Thread;

    .line 52
    .line 53
    if-eq v0, v3, :cond_3

    .line 54
    .line 55
    sget v3, Lde/d;->b:I

    .line 56
    .line 57
    if-lt v3, v1, :cond_2

    .line 58
    .line 59
    sget-object v1, Lee/b;->g:Lde/d;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catchall_3
    move-exception v1

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    :goto_2
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :cond_3
    new-instance v3, Lee/c;

    .line 70
    .line 71
    invoke-direct {v3, v2}, Lee/c;-><init>(Ljava/lang/Exception;)V

    .line 72
    .line 73
    .line 74
    iput-object v3, p0, Lee/b;->d:Lee/c;

    .line 75
    .line 76
    iput v1, p0, Lee/b;->a:I

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 79
    .line 80
    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 84
    throw v1
.end method
