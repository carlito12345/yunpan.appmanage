.class public final Lkd/a;
.super Lid/c;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final A:I

.field public B:[B

.field public y:B

.field public z:B


# direct methods
.method public constructor <init>(Lvc/f;)V
    .locals 2

    .line 1
    sget-object v0, Lid/e;->a:[B

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {p0, p1, v1}, Lid/c;-><init>(Lvc/f;I)V

    .line 6
    .line 7
    .line 8
    check-cast p1, Lwc/a;

    .line 9
    .line 10
    iget v1, p1, Lwc/a;->h0:I

    .line 11
    .line 12
    iget p1, p1, Lwc/a;->k0:I

    .line 13
    .line 14
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    add-int/lit8 p1, p1, -0x48

    .line 19
    .line 20
    and-int/lit8 p1, p1, -0x8

    .line 21
    .line 22
    iput p1, p0, Lkd/a;->A:I

    .line 23
    .line 24
    iput-object v0, p0, Lkd/a;->B:[B

    .line 25
    .line 26
    return-void
.end method


# virtual methods
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
    const-wide/16 v0, 0x29

    .line 2
    .line 3
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x2

    .line 7
    .line 8
    iget-byte v1, p0, Lkd/a;->y:B

    .line 9
    .line 10
    aput-byte v1, p2, v0

    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    iget-byte v1, p0, Lkd/a;->z:B

    .line 15
    .line 16
    aput-byte v1, p2, v0

    .line 17
    .line 18
    add-int/lit8 v0, p1, 0x4

    .line 19
    .line 20
    iget v1, p0, Lkd/a;->A:I

    .line 21
    .line 22
    int-to-long v1, v1

    .line 23
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, p1, 0x8

    .line 27
    .line 28
    add-int/lit8 v1, p1, 0xc

    .line 29
    .line 30
    add-int/lit8 v2, p1, 0x10

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    int-to-long v4, v3

    .line 34
    invoke-static {v4, v5, p2, v2}, Lrd/a;->f(J[BI)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, p1, 0x14

    .line 38
    .line 39
    invoke-static {v4, v5, p2, v2}, Lrd/a;->f(J[BI)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, p1, 0x18

    .line 43
    .line 44
    iget-object v4, p0, Lkd/a;->B:[B

    .line 45
    .line 46
    const/16 v5, 0x10

    .line 47
    .line 48
    invoke-static {v4, v3, p2, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, p1, 0x28

    .line 52
    .line 53
    const-wide/16 v3, 0x0

    .line 54
    .line 55
    invoke-static {v3, v4, p2, v0}, Lrd/a;->e(J[BI)V

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v4, p2, v1}, Lrd/a;->f(J[BI)V

    .line 59
    .line 60
    .line 61
    sub-int/2addr v2, p1

    .line 62
    return v2
.end method

.method public final q0(Lvc/b;)Lid/d;
    .locals 3

    .line 1
    new-instance v0, Lkd/b;

    .line 2
    .line 3
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-byte v1, p0, Lkd/a;->y:B

    .line 8
    .line 9
    iget-byte v2, p0, Lkd/a;->z:B

    .line 10
    .line 11
    invoke-direct {v0, p1, v1, v2}, Lkd/b;-><init>(Lvc/f;BB)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x68

    .line 3
    .line 4
    invoke-static {v1, v0}, Lid/b;->o0(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final w([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkd/a;->B:[B

    .line 2
    .line 3
    return-void
.end method
