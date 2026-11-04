.class public final Lfh/b;
.super Ljava/io/PushbackInputStream;
.source "SourceFile"


# static fields
.field public static final b:Z

.field public static final c:[B


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hierynomus/security/jce/a;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\r\n"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sput-boolean v1, Lfh/b;->b:Z

    .line 12
    .line 13
    sget-object v1, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lfh/b;->c:[B

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 1

    .line 1
    sget-object v0, Lfh/b;->c:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    return v1

    .line 19
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 20
    .line 21
    const-string v1, "Stream closed"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public final read()I
    .locals 1

    .line 1
    sget-boolean v0, Lfh/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfh/b;->readInt()I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lfh/b;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 4

    .line 5
    sget-boolean v0, Lfh/b;->b:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lfh/b;->available()I

    move-result v1

    .line 8
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lfh/b;->a:I

    if-ge p3, v0, :cond_2

    .line 9
    iput v0, p0, Lfh/b;->a:I

    .line 10
    :cond_2
    invoke-virtual {p0}, Lfh/b;->readInt()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    return v1

    :cond_3
    move v2, p2

    :goto_0
    add-int/lit8 v3, v2, 0x1

    int-to-byte p3, p3

    .line 11
    aput-byte p3, p1, v2

    .line 12
    iget p3, p0, Lfh/b;->a:I

    sub-int/2addr p3, v0

    iput p3, p0, Lfh/b;->a:I

    if-lez p3, :cond_5

    invoke-virtual {p0}, Lfh/b;->readInt()I

    move-result p3

    if-ne p3, v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    :goto_1
    sub-int/2addr v3, p2

    return v3
.end method

.method public final readInt()I
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return v1

    .line 24
    :cond_1
    sget-object v0, Lfh/b;->c:[B

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 27
    .line 28
    .line 29
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v1, p0, Lfh/b;->a:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    iput v1, p0, Lfh/b;->a:I

    .line 38
    .line 39
    :cond_2
    return v0
.end method
