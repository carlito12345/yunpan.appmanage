.class public final Ly9/g;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;

.field public c:[B

.field public d:I

.field public e:I

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly9/g;->f:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ly9/g;->g:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ly9/g;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Ly9/g;->d:I

    .line 27
    .line 28
    iput v0, p0, Ly9/g;->e:I

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Ly9/g;->c:[B

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Ly9/g;->a:Z

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ly9/g;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public final mark(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final r()V
    .locals 3

    .line 1
    iget v0, p0, Ly9/g;->d:I

    .line 2
    .line 3
    iget v1, p0, Ly9/g;->e:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Ly9/g;->f:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :goto_0
    :try_start_0
    iget v1, p0, Ly9/g;->d:I

    .line 11
    .line 12
    iget v2, p0, Ly9/g;->e:I

    .line 13
    .line 14
    if-lt v1, v2, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Ly9/g;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iput v2, p0, Ly9/g;->d:I

    .line 26
    .line 27
    iput v2, p0, Ly9/g;->e:I

    .line 28
    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :try_start_1
    iget-object v1, p0, Ly9/g;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, [B

    .line 40
    .line 41
    iput-object v1, p0, Ly9/g;->c:[B
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v1

    .line 45
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :goto_1
    iget-object v1, p0, Ly9/g;->c:[B

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iput v2, p0, Ly9/g;->d:I

    .line 53
    .line 54
    array-length v1, v1

    .line 55
    iput v1, p0, Ly9/g;->e:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iput v2, p0, Ly9/g;->d:I

    .line 59
    .line 60
    iput v2, p0, Ly9/g;->e:I

    .line 61
    .line 62
    :cond_2
    monitor-exit v0

    .line 63
    goto :goto_3

    .line 64
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw v1

    .line 66
    :cond_3
    :goto_3
    return-void
.end method

.method public final read()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Ly9/g;->a:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Ly9/g;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ly9/g;->r()V

    .line 4
    iget v2, p0, Ly9/g;->d:I

    iget v3, p0, Ly9/g;->e:I

    if-ge v2, v3, :cond_1

    iget-object v1, p0, Ly9/g;->c:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly9/g;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    .line 5
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final read([BII)I
    .locals 4

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    .line 7
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2

    .line 8
    iget-boolean v0, p0, Ly9/g;->a:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Ly9/g;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Ly9/g;->r()V

    .line 11
    iget v2, p0, Ly9/g;->e:I

    iget v3, p0, Ly9/g;->d:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_1

    .line 12
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13
    iget-object p3, p0, Ly9/g;->c:[B

    iget v2, p0, Ly9/g;->d:I

    invoke-static {p3, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget p1, p0, Ly9/g;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Ly9/g;->d:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public final skip(J)J
    .locals 10

    .line 1
    iget-object v0, p0, Ly9/g;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ly9/g;->r()V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Ly9/g;->e:I

    .line 8
    .line 9
    iget v2, p0, Ly9/g;->d:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v4, p1, v2

    .line 15
    .line 16
    if-gez v4, :cond_0

    .line 17
    .line 18
    move-wide p1, v2

    .line 19
    :cond_0
    move-wide v4, v2

    .line 20
    :goto_0
    cmp-long v6, p1, v2

    .line 21
    .line 22
    if-lez v6, :cond_1

    .line 23
    .line 24
    if-lez v1, :cond_1

    .line 25
    .line 26
    int-to-long v6, v1

    .line 27
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    iget v1, p0, Ly9/g;->d:I

    .line 32
    .line 33
    int-to-long v8, v1

    .line 34
    add-long/2addr v8, v6

    .line 35
    long-to-int v1, v8

    .line 36
    iput v1, p0, Ly9/g;->d:I

    .line 37
    .line 38
    sub-long/2addr p1, v6

    .line 39
    add-long/2addr v4, v6

    .line 40
    invoke-virtual {p0}, Ly9/g;->r()V

    .line 41
    .line 42
    .line 43
    iget v1, p0, Ly9/g;->e:I

    .line 44
    .line 45
    iget v6, p0, Ly9/g;->d:I

    .line 46
    .line 47
    sub-int/2addr v1, v6

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    return-wide v4

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_3

    .line 55
    :goto_2
    throw p1

    .line 56
    :goto_3
    goto :goto_2
.end method
