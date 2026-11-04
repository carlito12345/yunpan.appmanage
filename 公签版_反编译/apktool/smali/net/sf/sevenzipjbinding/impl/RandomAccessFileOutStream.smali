.class public Lnet/sf/sevenzipjbinding/impl/RandomAccessFileOutStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutStream;
.implements Ljava/io/Closeable;


# instance fields
.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileOutStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileOutStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized seek(JI)J
    .locals 2

    .line 1
    const-string v0, "Seek: unknown origin: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    if-eqz p3, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p3, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne p3, v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileOutStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    add-long/2addr v0, p1

    .line 19
    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileOutStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    add-long/2addr v0, p1

    .line 52
    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileOutStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 57
    .line 58
    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileOutStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 64
    .line 65
    .line 66
    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    .line 68
    return-wide p1

    .line 69
    :goto_1
    :try_start_1
    new-instance p2, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 70
    .line 71
    const-string p3, "Error while seek operation"

    .line 72
    .line 73
    invoke-direct {p2, p3, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p2

    .line 77
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1
.end method

.method public declared-synchronized setSize(J)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileOutStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    new-instance p2, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 13
    .line 14
    const-string v0, "Error setting new length of the file"

    .line 15
    .line 16
    invoke-direct {p2, v0, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p2

    .line 20
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public declared-synchronized write([B)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileOutStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 5
    .line 6
    .line 7
    array-length p1, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 14
    .line 15
    const-string v1, "Error reading random access file"

    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method
