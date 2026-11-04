.class public final Lyg/a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:[B

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lyg/a;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lyg/a;->d:I

    .line 13
    .line 14
    monitor-enter p0

    .line 15
    const/16 v0, 0x400

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0, v0}, Lyg/a;->r(I)V

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method


# virtual methods
.method public final declared-synchronized A()[B
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lyg/a;->b:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lsg/b;->a:[B

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lsg/b;->a:[B

    .line 10
    .line 11
    new-array v1, v0, [B

    .line 12
    .line 13
    iget-object v2, p0, Lyg/a;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, [B

    .line 32
    .line 33
    array-length v6, v5

    .line 34
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-static {v5, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    add-int/2addr v4, v6

    .line 42
    sub-int/2addr v0, v6

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    :cond_2
    move-object v0, v1

    .line 46
    :goto_0
    monitor-exit p0

    .line 47
    return-object v0

    .line 48
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final r(I)V
    .locals 3

    .line 1
    iget v0, p0, Lyg/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lyg/a;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lyg/a;->e:I

    .line 14
    .line 15
    iget-object v0, p0, Lyg/a;->c:[B

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    add-int/2addr p1, v0

    .line 19
    iput p1, p0, Lyg/a;->e:I

    .line 20
    .line 21
    iget p1, p0, Lyg/a;->d:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, p0, Lyg/a;->d:I

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, [B

    .line 32
    .line 33
    iput-object p1, p0, Lyg/a;->c:[B

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    iget-object v0, p0, Lyg/a;->c:[B

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    if-lez p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 p1, 0x400

    .line 44
    .line 45
    :goto_0
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lyg/a;->e:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    array-length v0, v0

    .line 50
    shl-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    iget v2, p0, Lyg/a;->e:I

    .line 53
    .line 54
    sub-int/2addr p1, v2

    .line 55
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget v0, p0, Lyg/a;->e:I

    .line 60
    .line 61
    iget-object v2, p0, Lyg/a;->c:[B

    .line 62
    .line 63
    array-length v2, v2

    .line 64
    add-int/2addr v0, v2

    .line 65
    iput v0, p0, Lyg/a;->e:I

    .line 66
    .line 67
    :goto_1
    iget v0, p0, Lyg/a;->d:I

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    iput v0, p0, Lyg/a;->d:I

    .line 72
    .line 73
    sget-object v0, Lsg/b;->a:[B

    .line 74
    .line 75
    new-array p1, p1, [B

    .line 76
    .line 77
    iput-object p1, p0, Lyg/a;->c:[B

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lyg/a;->A()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    .line 12
    :try_start_0
    iget v0, p0, Lyg/a;->b:I

    iget v1, p0, Lyg/a;->e:I

    sub-int v1, v0, v1

    .line 13
    iget-object v2, p0, Lyg/a;->c:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lyg/a;->r(I)V

    const/4 v1, 0x0

    .line 15
    :cond_0
    iget-object v0, p0, Lyg/a;->c:[B

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 16
    iget p1, p0, Lyg/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lyg/a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public final write([B)V
    .locals 2

    .line 11
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lyg/a;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 6

    if-ltz p2, :cond_3

    .line 1
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Lyg/a;->b:I

    add-int v1, v0, p3

    .line 4
    iget v2, p0, Lyg/a;->e:I

    sub-int/2addr v0, v2

    move v2, p3

    :cond_1
    :goto_0
    if-lez v2, :cond_2

    .line 5
    iget-object v3, p0, Lyg/a;->c:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, p2, p3

    sub-int/2addr v4, v2

    .line 6
    iget-object v5, p0, Lyg/a;->c:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v3

    if-lez v2, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lyg/a;->r(I)V

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_2
    iput v1, p0, Lyg/a;->b:I

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
