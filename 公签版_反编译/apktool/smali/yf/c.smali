.class public abstract Lyf/c;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Lyf/b;

.field public final b:[B


# direct methods
.method public constructor <init>(Lyf/b;)V
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
    iput-object v0, p0, Lyf/c;->b:[B

    .line 8
    .line 9
    iput-object p1, p0, Lyf/c;->a:Lyf/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public A(Ljava/io/PushbackInputStream;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyf/c;->a:Lyf/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyf/b;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(Ljava/io/PushbackInputStream;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyf/c;->a:Lyf/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lyf/b;->r(Ljava/io/PushbackInputStream;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lyf/c;->b:[B

    invoke-virtual {p0, v0}, Lyf/c;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 2
    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lyf/c;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 4
    iget-object v0, p0, Lyf/c;->a:Lyf/b;

    invoke-virtual {v0, p1, p2, p3}, Lyf/b;->read([BII)I

    move-result p1

    return p1
.end method
