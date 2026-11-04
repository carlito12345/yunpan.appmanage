.class public final Lyf/a;
.super Lyf/b;
.source "SourceFile"


# instance fields
.field public final e:[B

.field public final f:[B

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Lyf/i;Lag/g;[CZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lyf/b;-><init>(Lyf/i;Lag/g;[CZ)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    new-array p1, p1, [B

    .line 6
    .line 7
    iput-object p1, p0, Lyf/a;->e:[B

    .line 8
    .line 9
    const/16 p1, 0x10

    .line 10
    .line 11
    new-array p1, p1, [B

    .line 12
    .line 13
    iput-object p1, p0, Lyf/a;->f:[B

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lyf/a;->g:I

    .line 17
    .line 18
    iput p1, p0, Lyf/a;->h:I

    .line 19
    .line 20
    iput p1, p0, Lyf/a;->i:I

    .line 21
    .line 22
    iput p1, p0, Lyf/a;->j:I

    .line 23
    .line 24
    iput p1, p0, Lyf/a;->k:I

    .line 25
    .line 26
    iput p1, p0, Lyf/a;->l:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final A(Lag/g;[CZ)Ltf/c;
    .locals 7

    .line 1
    new-instance v6, Ltf/a;

    .line 2
    .line 3
    iget-object v1, p1, Lag/b;->q:Lag/a;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget p1, v1, Lag/a;->f:I

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/support/v4/media/session/a;->h(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-array v3, p1, [B

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Lyf/b;->J([B)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    new-array v4, p1, [B

    .line 22
    .line 23
    invoke-virtual {p0, v4}, Lyf/b;->J([B)V

    .line 24
    .line 25
    .line 26
    move-object v0, v6

    .line 27
    move-object v2, p2

    .line 28
    move v5, p3

    .line 29
    invoke-direct/range {v0 .. v5}, Ltf/a;-><init>(Lag/a;[C[B[BZ)V

    .line 30
    .line 31
    .line 32
    return-object v6

    .line 33
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 34
    .line 35
    const-string p2, "Invalid aes key strength in aes extra data record"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 42
    .line 43
    const-string p2, "invalid aes extra data record"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public final K(I[B)V
    .locals 3

    .line 1
    iget v0, p0, Lyf/a;->i:I

    .line 2
    .line 3
    iget v1, p0, Lyf/a;->h:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iput v0, p0, Lyf/a;->l:I

    .line 10
    .line 11
    iget-object v1, p0, Lyf/a;->f:[B

    .line 12
    .line 13
    iget v2, p0, Lyf/a;->g:I

    .line 14
    .line 15
    invoke-static {v1, v2, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lyf/a;->l:I

    .line 19
    .line 20
    iget p2, p0, Lyf/a;->g:I

    .line 21
    .line 22
    add-int/2addr p2, p1

    .line 23
    iput p2, p0, Lyf/a;->g:I

    .line 24
    .line 25
    const/16 v0, 0xf

    .line 26
    .line 27
    if-lt p2, v0, :cond_1

    .line 28
    .line 29
    iput v0, p0, Lyf/a;->g:I

    .line 30
    .line 31
    :cond_1
    iget p2, p0, Lyf/a;->h:I

    .line 32
    .line 33
    sub-int/2addr p2, p1

    .line 34
    iput p2, p0, Lyf/a;->h:I

    .line 35
    .line 36
    if-gtz p2, :cond_2

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lyf/a;->h:I

    .line 40
    .line 41
    :cond_2
    iget p2, p0, Lyf/a;->k:I

    .line 42
    .line 43
    add-int/2addr p2, p1

    .line 44
    iput p2, p0, Lyf/a;->k:I

    .line 45
    .line 46
    iget p2, p0, Lyf/a;->i:I

    .line 47
    .line 48
    sub-int/2addr p2, p1

    .line 49
    iput p2, p0, Lyf/a;->i:I

    .line 50
    .line 51
    iget p2, p0, Lyf/a;->j:I

    .line 52
    .line 53
    add-int/2addr p2, p1

    .line 54
    iput p2, p0, Lyf/a;->j:I

    .line 55
    .line 56
    return-void
.end method

.method public final r(Ljava/io/PushbackInputStream;I)V
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    invoke-static {p1, v1}, Leg/c;->j(Ljava/io/InputStream;[B)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p1, v0, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lyf/b;->b:Ltf/c;

    .line 12
    .line 13
    check-cast p1, Ltf/a;

    .line 14
    .line 15
    iget-object p1, p1, Ltf/a;->b:Landroidx/room/s;

    .line 16
    .line 17
    iget-object v2, p1, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Ljava/io/ByteArrayOutputStream;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroidx/room/s;->e(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Ljavax/crypto/Mac;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-array p2, v0, [B

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 52
    .line 53
    const-string p2, "Reached end of data for this entry, but aes verification failed"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    new-instance p1, Lwf/a;

    .line 60
    .line 61
    const-string p2, "Invalid AES Mac bytes. Could not read sufficient data"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final read()I
    .locals 4

    .line 1
    iget-object v0, p0, Lyf/a;->e:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lyf/a;->read([BII)I

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

    invoke-virtual {p0, p1, v1, v0}, Lyf/a;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3

    .line 4
    iput p3, p0, Lyf/a;->i:I

    .line 5
    iput p2, p0, Lyf/a;->j:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lyf/a;->k:I

    .line 7
    iget v1, p0, Lyf/a;->h:I

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0, p2, p1}, Lyf/a;->K(I[B)V

    .line 9
    iget p2, p0, Lyf/a;->k:I

    if-ne p2, p3, :cond_0

    return p2

    .line 10
    :cond_0
    iget p2, p0, Lyf/a;->i:I

    const/16 v1, 0x10

    const/4 v2, -0x1

    if-ge p2, v1, :cond_3

    .line 11
    iget-object p2, p0, Lyf/a;->f:[B

    array-length v1, p2

    invoke-super {p0, p2, v0, v1}, Lyf/b;->read([BII)I

    move-result p2

    .line 12
    iput v0, p0, Lyf/a;->g:I

    if-ne p2, v2, :cond_2

    .line 13
    iput v0, p0, Lyf/a;->h:I

    .line 14
    iget p1, p0, Lyf/a;->k:I

    if-lez p1, :cond_1

    return p1

    :cond_1
    return v2

    .line 15
    :cond_2
    iput p2, p0, Lyf/a;->h:I

    .line 16
    iget p2, p0, Lyf/a;->j:I

    invoke-virtual {p0, p2, p1}, Lyf/a;->K(I[B)V

    .line 17
    iget p2, p0, Lyf/a;->k:I

    if-ne p2, p3, :cond_3

    return p2

    .line 18
    :cond_3
    iget p2, p0, Lyf/a;->j:I

    iget p3, p0, Lyf/a;->i:I

    rem-int/lit8 v0, p3, 0x10

    sub-int/2addr p3, v0

    invoke-super {p0, p1, p2, p3}, Lyf/b;->read([BII)I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 19
    iget p1, p0, Lyf/a;->k:I

    if-lez p1, :cond_4

    return p1

    :cond_4
    return v2

    .line 20
    :cond_5
    iget p2, p0, Lyf/a;->k:I

    add-int/2addr p1, p2

    return p1
.end method
