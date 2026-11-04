.class public final Lyh/j;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/InputStream;

.field public final b:Lbi/b;

.field public c:Ljava/io/IOException;

.field public final d:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lyh/j;->c:Ljava/io/IOException;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lyh/j;->d:[B

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lyh/j;->a:Ljava/io/InputStream;

    .line 16
    .line 17
    new-instance p1, Lbi/b;

    .line 18
    .line 19
    invoke-direct {p1, p2}, Lbi/b;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lyh/j;->b:Lbi/b;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/j;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lyh/j;->c:Ljava/io/IOException;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    throw v1

    .line 15
    :cond_1
    new-instance v0, Lyh/f0;

    .line 16
    .line 17
    const-string v1, "Stream closed"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lyh/f0;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/j;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lyh/j;->a:Ljava/io/InputStream;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lyh/j;->a:Ljava/io/InputStream;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lyh/j;->d:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lyh/j;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :goto_0
    return v3
.end method

.method public final read([BII)I
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lyh/j;->a:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    .line 3
    iget-object v2, p0, Lyh/j;->c:Ljava/io/IOException;

    if-nez v2, :cond_5

    .line 4
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v1, p0, Lyh/j;->b:Lbi/b;

    iget v2, v1, Lbi/a;->a:I

    .line 6
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v1, Lbi/a;->b:Ljava/lang/Object;

    check-cast v5, [B

    if-ge v4, v3, :cond_2

    add-int v6, p2, v4

    .line 7
    aget-byte v7, p1, v6

    aget-byte v5, v5, v4

    add-int/2addr v7, v5

    int-to-byte v5, v7

    aput-byte v5, p1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v4, p3, :cond_3

    add-int v1, p2, v4

    .line 8
    aget-byte v3, p1, v1

    sub-int v6, v1, v2

    aget-byte v6, p1, v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-lt p3, v2, :cond_4

    add-int/2addr p2, p3

    sub-int/2addr p2, v2

    .line 9
    invoke-static {p1, p2, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v4

    .line 10
    invoke-static {v5, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-static {p1, p2, v5, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return p3

    :catch_0
    move-exception p1

    .line 12
    iput-object p1, p0, Lyh/j;->c:Ljava/io/IOException;

    .line 13
    throw p1

    .line 14
    :cond_5
    throw v2

    .line 15
    :cond_6
    new-instance p1, Lyh/f0;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Lyh/f0;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
