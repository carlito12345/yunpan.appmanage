.class public final Lld/c;
.super Lid/d;
.source "SourceFile"


# instance fields
.field public D:I


# direct methods
.method public constructor <init>(Lvc/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lid/d;-><init>(Lvc/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final l0(I[B)I
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lrd/a;->a(I[B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x11

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x4

    .line 10
    .line 11
    invoke-static {v0, p2}, Lrd/a;->b(I[B)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lld/c;->D:I

    .line 16
    .line 17
    add-int/lit8 v0, p1, 0x8

    .line 18
    .line 19
    invoke-static {v0, p2}, Lrd/a;->b(I[B)I

    .line 20
    .line 21
    .line 22
    add-int/lit8 p2, p1, 0x10

    .line 23
    .line 24
    sub-int/2addr p2, p1

    .line 25
    return p2

    .line 26
    :cond_0
    new-instance p1, Lad/g;

    .line 27
    .line 28
    const-string p2, "Expected structureSize = 17"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public final p0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
