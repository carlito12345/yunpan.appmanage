.class public final Lce/t1;
.super Lce/i0;
.source "SourceFile"


# instance fields
.field public final M0:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lce/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lce/i0;->Y:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lce/t1;->M0:I

    .line 7
    .line 8
    const/16 p1, 0x25

    .line 9
    .line 10
    iput-byte p1, p0, Lce/q;->c:B

    .line 11
    .line 12
    const/16 p1, 0x23

    .line 13
    .line 14
    iput-byte p1, p0, Lce/i0;->X:B

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lce/i0;->T:I

    .line 18
    .line 19
    const/4 p1, 0x6

    .line 20
    iput p1, p0, Lce/i0;->R:I

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lce/i0;->S:I

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    iput p1, p0, Lce/i0;->V:I

    .line 27
    .line 28
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
    const-string v2, "TransPeekNamedPipe["

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
    const-string v2, ",pipeName="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lce/i0;->Y:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "]"

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

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
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
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
    iget v0, p0, Lce/t1;->M0:I

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
