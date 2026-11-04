.class public final Lz9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Lz9/e;

.field public b:I

.field public final c:Ljava/lang/Thread;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Lz9/b;

.field public h:Z

.field public final i:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 4

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
    iput-object v0, p0, Lz9/a;->i:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lz9/a;->b:I

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Thread;

    .line 15
    .line 16
    new-instance v1, Ly7/b;

    .line 17
    .line 18
    const/16 v2, 0x19

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v1, v2, p0, p0, v3}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lz9/a;->c:Ljava/lang/Thread;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final A()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lz9/a;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lz9/a;->e:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lz9/a;->e:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget v0, p0, Lz9/a;->f:I

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 25
    .line 26
    const-string v1, "Connection failed"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v0

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "connect() must be called first"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public final J(Ljava/lang/String;)Lz9/d;
    .locals 6

    .line 1
    iget v0, p0, Lz9/a;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lz9/a;->b:I

    .line 6
    .line 7
    iget-boolean v1, p0, Lz9/a;->d:Z

    .line 8
    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-boolean v1, p0, Lz9/a;->e:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lz9/a;->e:Z

    .line 24
    .line 25
    if-eqz v1, :cond_5

    .line 26
    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    new-instance v1, Lz9/d;

    .line 29
    .line 30
    invoke-direct {v1, p0, v0}, Lz9/d;-><init>(Lz9/a;I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lz9/a;->i:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lz9/a;->a:Lz9/e;

    .line 43
    .line 44
    sget-object v3, Lz9/c;->a:[B

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "UTF-8"

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/16 v4, 0x18

    .line 74
    .line 75
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const v5, 0x4e45504f    # 8.2759366E8f

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, p1, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    const/4 v5, 0x4

    .line 92
    invoke-virtual {v4, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    const/16 v0, 0x8

    .line 96
    .line 97
    invoke-virtual {v4, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    .line 100
    if-nez v3, :cond_1

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    array-length v0, v3

    .line 105
    :goto_1
    const/16 v5, 0xc

    .line 106
    .line 107
    invoke-virtual {v4, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    .line 110
    if-nez v3, :cond_2

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    invoke-static {v3}, Lua/i8;->m([B)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    :goto_2
    const/16 v0, 0x10

    .line 118
    .line 119
    invoke-virtual {v4, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 120
    .line 121
    .line 122
    const p1, -0x4e455050

    .line 123
    .line 124
    .line 125
    const/16 v0, 0x14

    .line 126
    .line 127
    invoke-virtual {v4, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v2, p1}, Lz9/e;->J([B)V

    .line 138
    .line 139
    .line 140
    if-eqz v3, :cond_3

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Lz9/e;->J([B)V

    .line 143
    .line 144
    .line 145
    :cond_3
    monitor-enter v1

    .line 146
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 147
    .line 148
    .line 149
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    iget-boolean p1, v1, Lz9/d;->f:Z

    .line 151
    .line 152
    if-nez p1, :cond_4

    .line 153
    .line 154
    return-object v1

    .line 155
    :cond_4
    new-instance p1, Ljava/net/ConnectException;

    .line 156
    .line 157
    const-string v0, "Stream open actively rejected by remote peer"

    .line 158
    .line 159
    invoke-direct {p1, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :catchall_1
    move-exception p1

    .line 164
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    throw p1

    .line 166
    :cond_5
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    .line 167
    .line 168
    const-string v0, "Connection failed"

    .line 169
    .line 170
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    throw p1

    .line 176
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string v0, "connect() must be called first"

    .line 179
    .line 180
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz9/a;->c:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lz9/a;->a:Lz9/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Lz9/e;->close()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    return-void
.end method

.method public final r()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lz9/a;->e:Z

    .line 3
    .line 4
    iget-object v1, p0, Lz9/a;->a:Lz9/e;

    .line 5
    .line 6
    sget-object v2, Lz9/c;->a:[B

    .line 7
    .line 8
    const/16 v3, 0x18

    .line 9
    .line 10
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const v4, 0x4e584e43    # 9.072519E8f

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    const/high16 v5, 0x1000000

    .line 28
    .line 29
    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    const/16 v4, 0x8

    .line 33
    .line 34
    const/16 v5, 0x1000

    .line 35
    .line 36
    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    array-length v4, v2

    .line 44
    :goto_0
    const/16 v5, 0xc

    .line 45
    .line 46
    invoke-virtual {v3, v5, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v2}, Lua/i8;->m([B)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :goto_1
    const/16 v4, 0x10

    .line 57
    .line 58
    invoke-virtual {v3, v4, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    const v0, -0x4e584e44

    .line 62
    .line 63
    .line 64
    const/16 v4, 0x14

    .line 65
    .line 66
    invoke-virtual {v3, v4, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Lz9/e;->J([B)V

    .line 77
    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lz9/e;->J([B)V

    .line 82
    .line 83
    .line 84
    :cond_2
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lz9/a;->d:Z

    .line 86
    .line 87
    iget-object v0, p0, Lz9/a;->c:Ljava/lang/Thread;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    .line 91
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lz9/a;->e:Z

    .line 94
    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    goto :goto_3

    .line 103
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lz9/a;->e:Z

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 109
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 110
    .line 111
    const-string v1, "Connection failed"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw v0
.end method
