.class public final Lx0/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lx0/u1;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lx0/t1;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2, p3, p4}, Lx0/t1;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lx0/v1;->a:Lx0/u1;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x15

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Lx0/r1;

    .line 23
    .line 24
    invoke-direct {v0, p1, p2, p3, p4}, Lx0/r1;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lx0/v1;->a:Lx0/u1;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p1, Lx0/u1;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {p1, v0, p2, p3, p4}, Lx0/u1;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lx0/v1;->a:Lx0/u1;

    .line 37
    .line 38
    :goto_0
    return-void
.end method
