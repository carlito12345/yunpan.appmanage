.class public final Lce/u1;
.super Lce/i0;
.source "SourceFile"


# instance fields
.field public final M0:[B

.field public final N0:I

.field public final O0:I

.field public final P0:I


# direct methods
.method public constructor <init>(I[BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lce/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lce/u1;->N0:I

    .line 5
    .line 6
    iput-object p2, p0, Lce/u1;->M0:[B

    .line 7
    .line 8
    iput p3, p0, Lce/u1;->O0:I

    .line 9
    .line 10
    iput p4, p0, Lce/u1;->P0:I

    .line 11
    .line 12
    const/16 p1, 0x25

    .line 13
    .line 14
    iput-byte p1, p0, Lce/q;->c:B

    .line 15
    .line 16
    const/16 p1, 0x26

    .line 17
    .line 18
    iput-byte p1, p0, Lce/i0;->X:B

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lce/i0;->R:I

    .line 22
    .line 23
    const p1, 0xffff

    .line 24
    .line 25
    .line 26
    iput p1, p0, Lce/i0;->S:I

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    iput p1, p0, Lce/i0;->V:I

    .line 30
    .line 31
    const-string p1, "\\PIPE\\"

    .line 32
    .line 33
    iput-object p1, p0, Lce/i0;->Y:Ljava/lang/String;

    .line 34
    .line 35
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
    const-string v2, "TransTransactNamedPipe["

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
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",pipeFid="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lce/u1;->N0:I

    .line 23
    .line 24
    const-string v3, "]"

    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public final v(I[B)I
    .locals 3

    .line 1
    array-length v0, p2

    .line 2
    sub-int/2addr v0, p1

    .line 3
    iget v1, p0, Lce/u1;->P0:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    sget p1, Lde/d;->b:I

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    if-lt p1, p2, :cond_0

    .line 11
    .line 12
    sget-object p1, Lce/q;->A:Lde/d;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_1
    iget-object v0, p0, Lce/u1;->M0:[B

    .line 20
    .line 21
    iget v2, p0, Lce/u1;->O0:I

    .line 22
    .line 23
    invoke-static {v0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    return v1
.end method

.method public final w([B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final x(I[B)I
    .locals 2

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget-byte v1, p0, Lce/i0;->X:B

    .line 4
    .line 5
    aput-byte v1, p2, p1

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-byte v1, p2, v0

    .line 11
    .line 12
    iget v0, p0, Lce/u1;->N0:I

    .line 13
    .line 14
    int-to-long v0, v0

    .line 15
    invoke-static {v0, v1, p2, p1}, Lce/q;->q(J[BI)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    return p1
.end method
