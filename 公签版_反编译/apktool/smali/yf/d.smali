.class public final Lyf/d;
.super Lyf/c;
.source "SourceFile"


# instance fields
.field public c:Ljava/util/zip/Inflater;

.field public final d:[B

.field public final e:[B

.field public f:I


# direct methods
.method public constructor <init>(Lyf/b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lyf/c;-><init>(Lyf/b;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    new-array v0, p1, [B

    .line 6
    .line 7
    iput-object v0, p0, Lyf/d;->e:[B

    .line 8
    .line 9
    new-instance v0, Ljava/util/zip/Inflater;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lyf/d;->c:Ljava/util/zip/Inflater;

    .line 15
    .line 16
    const/16 p1, 0x1000

    .line 17
    .line 18
    new-array p1, p1, [B

    .line 19
    .line 20
    iput-object p1, p0, Lyf/d;->d:[B

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final A(Ljava/io/PushbackInputStream;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lyf/d;->c:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lyf/c;->a:Lyf/b;

    .line 10
    .line 11
    iget-object v1, v1, Lyf/b;->c:[B

    .line 12
    .line 13
    iget v2, p0, Lyf/d;->f:I

    .line 14
    .line 15
    sub-int/2addr v2, v0

    .line 16
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyf/d;->c:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lyf/c;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r(Ljava/io/PushbackInputStream;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyf/d;->c:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lyf/d;->c:Ljava/util/zip/Inflater;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Lyf/c;->r(Ljava/io/PushbackInputStream;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final read()I
    .locals 4

    .line 1
    iget-object v0, p0, Lyf/d;->e:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lyf/d;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v3

    .line 2
    :cond_0
    aget-byte v0, v0, v2

    return v0
.end method

.method public final read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lyf/d;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 5

    .line 4
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lyf/d;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lyf/d;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lyf/d;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lyf/d;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lyf/d;->d:[B

    array-length v2, v0

    .line 8
    iget-object v3, p0, Lyf/c;->a:Lyf/b;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lyf/b;->read([BII)I

    move-result v2

    .line 9
    iput v2, p0, Lyf/d;->f:I

    if-eq v2, v1, :cond_2

    .line 10
    iget-object v1, p0, Lyf/d;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v1, v0, v4, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "Unexpected end of input stream"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    return v1

    :cond_4
    return v0

    .line 12
    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method
