.class Lcom/hierynomus/smbfs/SmbFileChannel;
.super Ljava/nio/channels/FileChannel;
.source "SourceFile"


# static fields
.field private static final TRANSFER_BUFFER_SIZE:I = 0x10000


# instance fields
.field private final file:Lcom/hierynomus/smbj/share/File;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private position:J


# direct methods
.method public constructor <init>(Lcom/hierynomus/smbj/share/File;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->file:Lcom/hierynomus/smbj/share/File;

    .line 12
    .line 13
    iput-wide p2, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->position:J

    .line 14
    .line 15
    return-void
.end method

.method private static checkIndices(III)V
    .locals 4

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    if-ltz p2, :cond_0

    .line 4
    .line 5
    add-int v0, p1, p2

    .line 6
    .line 7
    if-gt v0, p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 11
    .line 12
    const-string v1, "offset="

    .line 13
    .line 14
    const-string v2, ", length="

    .line 15
    .line 16
    const-string v3, ", arrayLength="

    .line 17
    .line 18
    invoke-static {p1, p2, v1, v2, v3}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method


# virtual methods
.method public force(Z)V
    .locals 0

    return-void
.end method

.method public implCloseChannel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->file:Lcom/hierynomus/smbj/share/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 0

    .line 1
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 0

    .line 1
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public position()J
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->position:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v2, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7
    :try_start_0
    iput-wide p1, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->position:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw p1
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->file:Lcom/hierynomus/smbj/share/File;

    iget-wide v1, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->position:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/hierynomus/smbj/share/File;->read(Ljava/nio/ByteBuffer;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 3
    iget-wide v2, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->position:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->position:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    long-to-int p1, v0

    .line 4
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :goto_1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw p1
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 10
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->file:Lcom/hierynomus/smbj/share/File;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hierynomus/smbj/share/File;->read(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    long-to-int p2, p1

    return p2

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "position="

    .line 12
    invoke-static {p2, p3, v0}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 9

    .line 6
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/hierynomus/smbfs/SmbFileChannel;->checkIndices(III)V

    const-wide/16 v0, 0x0

    move v2, p2

    move-wide v3, v0

    :goto_0
    add-int v5, p2, p3

    if-ge v2, v5, :cond_4

    .line 7
    aget-object v5, p1, v2

    .line 8
    :cond_0
    invoke-virtual {v5}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    invoke-virtual {p0, v5}, Lcom/hierynomus/smbfs/SmbFileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    if-gez v6, :cond_2

    cmp-long p1, v3, v0

    if-nez p1, :cond_1

    const-wide/16 v3, -0x1

    :cond_1
    return-wide v3

    :cond_2
    int-to-long v7, v6

    add-long/2addr v3, v7

    if-nez v6, :cond_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-wide v3
.end method

.method public size()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->file:Lcom/hierynomus/smbj/share/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/smbj/share/File;->getLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-ltz v2, :cond_3

    .line 6
    .line 7
    cmp-long v2, p4, v0

    .line 8
    .line 9
    if-ltz v2, :cond_3

    .line 10
    .line 11
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/32 v4, 0x10000

    .line 18
    .line 19
    .line 20
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    long-to-int v3, v2

    .line 25
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-wide v3, v0

    .line 30
    :goto_0
    cmp-long v5, p4, v0

    .line 31
    .line 32
    if-lez v5, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    int-to-long v5, v5

    .line 42
    invoke-static {v5, v6, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    long-to-int v6, v5

    .line 47
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-gez v5, :cond_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0, v2, p2, p3}, Lcom/hierynomus/smbfs/SmbFileChannel;->write(Ljava/nio/ByteBuffer;J)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    int-to-long v6, v6

    .line 71
    add-long/2addr p2, v6

    .line 72
    add-long/2addr v3, v6

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    int-to-long v5, v5

    .line 75
    sub-long/2addr p4, v5

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    :goto_2
    return-wide v3

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string v0, "position="

    .line 81
    .line 82
    const-string v1, ", count="

    .line 83
    .line 84
    invoke-static {p2, p3, v0, v1}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :goto_3
    throw p1

    .line 100
    :goto_4
    goto :goto_3
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_3

    .line 6
    .line 7
    cmp-long v2, p3, v0

    .line 8
    .line 9
    if-ltz v2, :cond_3

    .line 10
    .line 11
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/32 v4, 0x10000

    .line 18
    .line 19
    .line 20
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    long-to-int v3, v2

    .line 25
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-wide v3, v0

    .line 30
    :goto_0
    cmp-long v5, p3, v0

    .line 31
    .line 32
    if-lez v5, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    int-to-long v5, v5

    .line 42
    invoke-static {v5, v6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    long-to-int v6, v5

    .line 47
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v2, p1, p2}, Lcom/hierynomus/smbfs/SmbFileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-gez v5, :cond_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    invoke-interface {p5, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    int-to-long v5, v5

    .line 71
    add-long/2addr p1, v5

    .line 72
    sub-long/2addr p3, v5

    .line 73
    add-long/2addr v3, v5

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    :goto_2
    return-wide v3

    .line 76
    :cond_3
    new-instance p5, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string v0, "position="

    .line 79
    .line 80
    const-string v1, ", count="

    .line 81
    .line 82
    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :goto_3
    throw p5

    .line 98
    :goto_4
    goto :goto_3
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->file:Lcom/hierynomus/smbj/share/File;

    invoke-virtual {v0, p1, p2}, Lcom/hierynomus/smbj/share/File;->setLength(J)V

    return-object p0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 0

    .line 1
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->file:Lcom/hierynomus/smbj/share/File;

    iget-wide v1, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->position:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/hierynomus/smbj/share/File;->write(Ljava/nio/ByteBuffer;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 3
    iget-wide v2, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->position:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->position:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    long-to-int p1, v0

    .line 4
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :goto_1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 10
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileChannel;->file:Lcom/hierynomus/smbj/share/File;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hierynomus/smbj/share/File;->write(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    long-to-int p2, p1

    return p2

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "position="

    .line 12
    invoke-static {p2, p3, v0}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 7

    .line 6
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/hierynomus/smbfs/SmbFileChannel;->checkIndices(III)V

    const-wide/16 v0, 0x0

    move v2, p2

    :goto_0
    add-int v3, p2, p3

    if-ge v2, v3, :cond_2

    .line 7
    aget-object v3, p1, v2

    .line 8
    :cond_0
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {p0, v3}, Lcom/hierynomus/smbfs/SmbFileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v5, v4

    add-long/2addr v0, v5

    if-nez v4, :cond_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method
