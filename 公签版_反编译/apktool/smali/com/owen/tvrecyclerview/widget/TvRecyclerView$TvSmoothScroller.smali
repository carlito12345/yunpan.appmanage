.class Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;
.super Landroidx/recyclerview/widget/a1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/widget/TvRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TvSmoothScroller"
.end annotation


# instance fields
.field private mIsSmooth:Z

.field private mOffset:I

.field private mRequestFocus:Z

.field final synthetic this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


# direct methods
.method public constructor <init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/content/Context;ZZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/a1;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->mRequestFocus:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->mIsSmooth:Z

    .line 9
    .line 10
    iput p5, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->mOffset:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    .line 1
    const-string p2, "zsq viewStart="

    .line 2
    .line 3
    const-string p4, " boxStart="

    .line 4
    .line 5
    const-string p5, " mOffset="

    .line 6
    .line 7
    invoke-static {p1, p3, p2, p4, p5}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget p4, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->mOffset:I

    .line 12
    .line 13
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sub-int/2addr p3, p1

    .line 24
    iget p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->mOffset:I

    .line 25
    .line 26
    add-int/2addr p3, p1

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p2, "zsq dt="

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return p3
.end method

.method public calculateTimeForScrolling(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->mIsSmooth:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/a1;->calculateTimeForScrolling(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    const/high16 v1, 0x40800000    # 4.0f

    .line 33
    .line 34
    div-float/2addr v1, v0

    .line 35
    mul-float v1, v1, p1

    .line 36
    .line 37
    float-to-double v0, v1

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    double-to-int p1, v0

    .line 43
    :goto_0
    return p1
.end method

.method public onStop()V
    .locals 5

    .line 1
    const-string v0, "zzssqq SmoothScroller onStop"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->mRequestFocus:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/m2;->getTargetPosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 15
    .line 16
    new-instance v2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;

    .line 17
    .line 18
    invoke-direct {v2, p0, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller$1;-><init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;I)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->mIsSmooth:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-wide/16 v3, 0x190

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide/16 v3, 0x64

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-super {p0}, Landroidx/recyclerview/widget/a1;->onStop()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/n2;Landroidx/recyclerview/widget/k2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->s(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/m2;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->u(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/m2;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->y(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->u(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    :goto_0
    sub-int/2addr v0, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->x(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->u(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)Landroid/graphics/Rect;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_0

    .line 69
    :goto_1
    div-int/lit8 v0, v0, 0x2

    .line 70
    .line 71
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;->mOffset:I

    .line 72
    .line 73
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/a1;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/n2;Landroidx/recyclerview/widget/k2;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
