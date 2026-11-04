.class public final Lpd/b;
.super Lid/c;
.source "SourceFile"


# instance fields
.field public final A:J

.field public final B:I

.field public final y:[B

.field public final z:I


# direct methods
.method public constructor <init>(Lvc/b;IIJ[B)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, v0}, Lid/c;-><init>(Lvc/f;I)V

    .line 7
    .line 8
    .line 9
    iput p2, p0, Lpd/b;->B:I

    .line 10
    .line 11
    iput p3, p0, Lpd/b;->z:I

    .line 12
    .line 13
    iput-wide p4, p0, Lpd/b;->A:J

    .line 14
    .line 15
    iput-object p6, p0, Lpd/b;->y:[B

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final g0(Lid/b;)Z
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Lid/b;->f(J)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lid/b;->g0(Lid/b;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final l0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final p0(I[B)I
    .locals 6

    .line 1
    const-wide/16 v0, 0x19

    .line 2
    .line 3
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x2

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    int-to-byte v2, v1

    .line 10
    aput-byte v2, p2, v0

    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    iget v2, p0, Lpd/b;->B:I

    .line 15
    .line 16
    int-to-byte v2, v2

    .line 17
    aput-byte v2, p2, v0

    .line 18
    .line 19
    add-int/lit8 v0, p1, 0x4

    .line 20
    .line 21
    iget v2, p0, Lpd/b;->z:I

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    invoke-static {v2, v3, p2, v0}, Lrd/a;->f(J[BI)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, p1, 0x8

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    invoke-static {v2, v3, p2, v0}, Lrd/a;->f(J[BI)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, p1, 0xc

    .line 35
    .line 36
    add-int/lit8 v4, p1, 0xe

    .line 37
    .line 38
    iget-object v5, p0, Lpd/b;->y:[B

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    array-length v2, v5

    .line 43
    int-to-long v2, v2

    .line 44
    :cond_0
    invoke-static {v2, v3, p2, v4}, Lrd/a;->e(J[BI)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, p1, 0x10

    .line 48
    .line 49
    iget-wide v3, p0, Lpd/b;->A:J

    .line 50
    .line 51
    invoke-static {v3, v4, p2, v2}, Lrd/a;->g(J[BI)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, p1, 0x18

    .line 55
    .line 56
    iget v3, p0, Lid/b;->d:I

    .line 57
    .line 58
    sub-int v3, v2, v3

    .line 59
    .line 60
    int-to-long v3, v3

    .line 61
    invoke-static {v3, v4, p2, v0}, Lrd/a;->e(J[BI)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Lid/b;->k0(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v0, v2

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    array-length v2, v5

    .line 72
    invoke-static {v5, v1, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .line 74
    .line 75
    array-length p2, v5

    .line 76
    add-int/2addr v0, p2

    .line 77
    :cond_1
    sub-int/2addr v0, p1

    .line 78
    return v0
.end method

.method public final q0(Lvc/b;)Lid/d;
    .locals 1

    .line 1
    new-instance v0, Lpd/c;

    .line 2
    .line 3
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lpd/c;-><init>(Lvc/f;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lpd/b;->y:[B

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    add-int/lit8 v1, v1, 0x58

    .line 10
    .line 11
    invoke-static {v1, v0}, Lid/b;->o0(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method
