.class public final Lhd/c;
.super Lgd/a;
.source "SourceFile"


# instance fields
.field public final P0:I


# direct methods
.method public constructor <init>(Lvc/f;I)V
    .locals 2

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lgd/a;-><init>(Lvc/f;BB)V

    .line 5
    .line 6
    .line 7
    iput p2, p0, Lhd/c;->P0:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lgd/a;->T:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lgd/a;->V:I

    .line 14
    .line 15
    iput p1, p0, Lgd/a;->X:I

    .line 16
    .line 17
    const/16 p1, 0x320

    .line 18
    .line 19
    iput p1, p0, Lgd/a;->Y:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final t0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2QueryFSInformation["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lgd/a;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",informationLevel=0x"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lhd/c;->P0:I

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    invoke-static {v2, v3}, Lge/a;->l(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "]"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method public final u0([B)I
    .locals 3

    .line 1
    iget v0, p0, Lhd/c;->P0:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x103

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Unhandled information level"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 21
    :goto_0
    int-to-long v0, v0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, p1, v2}, Lrd/a;->e(J[BI)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    return p1
.end method

.method public final v0(I[B)I
    .locals 2

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget-byte v1, p0, Lgd/a;->t0:B

    .line 4
    .line 5
    aput-byte v1, p2, p1

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    aput-byte p1, p2, v0

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    return p1
.end method
