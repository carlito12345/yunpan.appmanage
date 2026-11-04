.class public final Lhd/e;
.super Lgd/a;
.source "SourceFile"


# instance fields
.field public final P0:I


# direct methods
.method public constructor <init>(Lvc/f;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lgd/a;-><init>(Lvc/f;BB)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Led/c;->t:Ljava/lang/String;

    .line 8
    .line 9
    iput p3, p0, Lhd/e;->P0:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lgd/a;->V:I

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    iput p1, p0, Lgd/a;->X:I

    .line 16
    .line 17
    const/16 p1, 0x28

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
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2QueryPathInformation["

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
    iget v2, p0, Lhd/e;->P0:I

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    const-string v4, ",filename="

    .line 26
    .line 27
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Led/c;->t:Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, "]"

    .line 33
    .line 34
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public final u0([B)I
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    iget v2, p0, Lhd/e;->P0:I

    .line 4
    .line 5
    if-eq v2, v1, :cond_2

    .line 6
    .line 7
    if-eq v2, v0, :cond_1

    .line 8
    .line 9
    const/16 v3, 0x14

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    const-wide/16 v2, 0x104

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "Unsupported information level "

    .line 19
    .line 20
    invoke-static {v2, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    const-wide/16 v2, 0x102

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-wide/16 v2, 0x101

    .line 32
    .line 33
    :goto_0
    const/4 v4, 0x0

    .line 34
    invoke-static {v2, v3, p1, v4}, Lrd/a;->e(J[BI)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    aput-byte v4, p1, v2

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    aput-byte v4, p1, v2

    .line 42
    .line 43
    aput-byte v4, p1, v1

    .line 44
    .line 45
    aput-byte v4, p1, v0

    .line 46
    .line 47
    iget-object v0, p0, Led/c;->t:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v1, 0x6

    .line 50
    invoke-virtual {p0, v0, v1, p1}, Led/c;->r0(Ljava/lang/String;I[B)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    add-int/2addr p1, v1

    .line 55
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
