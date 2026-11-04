.class public final Lxg/d;
.super Lxg/h;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Lxg/c;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    .line 2
    .line 3
    iget-object v1, p1, Ltg/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ltg/b;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ltg/d;->Q0()[Ljava/nio/file/OpenOption;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ltg/b;->N0([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p1, Lxg/c;->e:Ljava/util/zip/CRC32;

    .line 18
    .line 19
    const-string v3, "builder.checksum"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p1}, Lxg/h;-><init>(Ljava/io/InputStream;Lxg/g;)V

    .line 28
    .line 29
    .line 30
    iget-wide v0, p1, Lxg/c;->f:J

    .line 31
    .line 32
    iput-wide v0, p0, Lxg/d;->f:J

    .line 33
    .line 34
    iget-wide v0, p1, Lxg/c;->g:J

    .line 35
    .line 36
    iput-wide v0, p0, Lxg/d;->e:J

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "origin == null"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method


# virtual methods
.method public final declared-synchronized J(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, -0x1

    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-wide v0, p0, Lxg/d;->d:J

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    add-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lxg/d;->d:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lxg/h;->r(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public final declared-synchronized K()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lxg/d;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized r(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lxg/d;->J(I)V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Lxg/d;->f:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lxg/d;->K()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lxg/d;->f:J

    .line 18
    .line 19
    cmp-long v4, v0, v2

    .line 20
    .line 21
    if-gez v4, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 27
    if-ne p1, v0, :cond_3

    .line 28
    .line 29
    :cond_1
    iget-wide v0, p0, Lxg/d;->e:J

    .line 30
    .line 31
    iget-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 32
    .line 33
    check-cast p1, Ljava/util/zip/CheckedInputStream;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    cmp-long p1, v0, v2

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    const-string v0, "Checksum verification failed."

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_3
    :goto_1
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p1
.end method

.method public final declared-synchronized skip(J)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Lxg/h;->skip(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p1

    .line 6
    iget-wide v0, p0, Lxg/d;->d:J

    .line 7
    .line 8
    add-long/2addr v0, p1

    .line 9
    iput-wide v0, p0, Lxg/d;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-wide p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method
