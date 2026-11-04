.class public Lcom/android/apksig/internal/util/FileChannelDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/apksig/util/DataSource;


# static fields
.field private static final MAX_READ_CHUNK_SIZE:I = 0x100000


# instance fields
.field private final mChannel:Ljava/nio/channels/FileChannel;

.field private final mOffset:J

.field private final mSize:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mOffset:J

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mSize:J

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p4, v0

    if-ltz v2, :cond_0

    .line 6
    iput-object p1, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    .line 7
    iput-wide p2, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mOffset:J

    .line 8
    iput-wide p4, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mSize:J

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "size: "

    .line 10
    invoke-static {p4, p5, p2}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "offset: "

    .line 13
    invoke-static {p4, p5, p2}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkChunkValid(JJJ)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-ltz v2, :cond_4

    .line 6
    .line 7
    cmp-long v2, p2, v0

    .line 8
    .line 9
    if-ltz v2, :cond_3

    .line 10
    .line 11
    const-string v0, ")"

    .line 12
    .line 13
    const-string v1, ") > source size ("

    .line 14
    .line 15
    const-string v2, "offset ("

    .line 16
    .line 17
    cmp-long v3, p0, p4

    .line 18
    .line 19
    if-gtz v3, :cond_2

    .line 20
    .line 21
    add-long v3, p0, p2

    .line 22
    .line 23
    const-string v5, ") + size ("

    .line 24
    .line 25
    cmp-long v6, v3, p0

    .line 26
    .line 27
    if-ltz v6, :cond_1

    .line 28
    .line 29
    cmp-long v6, v3, p4

    .line 30
    .line 31
    if-gtz v6, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 35
    .line 36
    invoke-static {p0, p1, v2, v5}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v3, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v3

    .line 60
    :cond_1
    new-instance p4, Ljava/lang/IndexOutOfBoundsException;

    .line 61
    .line 62
    invoke-static {p0, p1, v2, v5}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, ") overflow"

    .line 67
    .line 68
    invoke-static {p0, p2, p3, p1}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {p4, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p4

    .line 76
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 77
    .line 78
    invoke-static {p0, p1, v2, v1}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0, p4, p5, v0}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p2

    .line 90
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 91
    .line 92
    const-string p1, "size: "

    .line 93
    .line 94
    invoke-static {p2, p3, p1}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 103
    .line 104
    const-string p3, "offset: "

    .line 105
    .line 106
    invoke-static {p0, p1, p3}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p2
.end method


# virtual methods
.method public copyTo(JILjava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/apksig/internal/util/FileChannelDataSource;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    int-to-long v2, p3

    .line 6
    move-wide v0, p1

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/util/FileChannelDataSource;->checkChunkValid(JJJ)V

    .line 8
    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gt p3, v0, :cond_2

    .line 18
    .line 19
    iget-wide v0, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mOffset:J

    .line 20
    .line 21
    add-long/2addr v0, p1

    .line 22
    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    :try_start_0
    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    add-int/2addr p2, p3

    .line 31
    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    :goto_0
    if-lez p3, :cond_1

    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    .line 37
    .line 38
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    iget-object v2, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    .line 40
    .line 41
    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    .line 45
    .line 46
    invoke-virtual {v2, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    monitor-exit p2

    .line 51
    int-to-long v3, v2

    .line 52
    add-long/2addr v0, v3

    .line 53
    sub-int/2addr p3, v2

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p3

    .line 56
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    :catchall_1
    move-exception p2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :goto_1
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 65
    .line 66
    .line 67
    throw p2

    .line 68
    :cond_2
    new-instance p1, Ljava/nio/BufferOverflowException;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_2
    throw p1

    .line 75
    :goto_3
    goto :goto_2
.end method

.method public feed(JJLcom/android/apksig/util/DataSink;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/apksig/internal/util/FileChannelDataSource;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    move-wide v0, p1

    .line 6
    move-wide v2, p3

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/util/FileChannelDataSource;->checkChunkValid(JJJ)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long v2, p3, v0

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-wide v2, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mOffset:J

    .line 18
    .line 19
    add-long/2addr v2, p1

    .line 20
    const-wide/32 p1, 0x100000

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    long-to-int p2, p1

    .line 28
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    cmp-long p2, p3, v0

    .line 33
    .line 34
    if-lez p2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    int-to-long v4, p2

    .line 41
    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    long-to-int p2, v4

    .line 46
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    .line 50
    .line 51
    monitor-enter v4

    .line 52
    :try_start_0
    iget-object v5, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    .line 53
    .line 54
    invoke-virtual {v5, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 55
    .line 56
    .line 57
    move v5, p2

    .line 58
    :goto_1
    if-lez v5, :cond_2

    .line 59
    .line 60
    iget-object v6, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    .line 61
    .line 62
    invoke-virtual {v6, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-ltz v6, :cond_1

    .line 67
    .line 68
    sub-int/2addr v5, v6

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 71
    .line 72
    const-string p2, "Unexpected EOF encountered"

    .line 73
    .line 74
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 82
    .line 83
    .line 84
    invoke-interface {p5, p1}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 88
    .line 89
    .line 90
    int-to-long v4, p2

    .line 91
    add-long/2addr v2, v4

    .line 92
    sub-long/2addr p3, v4

    .line 93
    goto :goto_0

    .line 94
    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p1

    .line 96
    :cond_3
    return-void
.end method

.method public getByteBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    if-ltz p3, :cond_0

    .line 2
    .line 3
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/apksig/internal/util/FileChannelDataSource;->copyTo(JILjava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 15
    .line 16
    const-string p2, "size: "

    .line 17
    .line 18
    invoke-static {p3, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public size()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mSize:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-wide v0

    .line 16
    :catch_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    :cond_0
    return-wide v0
.end method

.method public slice(JJ)Lcom/android/apksig/internal/util/FileChannelDataSource;
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/android/apksig/internal/util/FileChannelDataSource;->size()J

    move-result-wide v6

    move-wide v0, p1

    move-wide v2, p3

    move-wide v4, v6

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/util/FileChannelDataSource;->checkChunkValid(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/apksig/internal/util/FileChannelDataSource;

    iget-object v2, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    iget-wide v3, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mOffset:J

    add-long/2addr v3, p1

    move-object v1, v0

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/apksig/internal/util/FileChannelDataSource;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    return-object v0
.end method

.method public bridge synthetic slice(JJ)Lcom/android/apksig/util/DataSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/util/FileChannelDataSource;->slice(JJ)Lcom/android/apksig/internal/util/FileChannelDataSource;

    move-result-object p1

    return-object p1
.end method
