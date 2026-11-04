.class public final Lz9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lz9/a;

.field public final b:I

.field public c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public f:Z


# direct methods
.method public constructor <init>(Lz9/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz9/d;->a:Lz9/a;

    .line 5
    .line 6
    iput p2, p0, Lz9/d;->b:I

    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lz9/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    iput-boolean p2, p0, Lz9/d;->f:Z

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz9/d;->f:Z

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object v0, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_1
    iget-object v1, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v1

    .line 22
    :catchall_1
    move-exception v0

    .line 23
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    throw v0
.end method

.method public final J()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lz9/d;->f:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [B

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-boolean v2, p0, Lz9/d;->f:Z

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 34
    .line 35
    const-string v2, "Stream closed"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_3

    .line 43
    :goto_2
    throw v1

    .line 44
    :goto_3
    goto :goto_2
.end method

.method public final K(J)Lcom/yunpan/appmanage/bean/UsbAdbData;
    .locals 11

    .line 1
    new-instance v0, Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yunpan/appmanage/bean/UsbAdbData;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v4, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 16
    .line 17
    monitor-enter v4

    .line 18
    :try_start_0
    iget-object v5, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, [B

    .line 25
    .line 26
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v6, 0x0

    .line 29
    if-nez v5, :cond_2

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    sub-long/2addr v7, v1

    .line 36
    cmp-long v5, v7, p1

    .line 37
    .line 38
    if-lez v5, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-wide/16 v7, 0x14d

    .line 42
    .line 43
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    nop

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    array-length v7, v5

    .line 50
    invoke-virtual {v3, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const-string v8, "UTF-8"

    .line 60
    .line 61
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-direct {v5, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const/4 v7, 0x4

    .line 76
    if-le v5, v7, :cond_6

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    array-length v7, v5

    .line 83
    add-int/lit8 v8, v7, -0x1

    .line 84
    .line 85
    aget-byte v8, v5, v8

    .line 86
    .line 87
    const/16 v9, 0x20

    .line 88
    .line 89
    if-eq v8, v9, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    add-int/lit8 v8, v7, -0x2

    .line 93
    .line 94
    aget-byte v8, v5, v8

    .line 95
    .line 96
    const/16 v10, 0x26

    .line 97
    .line 98
    if-eq v8, v10, :cond_4

    .line 99
    .line 100
    const/16 v10, 0x23

    .line 101
    .line 102
    if-eq v8, v10, :cond_4

    .line 103
    .line 104
    const/16 v10, 0x24

    .line 105
    .line 106
    if-eq v8, v10, :cond_4

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    add-int/lit8 v8, v7, -0x3

    .line 110
    .line 111
    aget-byte v8, v5, v8

    .line 112
    .line 113
    if-ne v8, v9, :cond_6

    .line 114
    .line 115
    add-int/lit8 v8, v7, -0x4

    .line 116
    .line 117
    aget-byte v8, v5, v8

    .line 118
    .line 119
    const/16 v9, 0x2f

    .line 120
    .line 121
    if-ne v8, v9, :cond_6

    .line 122
    .line 123
    add-int/lit8 v7, v7, -0x5

    .line 124
    .line 125
    aget-byte v5, v5, v7

    .line 126
    .line 127
    const/16 v7, 0x3a

    .line 128
    .line 129
    if-eq v5, v7, :cond_5

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    const/4 p1, 0x1

    .line 133
    goto :goto_2

    .line 134
    :cond_6
    :goto_0
    iget-boolean v5, p0, Lz9/d;->f:Z

    .line 135
    .line 136
    if-eqz v5, :cond_0

    .line 137
    .line 138
    :goto_1
    const/4 p1, 0x0

    .line 139
    :goto_2
    iget-boolean p2, p0, Lz9/d;->f:Z

    .line 140
    .line 141
    if-eqz p2, :cond_7

    .line 142
    .line 143
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 144
    .line 145
    const-string p2, "\u8fde\u63a5\u5df2\u65ad\u5f00"

    .line 146
    .line 147
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_7
    if-nez p1, :cond_8

    .line 152
    .line 153
    const/16 p1, 0x194

    .line 154
    .line 155
    iput p1, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 156
    .line 157
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 158
    .line 159
    const-string p2, "\u6267\u884c\u547d\u4ee4\u8d85\u65f6"

    .line 160
    .line 161
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_8
    new-instance p1, Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    const-string v1, "UTF-8"

    .line 172
    .line 173
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-direct {p1, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 178
    .line 179
    .line 180
    const-string p2, "\n"

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    add-int/2addr p2, v4

    .line 187
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    const-string v1, "|"

    .line 192
    .line 193
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_9

    .line 198
    .line 199
    new-instance v1, Ljava/lang/Integer;

    .line 200
    .line 201
    const-string v2, "|"

    .line 202
    .line 203
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    iput p2, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_9
    iput v6, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 222
    .line 223
    :goto_3
    new-instance p2, Ljava/util/ArrayList;

    .line 224
    .line 225
    const-string v1, "\n"

    .line 226
    .line 227
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .line 237
    .line 238
    iput-object p2, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-nez p1, :cond_a

    .line 245
    .line 246
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 247
    .line 248
    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    :cond_a
    :goto_4
    return-object v0

    .line 252
    :catchall_0
    move-exception p1

    .line 253
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    goto :goto_6

    .line 255
    :goto_5
    throw p1

    .line 256
    :goto_6
    goto :goto_5
.end method

.method public final L()V
    .locals 7

    .line 1
    iget-object v0, p0, Lz9/d;->a:Lz9/a;

    .line 2
    .line 3
    iget-object v0, v0, Lz9/a;->a:Lz9/e;

    .line 4
    .line 5
    iget v1, p0, Lz9/d;->c:I

    .line 6
    .line 7
    sget-object v2, Lz9/c;->a:[B

    .line 8
    .line 9
    const/16 v2, 0x18

    .line 10
    .line 11
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const v4, 0x59414b4f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    iget v6, p0, Lz9/d;->b:I

    .line 30
    .line 31
    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    invoke-virtual {v2, v5, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0xc

    .line 40
    .line 41
    invoke-virtual {v2, v1, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x10

    .line 45
    .line 46
    invoke-virtual {v2, v1, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    xor-int/lit8 v1, v4, -0x1

    .line 50
    .line 51
    const/16 v3, 0x14

    .line 52
    .line 53
    invoke-virtual {v2, v3, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lz9/e;->J([B)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final M(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "\n\u0000"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "UTF-8"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lz9/d;->N([B)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v0, 0xde

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final N([B)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lz9/d;->f:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lz9/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

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
    goto :goto_3

    .line 22
    :cond_0
    iget-boolean v0, p0, Lz9/d;->f:Z

    .line 23
    .line 24
    if-nez v0, :cond_4

    .line 25
    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v0, p0, Lz9/d;->a:Lz9/a;

    .line 28
    .line 29
    iget-object v0, v0, Lz9/a;->a:Lz9/e;

    .line 30
    .line 31
    iget v2, p0, Lz9/d;->b:I

    .line 32
    .line 33
    iget v3, p0, Lz9/d;->c:I

    .line 34
    .line 35
    sget-object v4, Lz9/c;->a:[B

    .line 36
    .line 37
    const/16 v4, 0x18

    .line 38
    .line 39
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const v5, 0x45545257

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x4

    .line 56
    invoke-virtual {v4, v5, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    array-length v2, p1

    .line 69
    :goto_1
    const/16 v3, 0xc

    .line 70
    .line 71
    invoke-virtual {v4, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-static {p1}, Lua/i8;->m([B)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :goto_2
    const/16 v2, 0x10

    .line 82
    .line 83
    invoke-virtual {v4, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    .line 86
    const v1, -0x45545258

    .line 87
    .line 88
    .line 89
    const/16 v2, 0x14

    .line 90
    .line 91
    invoke-virtual {v4, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lz9/e;->J([B)V

    .line 102
    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lz9/e;->J([B)V

    .line 107
    .line 108
    .line 109
    :cond_3
    return-void

    .line 110
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 111
    .line 112
    const-string v0, "Stream closed"

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    goto :goto_5

    .line 120
    :goto_4
    throw p1

    .line 121
    :goto_5
    goto :goto_4
.end method

.method public final close()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lz9/d;->f:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lz9/d;->A()V

    .line 11
    .line 12
    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lz9/d;->a:Lz9/a;

    .line 15
    .line 16
    iget-object v0, v0, Lz9/a;->a:Lz9/e;

    .line 17
    .line 18
    iget v1, p0, Lz9/d;->b:I

    .line 19
    .line 20
    iget v2, p0, Lz9/d;->c:I

    .line 21
    .line 22
    sget-object v3, Lz9/c;->a:[B

    .line 23
    .line 24
    const/16 v3, 0x18

    .line 25
    .line 26
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const v4, 0x45534c43

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {v3, v5, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x4

    .line 44
    invoke-virtual {v3, v4, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x8

    .line 48
    .line 49
    invoke-virtual {v3, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    const/16 v1, 0xc

    .line 53
    .line 54
    invoke-virtual {v3, v1, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    invoke-virtual {v3, v1, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    const v1, -0x45534c44

    .line 63
    .line 64
    .line 65
    const/16 v2, 0x14

    .line 66
    .line 67
    invoke-virtual {v3, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lz9/e;->J([B)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw v0
.end method

.method public final r([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method
