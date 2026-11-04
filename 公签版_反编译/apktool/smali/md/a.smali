.class public final Lmd/a;
.super Lid/c;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final A:[B

.field public final B:I

.field public C:I

.field public D:Lvc/j;

.field public y:[B

.field public final z:I


# direct methods
.method public constructor <init>(Lvc/f;I)V
    .locals 2

    .line 1
    sget-object v0, Lid/e;->a:[B

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {p0, p1, v1}, Lid/c;-><init>(Lvc/f;I)V

    .line 6
    .line 7
    .line 8
    iput p2, p0, Lmd/a;->z:I

    .line 9
    .line 10
    iput-object v0, p0, Lmd/a;->y:[B

    .line 11
    .line 12
    check-cast p1, Lwc/a;

    .line 13
    .line 14
    iget p1, p1, Lwc/a;->i0:I

    .line 15
    .line 16
    and-int/lit8 p1, p1, -0x8

    .line 17
    .line 18
    iput p1, p0, Lmd/a;->B:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lmd/a;->A:[B

    .line 22
    .line 23
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
    .locals 10

    .line 1
    const-wide/16 v0, 0x39

    .line 2
    .line 3
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x4

    .line 7
    .line 8
    iget v1, p0, Lmd/a;->z:I

    .line 9
    .line 10
    int-to-long v1, v1

    .line 11
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v0, p1, 0x8

    .line 15
    .line 16
    iget-object v1, p0, Lmd/a;->y:[B

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/16 v3, 0x10

    .line 20
    .line 21
    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, p1, 0x18

    .line 25
    .line 26
    add-int/lit8 v1, p1, 0x1c

    .line 27
    .line 28
    add-int/lit8 v3, p1, 0x20

    .line 29
    .line 30
    int-to-long v4, v2

    .line 31
    invoke-static {v4, v5, p2, v3}, Lrd/a;->f(J[BI)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, p1, 0x24

    .line 35
    .line 36
    add-int/lit8 v3, p1, 0x28

    .line 37
    .line 38
    add-int/lit8 v4, p1, 0x2c

    .line 39
    .line 40
    iget v5, p0, Lmd/a;->B:I

    .line 41
    .line 42
    int-to-long v5, v5

    .line 43
    invoke-static {v5, v6, p2, v4}, Lrd/a;->f(J[BI)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v4, p1, 0x30

    .line 47
    .line 48
    iget v5, p0, Lmd/a;->C:I

    .line 49
    .line 50
    int-to-long v5, v5

    .line 51
    invoke-static {v5, v6, p2, v4}, Lrd/a;->f(J[BI)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v4, p1, 0x38

    .line 55
    .line 56
    iget-object v5, p0, Lmd/a;->D:Lvc/j;

    .line 57
    .line 58
    const-wide/16 v6, 0x0

    .line 59
    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    iget v5, p0, Lid/b;->d:I

    .line 63
    .line 64
    sub-int v5, v4, v5

    .line 65
    .line 66
    int-to-long v8, v5

    .line 67
    invoke-static {v8, v9, p2, v0}, Lrd/a;->f(J[BI)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lmd/a;->D:Lvc/j;

    .line 71
    .line 72
    invoke-interface {v0, v4, p2}, Lvc/j;->c(I[B)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    int-to-long v8, v0

    .line 77
    invoke-static {v8, v9, p2, v1}, Lrd/a;->f(J[BI)V

    .line 78
    .line 79
    .line 80
    add-int/2addr v4, v0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v6, v7, p2, v0}, Lrd/a;->f(J[BI)V

    .line 83
    .line 84
    .line 85
    invoke-static {v6, v7, p2, v1}, Lrd/a;->f(J[BI)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-static {v6, v7, p2, v2}, Lrd/a;->f(J[BI)V

    .line 89
    .line 90
    .line 91
    invoke-static {v6, v7, p2, v3}, Lrd/a;->f(J[BI)V

    .line 92
    .line 93
    .line 94
    sub-int/2addr v4, p1

    .line 95
    return v4
.end method

.method public final q0(Lvc/b;)Lid/d;
    .locals 3

    .line 1
    new-instance v0, Lmd/b;

    .line 2
    .line 3
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lmd/a;->A:[B

    .line 8
    .line 9
    iget v2, p0, Lmd/a;->z:I

    .line 10
    .line 11
    invoke-direct {v0, p1, v1, v2}, Lmd/b;-><init>(Lvc/f;[BI)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final size()I
    .locals 3

    .line 1
    iget-object v0, p0, Lmd/a;->D:Lvc/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lvc/j;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const/16 v2, 0x78

    .line 13
    .line 14
    add-int/2addr v2, v0

    .line 15
    invoke-static {v2, v1}, Lid/b;->o0(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final w([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmd/a;->y:[B

    .line 2
    .line 3
    return-void
.end method
