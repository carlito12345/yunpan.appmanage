.class public final Log/a;
.super Lmg/a;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Log/e;

.field public final c:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    new-instance v0, Log/e;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Log/e;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lmg/a;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    iput-object v1, p0, Log/a;->c:[B

    .line 13
    .line 14
    iput-object v0, p0, Log/a;->b:Log/e;

    .line 15
    .line 16
    iput-object p1, p0, Log/a;->a:Ljava/io/InputStream;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Log/a;->b:Log/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Log/e;->b:Ld/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Ld/b;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final close()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Log/a;->b:Log/e;

    .line 3
    .line 4
    sget-object v2, Lsg/b;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :try_start_1
    invoke-virtual {v1}, Log/e;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    .line 11
    :catch_0
    :cond_0
    :try_start_2
    iput-object v0, p0, Log/a;->b:Log/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    .line 13
    iget-object v1, p0, Log/a;->a:Ljava/io/InputStream;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iput-object v0, p0, Log/a;->a:Ljava/io/InputStream;

    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    iget-object v2, p0, Log/a;->a:Ljava/io/InputStream;

    .line 25
    .line 26
    sget-object v3, Lsg/b;->a:[B

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 31
    .line 32
    .line 33
    :cond_2
    iput-object v0, p0, Log/a;->a:Ljava/io/InputStream;

    .line 34
    .line 35
    throw v1
.end method

.method public final read()I
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Log/a;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid return value from read: "

    .line 4
    invoke-static {v1, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return v2
.end method

.method public final read([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Log/a;->b:Log/e;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 11
    :try_start_0
    invoke-virtual {v0, p2, p3, p1}, Log/e;->A(II[B)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    iget-object p2, p0, Log/a;->b:Log/e;

    .line 13
    iget-object p2, p2, Log/e;->c:Lrg/a;

    .line 14
    iget-object p2, p2, Lrg/a;->a:Lxg/b;

    .line 15
    invoke-virtual {p2}, Lxg/b;->J()J

    if-ne p1, v1, :cond_2

    .line 16
    iget-object p2, p0, Log/a;->b:Log/e;

    .line 17
    sget-object p3, Lsg/b;->a:[B

    if-eqz p2, :cond_1

    .line 18
    :try_start_1
    invoke-virtual {p2}, Log/e;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Log/a;->b:Log/e;

    :cond_2
    move v1, p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 20
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Invalid Deflate64 input"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    return v1
.end method
