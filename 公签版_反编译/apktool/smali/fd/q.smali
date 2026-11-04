.class public final Lfd/q;
.super Led/c;
.source "SourceFile"


# instance fields
.field public G:I

.field public H:I


# direct methods
.method public constructor <init>(Lvc/f;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x12

    .line 3
    .line 4
    invoke-direct {p0, p1, v1, v0}, Led/c;-><init>(Lvc/f;BLjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lfd/q;->G:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final i0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final k0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final o0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final q0(I[B)I
    .locals 3

    .line 1
    iget v0, p0, Lfd/q;->G:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 5
    .line 6
    .line 7
    add-int/lit8 v0, p1, 0x2

    .line 8
    .line 9
    iget v1, p0, Lfd/q;->H:I

    .line 10
    .line 11
    int-to-long v1, v1

    .line 12
    invoke-static {v1, v2, p2, v0}, Lrd/a;->e(J[BI)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, p1, 0x4

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 p2, p1, 0x8

    .line 23
    .line 24
    sub-int/2addr p2, p1

    .line 25
    return p2
.end method
