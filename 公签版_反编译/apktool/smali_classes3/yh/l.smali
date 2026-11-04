.class public final Lyh/l;
.super Lyh/p;
.source "SourceFile"


# instance fields
.field public a:Lyh/q;

.field public final b:Lbi/b;

.field public final c:[B

.field public d:Ljava/io/IOException;

.field public final e:[B


# direct methods
.method public constructor <init>(Lyh/q;Lyh/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lyh/p;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1000

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lyh/l;->c:[B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lyh/l;->d:Ljava/io/IOException;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    iput-object v0, p0, Lyh/l;->e:[B

    .line 17
    .line 18
    iput-object p1, p0, Lyh/l;->a:Lyh/q;

    .line 19
    .line 20
    new-instance p1, Lbi/b;

    .line 21
    .line 22
    iget p2, p2, Lyh/k;->a:I

    .line 23
    .line 24
    invoke-direct {p1, p2}, Lbi/b;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lyh/l;->b:Lbi/b;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/l;->a:Lyh/q;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lyh/q;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lyh/l;->d:Ljava/io/IOException;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput-object v0, p0, Lyh/l;->d:Ljava/io/IOException;

    .line 15
    .line 16
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lyh/l;->a:Lyh/q;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lyh/l;->d:Ljava/io/IOException;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    throw v0
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyh/l;->d:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lyh/l;->a:Lyh/q;

    .line 6
    .line 7
    invoke-virtual {v0}, Lyh/q;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    iput-object v0, p0, Lyh/l;->d:Ljava/io/IOException;

    .line 13
    .line 14
    throw v0

    .line 15
    :cond_0
    throw v0
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 1
    iget-object v0, p0, Lyh/l;->e:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lyh/l;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    .line 3
    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lyh/l;->d:Ljava/io/IOException;

    if-nez v0, :cond_1

    :goto_0
    const/16 v0, 0x1000

    .line 5
    iget-object v1, p0, Lyh/l;->b:Lbi/b;

    iget-object v2, p0, Lyh/l;->c:[B

    if-le p3, v0, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {v1, p2, v0, p1, v2}, Lbi/b;->c(II[B[B)V

    .line 7
    iget-object v0, p0, Lyh/l;->a:Lyh/q;

    invoke-virtual {v0, v2}, Lyh/q;->write([B)V

    add-int/lit16 p2, p2, 0x1000

    add-int/lit16 p3, p3, -0x1000

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v1, p2, p3, p1, v2}, Lbi/b;->c(II[B[B)V

    .line 9
    iget-object p1, p0, Lyh/l;->a:Lyh/q;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2, p3}, Lyh/q;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :goto_1
    iput-object p1, p0, Lyh/l;->d:Ljava/io/IOException;

    .line 11
    throw p1

    .line 12
    :cond_1
    throw v0

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
