.class final Lokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache2/Relay$RelaySource;
    }
.end annotation


# static fields
.field private static final FILE_HEADER_SIZE:J = 0x20L

.field static final PREFIX_CLEAN:Lfg/l;

.field static final PREFIX_DIRTY:Lfg/l;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field final buffer:Lfg/i;

.field final bufferMaxSize:J

.field complete:Z

.field file:Ljava/io/RandomAccessFile;

.field private final metadata:Lfg/l;

.field sourceCount:I

.field upstream:Lfg/z;

.field final upstreamBuffer:Lfg/i;

.field upstreamPos:J

.field upstreamReader:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lfg/l;->d:Lfg/l;

    .line 2
    .line 3
    const-string v0, "OkHttp cache v1\n"

    .line 4
    .line 5
    invoke-static {v0}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lfg/l;

    .line 10
    .line 11
    const-string v0, "OkHttp DIRTY :(\n"

    .line 12
    .line 13
    invoke-static {v0}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lfg/l;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lfg/z;JLfg/l;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfg/i;

    .line 5
    .line 6
    invoke-direct {v0}, Lfg/i;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lfg/i;

    .line 10
    .line 11
    new-instance v0, Lfg/i;

    .line 12
    .line 13
    invoke-direct {v0}, Lfg/i;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay;->buffer:Lfg/i;

    .line 17
    .line 18
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 19
    .line 20
    iput-object p2, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lfg/z;

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 28
    .line 29
    iput-wide p3, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 30
    .line 31
    iput-object p5, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lfg/l;

    .line 32
    .line 33
    iput-wide p6, p0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    .line 34
    .line 35
    return-void
.end method

.method public static edit(Ljava/io/File;Lfg/z;Lfg/l;J)Lokhttp3/internal/cache2/Relay;
    .locals 9

    .line 1
    new-instance v8, Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-string v0, "rw"

    .line 4
    .line 5
    invoke-direct {v8, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lokhttp3/internal/cache2/Relay;

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v1, v8

    .line 14
    move-object v2, p1

    .line 15
    move-object v5, p2

    .line 16
    move-wide v6, p3

    .line 17
    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lfg/z;JLfg/l;J)V

    .line 18
    .line 19
    .line 20
    const-wide/16 p1, 0x0

    .line 21
    .line 22
    invoke-virtual {v8, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lfg/l;

    .line 26
    .line 27
    const-wide/16 v3, -0x1

    .line 28
    .line 29
    const-wide/16 v5, -0x1

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lfg/l;JJ)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public static read(Ljava/io/File;)Lokhttp3/internal/cache2/Relay;
    .locals 10

    .line 1
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-string v0, "rw"

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lokhttp3/internal/cache2/FileOperator;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lfg/i;

    .line 18
    .line 19
    invoke-direct {v0}, Lfg/i;-><init>()V

    .line 20
    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    const-wide/16 v6, 0x20

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    move-object v5, v0

    .line 28
    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/cache2/FileOperator;->read(JLfg/i;J)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lfg/l;

    .line 32
    .line 33
    invoke-virtual {v2}, Lfg/l;->g()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    int-to-long v3, v3

    .line 38
    invoke-virtual {v0, v3, v4}, Lfg/i;->c(J)Lfg/l;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, v2}, Lfg/l;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lfg/i;->readLong()J

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    invoke-virtual {v0}, Lfg/i;->readLong()J

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    new-instance v0, Lfg/i;

    .line 57
    .line 58
    invoke-direct {v0}, Lfg/i;-><init>()V

    .line 59
    .line 60
    .line 61
    const-wide/16 v2, 0x20

    .line 62
    .line 63
    add-long v4, v8, v2

    .line 64
    .line 65
    move-object v2, p0

    .line 66
    move-wide v3, v4

    .line 67
    move-object v5, v0

    .line 68
    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/cache2/FileOperator;->read(JLfg/i;J)V

    .line 69
    .line 70
    .line 71
    iget-wide v2, v0, Lfg/i;->b:J

    .line 72
    .line 73
    invoke-virtual {v0, v2, v3}, Lfg/i;->c(J)Lfg/l;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    new-instance p0, Lokhttp3/internal/cache2/Relay;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    const-wide/16 v6, 0x0

    .line 81
    .line 82
    move-object v0, p0

    .line 83
    move-wide v3, v8

    .line 84
    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lfg/z;JLfg/l;J)V

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 89
    .line 90
    const-string v0, "unreadable cache file"

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method private writeHeader(Lfg/l;JJ)V
    .locals 6

    .line 1
    new-instance v3, Lfg/i;

    .line 2
    .line 3
    invoke-direct {v3}, Lfg/i;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v3, p1}, Lfg/i;->T(Lfg/l;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v3, p2, p3}, Lfg/i;->a0(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, p4, p5}, Lfg/i;->a0(J)V

    .line 13
    .line 14
    .line 15
    iget-wide p1, v3, Lfg/i;->b:J

    .line 16
    .line 17
    const-wide/16 p3, 0x20

    .line 18
    .line 19
    cmp-long p5, p1, p3

    .line 20
    .line 21
    if-nez p5, :cond_0

    .line 22
    .line 23
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    .line 24
    .line 25
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    const-wide/16 v4, 0x20

    .line 37
    .line 38
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->write(JLfg/i;J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method private writeMetadata(J)V
    .locals 6

    .line 1
    new-instance v3, Lfg/i;

    .line 2
    .line 3
    invoke-direct {v3}, Lfg/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lfg/l;

    .line 7
    .line 8
    invoke-virtual {v3, v0}, Lfg/i;->T(Lfg/l;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    .line 12
    .line 13
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v1, 0x20

    .line 23
    .line 24
    add-long/2addr v1, p1

    .line 25
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lfg/l;

    .line 26
    .line 27
    invoke-virtual {p1}, Lfg/l;->g()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-long v4, p1

    .line 32
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->write(JLfg/i;J)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public commit(J)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache2/Relay;->writeMetadata(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 12
    .line 13
    .line 14
    sget-object v3, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lfg/l;

    .line 15
    .line 16
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lfg/l;

    .line 17
    .line 18
    invoke-virtual {v0}, Lfg/l;->g()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-long v6, v0

    .line 23
    move-object v2, p0

    .line 24
    move-wide v4, p1

    .line 25
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lfg/l;JJ)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 35
    .line 36
    .line 37
    monitor-enter p0

    .line 38
    const/4 p1, 0x1

    .line 39
    :try_start_0
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 40
    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lfg/z;

    .line 43
    .line 44
    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lfg/z;

    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p1
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public metadata()Lfg/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lfg/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public newSource()Lfg/z;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput v0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 16
    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    new-instance v0, Lokhttp3/internal/cache2/Relay$RelaySource;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lokhttp3/internal/cache2/Relay$RelaySource;-><init>(Lokhttp3/internal/cache2/Relay;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method
