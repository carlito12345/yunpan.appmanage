.class public final Lce/m;
.super Lce/i0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lce/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x25

    .line 5
    .line 6
    iput-byte v0, p0, Lce/q;->c:B

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Lce/i0;->X:B

    .line 10
    .line 11
    new-instance v1, Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "\\PIPE\\LANMAN"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lce/i0;->Y:Ljava/lang/String;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    iput v1, p0, Lce/i0;->R:I

    .line 23
    .line 24
    iput v0, p0, Lce/i0;->V:I

    .line 25
    .line 26
    const/16 v0, 0x1388

    .line 27
    .line 28
    iput v0, p0, Lce/i0;->T:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "NetShareEnum["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lce/i0;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 15
    .line 16
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final v(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final w([B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "WrLeh\u0000B13BWz\u0000"

    .line 3
    .line 4
    const-string v2, "ASCII"

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-static {v2, v3, p1, v0}, Lce/q;->q(J[BI)V

    .line 13
    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-static {v1, v0, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    array-length v0, v1

    .line 21
    add-int/2addr v3, v0

    .line 22
    const-wide/16 v1, 0x1

    .line 23
    .line 24
    invoke-static {v1, v2, p1, v3}, Lce/q;->q(J[BI)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v0, 0x4

    .line 28
    .line 29
    iget v2, p0, Lce/i0;->S:I

    .line 30
    .line 31
    int-to-long v2, v2

    .line 32
    invoke-static {v2, v3, p1, v1}, Lce/q;->q(J[BI)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x6

    .line 36
    .line 37
    :catch_0
    return v0
.end method

.method public final x(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
