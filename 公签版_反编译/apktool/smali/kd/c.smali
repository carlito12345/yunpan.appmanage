.class public final Lkd/c;
.super Lid/c;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public A:B

.field public B:Ldd/c;

.field public y:[B

.field public z:B


# direct methods
.method public constructor <init>(Lvc/f;[B)V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lid/c;-><init>(Lvc/f;I)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lkd/c;->y:[B

    .line 7
    .line 8
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
    const-wide/16 v0, 0x21

    .line 2
    .line 3
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x2

    .line 7
    .line 8
    iget-byte v1, p0, Lkd/c;->z:B

    .line 9
    .line 10
    aput-byte v1, p2, v0

    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    iget-byte v1, p0, Lkd/c;->A:B

    .line 15
    .line 16
    aput-byte v1, p2, v0

    .line 17
    .line 18
    add-int/lit8 v0, p1, 0x4

    .line 19
    .line 20
    add-int/lit8 v1, p1, 0x8

    .line 21
    .line 22
    add-int/lit8 v2, p1, 0xc

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    int-to-long v4, v3

    .line 26
    invoke-static {v4, v5, p2, v2}, Lrd/a;->f(J[BI)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, p1, 0x10

    .line 30
    .line 31
    iget-object v4, p0, Lkd/c;->y:[B

    .line 32
    .line 33
    const/16 v5, 0x10

    .line 34
    .line 35
    invoke-static {v4, v3, p2, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, p1, 0x20

    .line 39
    .line 40
    iget v3, p0, Lid/b;->d:I

    .line 41
    .line 42
    sub-int v3, v2, v3

    .line 43
    .line 44
    int-to-long v3, v3

    .line 45
    invoke-static {v3, v4, p2, v1}, Lrd/a;->e(J[BI)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lkd/c;->B:Ldd/c;

    .line 49
    .line 50
    iget-wide v3, v1, Ldd/c;->b:J

    .line 51
    .line 52
    invoke-static {v3, v4, p2, v2}, Lrd/a;->g(J[BI)V

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    int-to-long v1, v1

    .line 58
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 p2, p1, 0x28

    .line 62
    .line 63
    sub-int/2addr p2, p1

    .line 64
    return p2
.end method

.method public final q0(Lvc/b;)Lid/d;
    .locals 2

    .line 1
    new-instance v0, Lkd/d;

    .line 2
    .line 3
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p1, v1}, Lkd/d;-><init>(Lvc/f;I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lkd/c;->B:Ldd/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/16 v1, 0x68

    .line 8
    .line 9
    invoke-static {v1, v0}, Lid/b;->o0(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final w([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkd/c;->y:[B

    .line 2
    .line 3
    return-void
.end method
