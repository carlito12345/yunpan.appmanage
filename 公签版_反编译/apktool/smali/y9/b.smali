.class public final Ly9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Ljava/net/Socket;

.field public b:I

.field public c:Ljava/io/InputStream;

.field public d:Ljava/io/OutputStream;

.field public final e:Lfg/b;

.field public f:Z

.field public g:Z

.field public h:Ly9/c;

.field public i:Z

.field public final j:Ls4/a;

.field public volatile k:Z

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ly9/b;->k:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Ly9/b;->l:Ljava/lang/String;

    .line 10
    .line 11
    iput v0, p0, Ly9/b;->b:I

    .line 12
    .line 13
    new-instance v0, Ls4/a;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Ls4/a;-><init>(Ly9/b;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Ly9/b;->j:Ls4/a;

    .line 19
    .line 20
    new-instance v0, Lfg/b;

    .line 21
    .line 22
    new-instance v1, Ls1/f;

    .line 23
    .line 24
    const/16 v2, 0x12

    .line 25
    .line 26
    invoke-direct {v1, p0, v2, p0}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v0, v1, v2}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Ly9/b;->e:Lfg/b;

    .line 34
    .line 35
    return-void
.end method

.method public static A(Ljava/net/Socket;Ly9/c;)Ly9/b;
    .locals 3

    .line 1
    new-instance v0, Ly9/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ly9/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Ly9/b;->a:Ljava/net/Socket;

    .line 7
    .line 8
    iput-object p1, v0, Ly9/b;->h:Ly9/c;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, v0, Ly9/b;->c:Ljava/io/InputStream;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, v0, Ly9/b;->d:Ljava/io/OutputStream;

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x4000

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 29
    .line 30
    .line 31
    const/high16 v1, 0x10000

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x10

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-virtual {p0, v1, v2, p1}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method


# virtual methods
.method public final J(Ljava/lang/String;)Ly9/f;
    .locals 5

    .line 1
    iget v0, p0, Ly9/b;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Ly9/b;->b:I

    .line 6
    .line 7
    iget-boolean v1, p0, Ly9/b;->f:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-boolean v1, p0, Ly9/b;->g:Z

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-boolean v1, p0, Ly9/b;->g:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-boolean v1, p0, Ly9/b;->g:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 33
    .line 34
    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :cond_2
    :goto_2
    new-instance v1, Ly9/f;

    .line 43
    .line 44
    invoke-direct {v1, p0, v0}, Ly9/f;-><init>(Ly9/b;I)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Ly9/b;->j:Ls4/a;

    .line 48
    .line 49
    iget-object v2, v2, Ls4/a;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Ly9/b;->d:Ljava/io/OutputStream;

    .line 61
    .line 62
    sget-object v3, Ly9/e;->a:[B

    .line 63
    .line 64
    const-string v3, "UTF-8"

    .line 65
    .line 66
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    array-length v3, p1

    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    const v4, 0x4e45504f    # 8.2759366E8f

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v4, v0, p1, v3}, Ly9/e;->a(III[B)[B

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Ly9/b;->d:Ljava/io/OutputStream;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 105
    .line 106
    .line 107
    monitor-enter v1

    .line 108
    const-wide/16 v2, 0x1388

    .line 109
    .line 110
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 111
    .line 112
    .line 113
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    const-wide/16 v2, 0x378

    .line 115
    .line 116
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    .line 118
    .line 119
    :catch_0
    return-object v1

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    throw p1

    .line 123
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    const-string v0, "\u5fc5\u987b\u5148\u8c03\u7528Connect ()"

    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly9/b;->e:Lfg/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Ly9/b;->a:Ljava/net/Socket;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    return-void
.end method

.method public final r()V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Ly9/b;->l:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v0, p0, Ly9/b;->g:Z

    .line 6
    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Ly9/b;->d:Ljava/io/OutputStream;

    .line 10
    .line 11
    sget-object v1, Ly9/e;->a:[B

    .line 12
    .line 13
    const/high16 v2, 0x1000000

    .line 14
    .line 15
    const/16 v3, 0xff0

    .line 16
    .line 17
    const v4, 0x4e584e43    # 9.072519E8f

    .line 18
    .line 19
    .line 20
    invoke-static {v4, v2, v3, v1}, Ly9/e;->a(III[B)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Ly9/b;->d:Ljava/io/OutputStream;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Ly9/b;->f:Z

    .line 34
    .line 35
    iget-object v0, p0, Ly9/b;->e:Lfg/b;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-boolean v0, p0, Ly9/b;->g:Z

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    const-wide/16 v0, 0xd05

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_4

    .line 53
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ly9/b;->g:Z

    .line 54
    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    :goto_1
    iget-boolean v2, p0, Ly9/b;->g:Z

    .line 62
    .line 63
    const-wide/32 v3, 0xea60

    .line 64
    .line 65
    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    iget-object v2, p0, Ly9/b;->l:Ljava/lang/String;

    .line 69
    .line 70
    const-string v5, "\u7b49\u5f85\u6388\u6743"

    .line 71
    .line 72
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    sub-long/2addr v5, v0

    .line 83
    cmp-long v2, v5, v3

    .line 84
    .line 85
    if-gez v2, :cond_1

    .line 86
    .line 87
    const-wide/16 v2, 0x3e8

    .line 88
    .line 89
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-boolean v2, p0, Ly9/b;->g:Z

    .line 94
    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    iget-object v2, p0, Ly9/b;->l:Ljava/lang/String;

    .line 98
    .line 99
    const-string v5, "\u7b49\u5f85\u6388\u6743"

    .line 100
    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    sub-long/2addr v5, v0

    .line 112
    cmp-long v0, v5, v3

    .line 113
    .line 114
    if-gez v0, :cond_2

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 118
    .line 119
    const-string v1, "\u6388\u6743\u8d85\u65f6,\u5f39\u7a97\u65f6\u8bf7\u5141\u8bb8\u8c03\u8bd5"

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_3
    :goto_2
    iget-boolean v0, p0, Ly9/b;->g:Z

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 131
    .line 132
    const-string v1, "adb\u8fde\u63a5\u8d85\u65f6"

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_5
    :goto_3
    monitor-exit p0

    .line 139
    return-void

    .line 140
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    throw v0

    .line 142
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    const-string v1, "\u5df2\u7ecf\u8fde\u63a5"

    .line 145
    .line 146
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_6

    .line 150
    :goto_5
    throw v0

    .line 151
    :goto_6
    goto :goto_5
.end method
