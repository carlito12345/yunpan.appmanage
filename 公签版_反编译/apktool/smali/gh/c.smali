.class public final Lgh/c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Lgh/a;

.field public b:Z


# direct methods
.method public constructor <init>(Lgh/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgh/c;->a:Lgh/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lgh/c;->a:Lgh/a;

    .line 2
    .line 3
    iget-object v1, v0, Lch/d;->e:Ljava/io/OutputStream;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    iput-object v2, v0, Lch/d;->e:Ljava/io/OutputStream;

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    iput-object v2, v0, Lch/d;->e:Ljava/io/OutputStream;

    .line 17
    .line 18
    throw v1
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgh/c;->a:Lgh/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgh/a;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 5

    .line 5
    iget-object v0, p0, Lgh/c;->a:Lgh/a;

    monitor-enter v0

    const/16 v1, 0xff

    and-int/2addr p1, v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lgh/c;->a:Lgh/a;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Lgh/a;->p(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 8
    iget-boolean v2, p0, Lgh/c;->b:Z

    const/16 v4, 0xa

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lgh/c;->a:Lgh/a;

    invoke-virtual {v2, v4}, Lgh/a;->q(I)V

    if-ne p1, v4, :cond_0

    .line 10
    iput-boolean v3, p0, Lgh/c;->b:Z

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 v2, 0xd

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 12
    iget-object v1, p0, Lgh/c;->a:Lgh/a;

    invoke-virtual {v1, p1}, Lgh/a;->q(I)V

    .line 13
    iput-boolean v3, p0, Lgh/c;->b:Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lgh/c;->a:Lgh/a;

    invoke-virtual {p1, v1}, Lgh/a;->q(I)V

    .line 15
    iget-object p1, p0, Lgh/c;->a:Lgh/a;

    invoke-virtual {p1, v1}, Lgh/a;->q(I)V

    .line 16
    iput-boolean v3, p0, Lgh/c;->b:Z

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lgh/c;->a:Lgh/a;

    invoke-virtual {p1, v2}, Lgh/a;->q(I)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lgh/c;->b:Z

    goto :goto_0

    .line 19
    :cond_3
    iget-boolean v1, p0, Lgh/c;->b:Z

    if-nez v1, :cond_4

    .line 20
    iget-object v1, p0, Lgh/c;->a:Lgh/a;

    invoke-virtual {v1, v2}, Lgh/a;->q(I)V

    .line 21
    :cond_4
    iget-object v1, p0, Lgh/c;->a:Lgh/a;

    invoke-virtual {v1, p1}, Lgh/a;->q(I)V

    .line 22
    iput-boolean v3, p0, Lgh/c;->b:Z

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    .line 23
    iget-object v2, p0, Lgh/c;->a:Lgh/a;

    invoke-virtual {v2, p1}, Lgh/a;->q(I)V

    .line 24
    iget-object p1, p0, Lgh/c;->a:Lgh/a;

    invoke-virtual {p1, v1}, Lgh/a;->q(I)V

    goto :goto_0

    .line 25
    :cond_6
    iget-object v1, p0, Lgh/c;->a:Lgh/a;

    invoke-virtual {v1, p1}, Lgh/a;->q(I)V

    .line 26
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final write([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgh/c;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 2
    iget-object v0, p0, Lgh/c;->a:Lgh/a;

    monitor-enter v0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    add-int/lit8 p3, p2, 0x1

    .line 3
    :try_start_0
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lgh/c;->write(I)V

    move p2, p3

    move p3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
