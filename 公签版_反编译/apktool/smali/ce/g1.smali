.class public final Lce/g1;
.super Lce/i0;
.source "SourceFile"


# instance fields
.field public final M0:I

.field public N0:I

.field public O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lce/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lce/g1;->M0:I

    .line 5
    .line 6
    iput p2, p0, Lce/g1;->N0:I

    .line 7
    .line 8
    iput-object p3, p0, Lce/g1;->O0:Ljava/lang/String;

    .line 9
    .line 10
    const/16 p1, 0x32

    .line 11
    .line 12
    iput-byte p1, p0, Lce/q;->c:B

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    iput-byte p1, p0, Lce/i0;->X:B

    .line 16
    .line 17
    const/16 p1, 0x8

    .line 18
    .line 19
    iput p1, p0, Lce/i0;->R:I

    .line 20
    .line 21
    sget p1, Lce/d1;->P0:I

    .line 22
    .line 23
    iput p1, p0, Lce/i0;->S:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2FindNext2["

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
    const-string v2, ",sid="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lce/g1;->M0:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",searchCount="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    sget v2, Lce/d1;->P0:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",informationLevel=0x"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v2, 0x104

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    invoke-static {v2, v3}, Lde/c;->c(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ",resumeKey=0x"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v2, p0, Lce/g1;->N0:I

    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    const-string v4, ",flags=0x"

    .line 61
    .line 62
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    const/4 v3, 0x2

    .line 67
    const-string v4, ",filename="

    .line 68
    .line 69
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lce/g1;->O0:Ljava/lang/String;

    .line 73
    .line 74
    const-string v3, "]"

    .line 75
    .line 76
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
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
    iget v0, p0, Lce/g1;->M0:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, p1, v2}, Lce/q;->q(J[BI)V

    .line 6
    .line 7
    .line 8
    sget v0, Lce/d1;->Q0:I

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-static {v0, v1, p1, v3}, Lce/q;->q(J[BI)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x104

    .line 16
    .line 17
    int-to-long v0, v0

    .line 18
    const/4 v3, 0x4

    .line 19
    invoke-static {v0, v1, p1, v3}, Lce/q;->q(J[BI)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lce/g1;->N0:I

    .line 23
    .line 24
    int-to-long v0, v0

    .line 25
    const/4 v3, 0x6

    .line 26
    invoke-static {v0, v1, p1, v3}, Lce/q;->r(J[BI)V

    .line 27
    .line 28
    .line 29
    const/16 v0, 0xa

    .line 30
    .line 31
    int-to-long v1, v2

    .line 32
    invoke-static {v1, v2, p1, v0}, Lce/q;->q(J[BI)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lce/g1;->O0:Ljava/lang/String;

    .line 36
    .line 37
    iget-boolean v1, p0, Lce/q;->q:Z

    .line 38
    .line 39
    const/16 v2, 0xc

    .line 40
    .line 41
    invoke-virtual {p0, v0, p1, v2, v1}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    add-int/2addr p1, v2

    .line 46
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
    const/4 p1, 0x0

    .line 8
    aput-byte p1, p2, v0

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    return p1
.end method
