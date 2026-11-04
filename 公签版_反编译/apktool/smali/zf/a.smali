.class public final Lzf/a;
.super Lzf/b;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public d:I


# direct methods
.method public constructor <init>(Lzf/i;Lag/m;[CZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lzf/b;-><init>(Lzf/i;Lag/m;[CZ)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x10

    .line 5
    .line 6
    new-array p1, p1, [B

    .line 7
    .line 8
    iput-object p1, p0, Lzf/a;->c:[B

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lzf/a;->d:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final A(Lag/m;[CZ)Ltf/d;
    .locals 1

    .line 1
    new-instance v0, Ltf/b;

    .line 2
    .line 3
    iget p1, p1, Lag/m;->e:I

    .line 4
    .line 5
    invoke-direct {v0, p2, p1, p3}, Ltf/b;-><init>([CIZ)V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Ltf/b;->j:[B

    .line 9
    .line 10
    iget-object p2, p0, Lzf/b;->a:Lzf/i;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lzf/i;->write([B)V

    .line 13
    .line 14
    .line 15
    iget-object p1, v0, Ltf/b;->i:[B

    .line 16
    .line 17
    iget-object p2, p0, Lzf/b;->a:Lzf/i;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lzf/i;->write([B)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final r()V
    .locals 4

    .line 1
    iget v0, p0, Lzf/a;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lzf/a;->c:[B

    .line 7
    .line 8
    invoke-super {p0, v2, v1, v0}, Lzf/b;->write([BII)V

    .line 9
    .line 10
    .line 11
    iput v1, p0, Lzf/a;->d:I

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lzf/b;->b:Ltf/d;

    .line 14
    .line 15
    check-cast v0, Ltf/b;

    .line 16
    .line 17
    iget-object v0, v0, Ltf/b;->b:Landroidx/room/s;

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/io/ByteArrayOutputStream;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-lez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/room/s;->e(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ljavax/crypto/Mac;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/16 v2, 0xa

    .line 41
    .line 42
    new-array v3, v2, [B

    .line 43
    .line 44
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lzf/b;->a:Lzf/i;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3, v1, v2}, Lzf/i;->write([BII)V

    .line 53
    .line 54
    .line 55
    invoke-super {p0}, Lzf/b;->r()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lzf/a;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lzf/a;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 4

    .line 4
    iget v0, p0, Lzf/a;->d:I

    rsub-int/lit8 v1, v0, 0x10

    iget-object v2, p0, Lzf/a;->c:[B

    if-lt p3, v1, :cond_1

    rsub-int/lit8 v1, v0, 0x10

    .line 5
    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length p2, v2

    const/4 v0, 0x0

    invoke-super {p0, v2, v0, p2}, Lzf/b;->write([BII)V

    .line 7
    iget p2, p0, Lzf/a;->d:I

    rsub-int/lit8 p2, p2, 0x10

    sub-int/2addr p3, p2

    .line 8
    iput v0, p0, Lzf/a;->d:I

    if-eqz p3, :cond_0

    .line 9
    rem-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_0

    add-int v3, p3, p2

    sub-int/2addr v3, v1

    .line 10
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput v1, p0, Lzf/a;->d:I

    sub-int/2addr p3, v1

    .line 12
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lzf/b;->write([BII)V

    return-void

    .line 13
    :cond_1
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget p1, p0, Lzf/a;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lzf/a;->d:I

    return-void
.end method
