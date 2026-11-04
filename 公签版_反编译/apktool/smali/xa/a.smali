.class public final Lxa/a;
.super Landroid/widget/Scroller;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Lda/g;Landroid/view/animation/AccelerateInterpolator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lxa/a;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final startScroll(IIII)V
    .locals 6

    .line 2
    iget v5, p0, Lxa/a;->a:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public final startScroll(IIIII)V
    .locals 6

    .line 1
    iget v5, p0, Lxa/a;->a:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
