.class public abstract Landroidx/leanback/widget/m;
.super Landroidx/recyclerview/widget/a1;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/leanback/widget/q;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/m;->b:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a1;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/m2;->getTargetPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/m2;->findViewByPosition(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/leanback/widget/m;->b:Landroidx/leanback/widget/q;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/m2;->getTargetPosition()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/m2;->getTargetPosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/q;->B(IZ)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    iget v2, v1, Landroidx/leanback/widget/q;->m:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/m2;->getTargetPosition()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eq v2, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/m2;->getTargetPosition()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v2, v1, Landroidx/leanback/widget/q;->m:I

    .line 41
    .line 42
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget v2, v1, Landroidx/leanback/widget/q;->k:I

    .line 49
    .line 50
    or-int/lit8 v2, v2, 0x20

    .line 51
    .line 52
    iput v2, v1, Landroidx/leanback/widget/q;->k:I

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 55
    .line 56
    .line 57
    iget v0, v1, Landroidx/leanback/widget/q;->k:I

    .line 58
    .line 59
    and-int/lit8 v0, v0, -0x21

    .line 60
    .line 61
    iput v0, v1, Landroidx/leanback/widget/q;->k:I

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v1}, Landroidx/leanback/widget/q;->b()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/leanback/widget/q;->c()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final calculateTimeForScrolling(I)I
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/a1;->calculateTimeForScrolling(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/leanback/widget/m;->b:Landroidx/leanback/widget/q;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 8
    .line 9
    iget-object v1, v1, La2/w0;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Landroidx/leanback/widget/x0;

    .line 12
    .line 13
    iget v1, v1, Landroidx/leanback/widget/x0;->i:I

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    const/high16 v2, 0x41f00000    # 30.0f

    .line 19
    .line 20
    div-float/2addr v2, v1

    .line 21
    int-to-float p1, p1

    .line 22
    mul-float v2, v2, p1

    .line 23
    .line 24
    int-to-float p1, v0

    .line 25
    cmpg-float p1, p1, v2

    .line 26
    .line 27
    if-gez p1, :cond_0

    .line 28
    .line 29
    float-to-int v0, v2

    .line 30
    :cond_0
    return v0
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/a1;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/leanback/widget/m;->a:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/leanback/widget/m;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/m;->b:Landroidx/leanback/widget/q;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/leanback/widget/q;->n:Landroidx/leanback/widget/m;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne v1, p0, :cond_1

    .line 17
    .line 18
    iput-object v2, v0, Landroidx/leanback/widget/q;->n:Landroidx/leanback/widget/m;

    .line 19
    .line 20
    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/q;->o:Landroidx/leanback/widget/o;

    .line 21
    .line 22
    if-ne v1, p0, :cond_2

    .line 23
    .line 24
    iput-object v2, v0, Landroidx/leanback/widget/q;->o:Landroidx/leanback/widget/o;

    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/n2;Landroidx/recyclerview/widget/k2;)V
    .locals 3

    .line 1
    sget-object p2, Landroidx/leanback/widget/q;->O:[I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/m;->b:Landroidx/leanback/widget/q;

    .line 5
    .line 6
    invoke-virtual {v1, p1, v0, p2}, Landroidx/leanback/widget/q;->k(Landroid/view/View;Landroid/view/View;[I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget p1, v1, Landroidx/leanback/widget/q;->c:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    aget p1, p2, v1

    .line 19
    .line 20
    aget p2, p2, v0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    aget p1, p2, v0

    .line 24
    .line 25
    aget p2, p2, v1

    .line 26
    .line 27
    :goto_0
    mul-int v1, p1, p1

    .line 28
    .line 29
    mul-int v2, p2, p2

    .line 30
    .line 31
    add-int/2addr v2, v1

    .line 32
    int-to-double v1, v2

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    double-to-int v1, v1

    .line 38
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a1;->calculateTimeForDeceleration(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Landroidx/recyclerview/widget/a1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 43
    .line 44
    iput p1, p3, Landroidx/recyclerview/widget/k2;->a:I

    .line 45
    .line 46
    iput p2, p3, Landroidx/recyclerview/widget/k2;->b:I

    .line 47
    .line 48
    iput v1, p3, Landroidx/recyclerview/widget/k2;->c:I

    .line 49
    .line 50
    iput-object v2, p3, Landroidx/recyclerview/widget/k2;->e:Landroid/view/animation/Interpolator;

    .line 51
    .line 52
    iput-boolean v0, p3, Landroidx/recyclerview/widget/k2;->f:Z

    .line 53
    .line 54
    :cond_1
    return-void
.end method
