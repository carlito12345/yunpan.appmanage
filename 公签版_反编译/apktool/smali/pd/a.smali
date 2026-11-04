.class public final Lpd/a;
.super Lid/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lvc/f;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lid/c;-><init>(Lvc/f;I)V

    .line 3
    .line 4
    .line 5
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
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    return p1
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
    const/4 v1, 0x1

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
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x44

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
