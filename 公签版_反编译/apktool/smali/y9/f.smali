.class public final Ly9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ly9/b;

.field public final b:I

.field public c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ly9/g;

.field public f:Z


# direct methods
.method public constructor <init>(Ly9/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly9/f;->a:Ly9/b;

    .line 5
    .line 6
    iput p2, p0, Ly9/f;->b:I

    .line 7
    .line 8
    new-instance p1, Ly9/g;

    .line 9
    .line 10
    invoke-direct {p1}, Ly9/g;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ly9/f;->e:Ly9/g;

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
    iput-object p1, p0, Ly9/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    iput-boolean p2, p0, Ly9/f;->f:Z

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    monitor-enter p0

    .line 12
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ly9/f;->f:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Ly9/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-boolean v0, p0, Ly9/f;->f:Z

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget v0, p0, Ly9/f;->b:I

    .line 38
    .line 39
    iget v2, p0, Ly9/f;->c:I

    .line 40
    .line 41
    const v3, 0x45545257

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v0, v2, p1}, Ly9/e;->a(III[B)[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p0, Ly9/f;->a:Ly9/b;

    .line 49
    .line 50
    iget-object v0, v0, Ly9/b;->d:Ljava/io/OutputStream;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Ly9/f;->a:Ly9/b;

    .line 56
    .line 57
    iget-object p1, p1, Ly9/b;->d:Ljava/io/OutputStream;

    .line 58
    .line 59
    iget v0, p0, Ly9/f;->b:I

    .line 60
    .line 61
    iget v2, p0, Ly9/f;->c:I

    .line 62
    .line 63
    new-array v1, v1, [B

    .line 64
    .line 65
    invoke-static {v3, v0, v2, v1}, Ly9/e;->a(III[B)[B

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Ly9/f;->a:Ly9/b;

    .line 73
    .line 74
    iget-object p1, p1, Ly9/b;->d:Ljava/io/OutputStream;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 81
    .line 82
    const-string v0, "Stream closed"

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    goto :goto_3

    .line 90
    :goto_2
    throw p1

    .line 91
    :goto_3
    goto :goto_2
.end method

.method public final J([B)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ly9/f;->f:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly9/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

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
    goto :goto_1

    .line 22
    :cond_0
    iget-boolean v0, p0, Ly9/f;->f:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget v0, p0, Ly9/f;->b:I

    .line 28
    .line 29
    iget v1, p0, Ly9/f;->c:I

    .line 30
    .line 31
    const v2, 0x45545257

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v0, v1, p1}, Ly9/e;->a(III[B)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Ly9/f;->a:Ly9/b;

    .line 39
    .line 40
    iget-object v0, v0, Ly9/b;->d:Ljava/io/OutputStream;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Ly9/f;->a:Ly9/b;

    .line 46
    .line 47
    iget-object p1, p1, Ly9/b;->d:Ljava/io/OutputStream;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 54
    .line 55
    const-string v0, "Stream closed"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_3

    .line 63
    :goto_2
    throw p1

    .line 64
    :goto_3
    goto :goto_2
.end method

.method public final close()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ly9/f;->f:Z

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
    invoke-virtual {p0}, Ly9/f;->r()V

    .line 11
    .line 12
    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget v0, p0, Ly9/f;->b:I

    .line 15
    .line 16
    iget v1, p0, Ly9/f;->c:I

    .line 17
    .line 18
    const v2, 0x45534c43

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v2, v0, v1, v3}, Ly9/e;->a(III[B)[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :try_start_1
    iget-object v1, p0, Ly9/f;->a:Ly9/b;

    .line 27
    .line 28
    iget-object v1, v1, Ly9/b;->d:Ljava/io/OutputStream;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Ly9/f;->a:Ly9/b;

    .line 34
    .line 35
    iget-object v0, v0, Ly9/b;->d:Ljava/io/OutputStream;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    :catch_0
    :try_start_2
    iget-object v0, p0, Ly9/f;->e:Ly9/g;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, v0, Ly9/g;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    .line 45
    :catch_1
    return-void

    .line 46
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    throw v0
.end method

.method public final r()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly9/f;->f:Z

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

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v0
.end method
