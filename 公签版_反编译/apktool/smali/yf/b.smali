.class public abstract Lyf/b;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Lyf/i;

.field public final b:Ltf/c;

.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>(Lyf/i;Lag/g;[CZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lyf/b;->d:[B

    .line 8
    .line 9
    iput-object p1, p0, Lyf/b;->a:Lyf/i;

    .line 10
    .line 11
    invoke-virtual {p0, p2, p3, p4}, Lyf/b;->A(Lag/g;[CZ)Ltf/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lyf/b;->b:Ltf/c;

    .line 16
    .line 17
    invoke-static {p2}, Leg/c;->f(Lag/b;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x2

    .line 22
    invoke-static {p1, p2}, Ld0/f;->a(II)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/16 p1, 0x1000

    .line 29
    .line 30
    new-array p1, p1, [B

    .line 31
    .line 32
    iput-object p1, p0, Lyf/b;->c:[B

    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract A(Lag/g;[CZ)Ltf/c;
.end method

.method public final J([B)V
    .locals 7

    .line 1
    iget-object v0, p0, Lyf/b;->a:Lyf/i;

    .line 2
    .line 3
    iget-object v0, v0, Lyf/i;->a:Ljava/io/PushbackInputStream;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_4

    .line 11
    .line 12
    array-length v3, p1

    .line 13
    if-eq v1, v3, :cond_3

    .line 14
    .line 15
    array-length v3, p1

    .line 16
    sub-int/2addr v3, v1

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    array-length v6, p1

    .line 20
    if-ge v1, v6, :cond_1

    .line 21
    .line 22
    if-eq v4, v2, :cond_1

    .line 23
    .line 24
    const/16 v6, 0xf

    .line 25
    .line 26
    if-ge v5, v6, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1, v3}, Ljava/io/InputStream;->read([BII)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    add-int/2addr v4, v6

    .line 33
    if-lez v4, :cond_0

    .line 34
    .line 35
    add-int/2addr v1, v4

    .line 36
    sub-int/2addr v3, v4

    .line 37
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    array-length p1, p1

    .line 41
    if-ne v1, p1, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string v0, "Cannot read fully into byte buffer"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_3
    :goto_1
    return-void

    .line 53
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 54
    .line 55
    const-string v0, "Unexpected EOF reached when trying to read stream"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :goto_2
    throw p1

    .line 62
    :goto_3
    goto :goto_2
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyf/b;->a:Lyf/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyf/i;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(Ljava/io/PushbackInputStream;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lyf/b;->d:[B

    invoke-virtual {p0, v0}, Lyf/b;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 2
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lyf/b;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 4
    iget-object v0, p0, Lyf/b;->a:Lyf/i;

    invoke-static {v0, p1, p2, p3}, Leg/c;->k(Ljava/io/InputStream;[BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 5
    iget-object v0, p0, Lyf/b;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    :cond_0
    iget-object v0, p0, Lyf/b;->b:Ltf/c;

    invoke-interface {v0, p2, p3, p1}, Ltf/c;->m(II[B)I

    :cond_1
    return p3
.end method
