.class public final Lce/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/DataInput;


# instance fields
.field public final a:Lce/t0;

.field public b:J

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:[B

.field public final h:Lce/o0;


# direct methods
.method public constructor <init>(Lce/t0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lce/x0;->f:I

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    iput-object v1, p0, Lce/x0;->g:[B

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lce/x0;->h:Lce/o0;

    .line 15
    .line 16
    iput-object p1, p0, Lce/x0;->a:Lce/t0;

    .line 17
    .line 18
    const/16 v1, 0x11

    .line 19
    .line 20
    iput v1, p0, Lce/x0;->c:I

    .line 21
    .line 22
    const/16 v2, 0x80

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0, v2, v0}, Lce/t0;->z(IIII)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lce/t0;->n:Lce/c1;

    .line 28
    .line 29
    iget-object p1, p1, Lce/c1;->f:Lce/y0;

    .line 30
    .line 31
    iget-object p1, p1, Lce/y0;->h:Lce/b1;

    .line 32
    .line 33
    iget v0, p1, Lce/b1;->A:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x46

    .line 36
    .line 37
    iput v0, p0, Lce/x0;->d:I

    .line 38
    .line 39
    iget p1, p1, Lce/b1;->z:I

    .line 40
    .line 41
    add-int/lit8 p1, p1, -0x46

    .line 42
    .line 43
    iput p1, p0, Lce/x0;->e:I

    .line 44
    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    iput-wide v0, p0, Lce/x0;->b:J

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final read([B)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/x0;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 8

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-wide v1, p0, Lce/x0;->b:J

    .line 3
    iget-object v3, p0, Lce/x0;->a:Lce/t0;

    invoke-virtual {v3}, Lce/t0;->v()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    iget v4, p0, Lce/x0;->f:I

    iget v5, p0, Lce/x0;->c:I

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v0, v6, v4}, Lce/t0;->z(IIII)V

    .line 5
    :cond_1
    new-instance v0, Lce/e0;

    invoke-direct {v0, p1, p2}, Lce/e0;-><init>([BI)V

    .line 6
    :cond_2
    iget p1, p0, Lce/x0;->d:I

    if-le p3, p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, p3

    .line 7
    :goto_0
    new-instance p2, Lce/d0;

    iget v4, v3, Lce/t0;->q:I

    iget-wide v5, p0, Lce/x0;->b:J

    invoke-direct {p2, v4, p1, v5, v6}, Lce/d0;-><init>(IIJ)V

    invoke-virtual {v3, p2, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 8
    iget p2, v0, Lce/e0;->I:I

    if-gtz p2, :cond_5

    .line 9
    iget-wide p1, p0, Lce/x0;->b:J

    sub-long/2addr p1, v1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 p1, -0x1

    :goto_1
    long-to-int p2, p1

    return p2

    .line 10
    :cond_5
    iget-wide v4, p0, Lce/x0;->b:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lce/x0;->b:J

    sub-int/2addr p3, p2

    .line 11
    iget v6, v0, Lce/e0;->G:I

    add-int/2addr v6, p2

    iput v6, v0, Lce/e0;->G:I

    if-lez p3, :cond_6

    if-eq p2, p1, :cond_2

    :cond_6
    sub-long/2addr v4, v1

    long-to-int p1, v4

    return p1
.end method

.method public final readBoolean()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lce/x0;->g:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lce/x0;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ltz v3, :cond_1

    .line 10
    .line 11
    aget-byte v0, v0, v1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    return v1

    .line 17
    :cond_1
    new-instance v0, Lce/r0;

    .line 18
    .line 19
    const-string v1, "EOF"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final readByte()B
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lce/x0;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    aget-byte v0, v1, v2

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    new-instance v0, Lce/r0;

    .line 15
    .line 16
    const-string v1, "EOF"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final readChar()C
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lce/x0;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v2, v1}, La9/o;->A(I[B)S

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-char v0, v0

    .line 16
    return v0

    .line 17
    :cond_0
    new-instance v0, Lce/r0;

    .line 18
    .line 19
    const-string v1, "EOF"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final readDouble()D
    .locals 7

    .line 1
    iget-object v0, p0, Lce/x0;->g:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lce/x0;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v1, v0}, La9/o;->C(I[B)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-long v1, v1

    .line 17
    const-wide v3, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v1, v3

    .line 23
    const/16 v5, 0x20

    .line 24
    .line 25
    shl-long/2addr v1, v5

    .line 26
    const/4 v5, 0x4

    .line 27
    invoke-static {v5, v0}, La9/o;->C(I[B)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-long v5, v0

    .line 32
    and-long/2addr v3, v5

    .line 33
    or-long/2addr v1, v3

    .line 34
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    return-wide v0

    .line 39
    :cond_0
    new-instance v0, Lce/r0;

    .line 40
    .line 41
    const-string v1, "EOF"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public final readFloat()F
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lce/x0;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v2, v1}, La9/o;->C(I[B)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    new-instance v0, Lce/r0;

    .line 21
    .line 22
    const-string v1, "EOF"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/x0;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 6

    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 2
    invoke-virtual {p0, p1, v1, v2}, Lce/x0;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v0, v1

    .line 3
    iget-wide v2, p0, Lce/x0;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lce/x0;->b:J

    if-lt v0, p3, :cond_0

    return-void

    .line 4
    :cond_1
    new-instance p1, Lce/r0;

    const-string p2, "EOF"

    invoke-direct {p1, p2}, Lce/r0;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final readInt()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lce/x0;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v2, v1}, La9/o;->C(I[B)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v0, Lce/r0;

    .line 17
    .line 18
    const-string v1, "EOF"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, -0x1

    .line 10
    :goto_0
    if-nez v3, :cond_4

    .line 11
    .line 12
    iget-object v4, p0, Lce/x0;->g:[B

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-virtual {p0, v4, v2, v5}, Lce/x0;->read([BII)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-ne v6, v1, :cond_0

    .line 20
    .line 21
    const/4 v4, -0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    aget-byte v4, v4, v2

    .line 24
    .line 25
    and-int/lit16 v4, v4, 0xff

    .line 26
    .line 27
    :goto_1
    if-eq v4, v1, :cond_3

    .line 28
    .line 29
    const/16 v6, 0xa

    .line 30
    .line 31
    if-eq v4, v6, :cond_3

    .line 32
    .line 33
    const/16 v7, 0xd

    .line 34
    .line 35
    if-eq v4, v7, :cond_1

    .line 36
    .line 37
    int-to-char v5, v4

    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-wide v7, p0, Lce/x0;->b:J

    .line 43
    .line 44
    iget-object v3, p0, Lce/x0;->g:[B

    .line 45
    .line 46
    invoke-virtual {p0, v3, v2, v5}, Lce/x0;->read([BII)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-ne v9, v1, :cond_2

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    aget-byte v3, v3, v2

    .line 55
    .line 56
    and-int/lit16 v3, v3, 0xff

    .line 57
    .line 58
    :goto_2
    if-eq v3, v6, :cond_3

    .line 59
    .line 60
    iput-wide v7, p0, Lce/x0;->b:J

    .line 61
    .line 62
    :cond_3
    const/4 v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    if-ne v4, v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    return-object v0

    .line 74
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public final readLong()J
    .locals 7

    .line 1
    iget-object v0, p0, Lce/x0;->g:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lce/x0;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v1, v0}, La9/o;->C(I[B)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-long v1, v1

    .line 17
    const-wide v3, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v1, v3

    .line 23
    const/16 v5, 0x20

    .line 24
    .line 25
    shl-long/2addr v1, v5

    .line 26
    const/4 v5, 0x4

    .line 27
    invoke-static {v5, v0}, La9/o;->C(I[B)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-long v5, v0

    .line 32
    and-long/2addr v3, v5

    .line 33
    or-long/2addr v1, v3

    .line 34
    return-wide v1

    .line 35
    :cond_0
    new-instance v0, Lce/r0;

    .line 36
    .line 37
    const-string v1, "EOF"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public final readShort()S
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lce/x0;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v2, v1}, La9/o;->A(I[B)S

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v0, Lce/r0;

    .line 17
    .line 18
    const-string v1, "EOF"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lce/x0;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v1, v2, v0}, Lce/x0;->read([BII)I

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {v0, v1}, La9/o;->E(I[B)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lce/r0;

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-direct {v1, v2, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    throw v1
.end method

.method public final readUnsignedByte()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lce/x0;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    aget-byte v0, v1, v2

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0xff

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v0, Lce/r0;

    .line 17
    .line 18
    const-string v1, "EOF"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final readUnsignedShort()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lce/x0;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v2, v1}, La9/o;->A(I[B)S

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const v1, 0xffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v0, v1

    .line 19
    return v0

    .line 20
    :cond_0
    new-instance v0, Lce/r0;

    .line 21
    .line 22
    const-string v1, "EOF"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final skipBytes(I)I
    .locals 4

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lce/x0;->b:J

    .line 4
    .line 5
    int-to-long v2, p1

    .line 6
    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lce/x0;->b:J

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 1
    iget-object v0, p0, Lce/x0;->g:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lce/x0;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/x0;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 14

    move-object v0, p0

    if-gtz p3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Lce/x0;->a:Lce/t0;

    invoke-virtual {v1}, Lce/t0;->v()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget v2, v0, Lce/x0;->f:I

    iget v3, v0, Lce/x0;->c:I

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-virtual {v1, v3, v4, v5, v2}, Lce/t0;->z(IIII)V

    :cond_1
    move/from16 v2, p2

    move/from16 v3, p3

    .line 6
    :cond_2
    iget v4, v0, Lce/x0;->e:I

    if-le v3, v4, :cond_3

    move v13, v4

    goto :goto_0

    :cond_3
    move v13, v3

    .line 7
    :goto_0
    new-instance v4, Lce/n0;

    iget v7, v1, Lce/t0;->q:I

    iget-wide v8, v0, Lce/x0;->b:J

    sub-int v10, v3, v13

    move-object v6, v4

    move-object v11, p1

    move v12, v2

    invoke-direct/range {v6 .. v13}, Lce/n0;-><init>(IJI[BII)V

    iget-object v5, v0, Lce/x0;->h:Lce/o0;

    invoke-virtual {v1, v4, v5}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 8
    iget-wide v6, v0, Lce/x0;->b:J

    iget-wide v4, v5, Lce/o0;->F:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lce/x0;->b:J

    int-to-long v6, v3

    sub-long/2addr v6, v4

    long-to-int v3, v6

    int-to-long v6, v2

    add-long/2addr v6, v4

    long-to-int v2, v6

    if-gtz v3, :cond_2

    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 2

    .line 1
    int-to-byte p1, p1

    .line 2
    iget-object v0, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lce/x0;->write([BII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final writeByte(I)V
    .locals 2

    .line 1
    int-to-byte p1, p1

    .line 2
    iget-object v0, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lce/x0;->write([BII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v0}, Lce/x0;->write([BII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final writeChar(I)V
    .locals 3

    .line 1
    int-to-short p1, p1

    .line 2
    iget-object v0, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    shr-int/lit8 v1, p1, 0x8

    .line 5
    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-byte v1, v0, v2

    .line 11
    .line 12
    and-int/lit16 p1, p1, 0xff

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    const/4 v1, 0x1

    .line 16
    aput-byte p1, v0, v1

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-virtual {p0, v0, v2, p1}, Lce/x0;->write([BII)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    new-array v3, v0, [C

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {p1, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    :goto_0
    if-ge p1, v0, :cond_0

    .line 18
    .line 19
    add-int/lit8 v6, v5, 0x1

    .line 20
    .line 21
    aget-char v7, v3, p1

    .line 22
    .line 23
    ushr-int/lit8 v8, v7, 0x8

    .line 24
    .line 25
    int-to-byte v8, v8

    .line 26
    aput-byte v8, v2, v5

    .line 27
    .line 28
    add-int/lit8 v5, v5, 0x2

    .line 29
    .line 30
    int-to-byte v7, v7

    .line 31
    aput-byte v7, v2, v6

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v2, v4, v1}, Lce/x0;->write([BII)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final writeDouble(D)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object v0, p0, Lce/x0;->g:[B

    .line 6
    .line 7
    const-wide v1, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long v3, p1, v1

    .line 13
    .line 14
    long-to-int v4, v3

    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-static {v4, v3, v0}, La9/o;->G(II[B)V

    .line 17
    .line 18
    .line 19
    const/16 v3, 0x20

    .line 20
    .line 21
    shr-long/2addr p1, v3

    .line 22
    and-long/2addr p1, v1

    .line 23
    long-to-int p2, p1

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p2, p1, v0}, La9/o;->G(II[B)V

    .line 26
    .line 27
    .line 28
    const/16 p2, 0x8

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1, p2}, Lce/x0;->write([BII)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final writeFloat(F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lce/x0;->g:[B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v1, v0}, La9/o;->G(II[B)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x4

    .line 12
    invoke-virtual {p0, v0, v1, p1}, Lce/x0;->write([BII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final writeInt(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lce/x0;->g:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1, v0}, La9/o;->G(II[B)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lce/x0;->write([BII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final writeLong(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lce/x0;->g:[B

    .line 2
    .line 3
    const-wide v1, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long v3, p1, v1

    .line 9
    .line 10
    long-to-int v4, v3

    .line 11
    const/4 v3, 0x4

    .line 12
    invoke-static {v4, v3, v0}, La9/o;->G(II[B)V

    .line 13
    .line 14
    .line 15
    const/16 v3, 0x20

    .line 16
    .line 17
    shr-long/2addr p1, v3

    .line 18
    and-long/2addr p1, v1

    .line 19
    long-to-int p2, p1

    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-static {p2, p1, v0}, La9/o;->G(II[B)V

    .line 22
    .line 23
    .line 24
    const/16 p2, 0x8

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1, p2}, Lce/x0;->write([BII)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final writeShort(I)V
    .locals 3

    .line 1
    int-to-short p1, p1

    .line 2
    iget-object v0, p0, Lce/x0;->g:[B

    .line 3
    .line 4
    shr-int/lit8 v1, p1, 0x8

    .line 5
    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-byte v1, v0, v2

    .line 11
    .line 12
    and-int/lit16 p1, p1, 0xff

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    const/4 v1, 0x1

    .line 16
    aput-byte p1, v0, v1

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-virtual {p0, v0, v2, p1}, Lce/x0;->write([BII)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    :goto_0
    const/4 v6, 0x3

    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x1

    .line 15
    const/16 v9, 0x7ff

    .line 16
    .line 17
    const/16 v10, 0x7f

    .line 18
    .line 19
    if-ge v4, v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    if-le v11, v10, :cond_1

    .line 26
    .line 27
    if-le v11, v9, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v6, 0x2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v6, 0x1

    .line 33
    :goto_1
    add-int/2addr v5, v6

    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-array v2, v5, [B

    .line 38
    .line 39
    invoke-virtual {v1, v5}, Lce/x0;->writeShort(I)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v12, 0x0

    .line 48
    :goto_2
    if-ge v11, v5, :cond_7

    .line 49
    .line 50
    if-ge v12, v4, :cond_7

    .line 51
    .line 52
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v13

    .line 56
    if-lt v13, v8, :cond_3

    .line 57
    .line 58
    if-gt v13, v10, :cond_3

    .line 59
    .line 60
    add-int/lit8 v14, v11, 0x1

    .line 61
    .line 62
    int-to-byte v13, v13

    .line 63
    aput-byte v13, v2, v11

    .line 64
    .line 65
    move v11, v14

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    if-le v13, v9, :cond_5

    .line 68
    .line 69
    sub-int v14, v5, v11

    .line 70
    .line 71
    if-ge v14, v6, :cond_4

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_4
    add-int/lit8 v14, v11, 0x1

    .line 75
    .line 76
    shr-int/lit8 v15, v13, 0xc

    .line 77
    .line 78
    and-int/lit8 v15, v15, 0xf

    .line 79
    .line 80
    or-int/lit16 v15, v15, 0xe0

    .line 81
    .line 82
    int-to-byte v15, v15

    .line 83
    aput-byte v15, v2, v11

    .line 84
    .line 85
    add-int/lit8 v15, v11, 0x2

    .line 86
    .line 87
    shr-int/lit8 v16, v13, 0x6

    .line 88
    .line 89
    and-int/lit8 v6, v16, 0x3f

    .line 90
    .line 91
    or-int/lit16 v6, v6, 0x80

    .line 92
    .line 93
    int-to-byte v6, v6

    .line 94
    aput-byte v6, v2, v14

    .line 95
    .line 96
    add-int/lit8 v11, v11, 0x3

    .line 97
    .line 98
    and-int/lit8 v6, v13, 0x3f

    .line 99
    .line 100
    or-int/lit16 v6, v6, 0x80

    .line 101
    .line 102
    int-to-byte v6, v6

    .line 103
    aput-byte v6, v2, v15

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    sub-int v6, v5, v11

    .line 107
    .line 108
    if-ge v6, v7, :cond_6

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_6
    add-int/lit8 v6, v11, 0x1

    .line 112
    .line 113
    shr-int/lit8 v14, v13, 0x6

    .line 114
    .line 115
    and-int/lit8 v14, v14, 0x1f

    .line 116
    .line 117
    or-int/lit16 v14, v14, 0xc0

    .line 118
    .line 119
    int-to-byte v14, v14

    .line 120
    aput-byte v14, v2, v11

    .line 121
    .line 122
    add-int/lit8 v11, v11, 0x2

    .line 123
    .line 124
    and-int/lit8 v13, v13, 0x3f

    .line 125
    .line 126
    or-int/lit16 v13, v13, 0x80

    .line 127
    .line 128
    int-to-byte v13, v13

    .line 129
    aput-byte v13, v2, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 132
    .line 133
    const/4 v6, 0x3

    .line 134
    goto :goto_2

    .line 135
    :cond_7
    :goto_4
    invoke-virtual {v1, v2, v3, v5}, Lce/x0;->write([BII)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v2, Lce/r0;

    .line 141
    .line 142
    const-string v3, ""

    .line 143
    .line 144
    invoke-direct {v2, v3, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :goto_5
    throw v2

    .line 149
    :goto_6
    goto :goto_5
.end method
