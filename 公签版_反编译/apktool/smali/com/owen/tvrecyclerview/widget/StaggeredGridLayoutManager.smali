.class public Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;
.super Lcom/owen/tvrecyclerview/widget/GridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;,
        Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_NUM_COLS:I = 0x2

.field private static final DEFAULT_NUM_ROWS:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "StaggeredGridLayoutManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;-><init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;II)V

    return-void
.end method


# virtual methods
.method public cacheChildFrame(Landroid/view/View;Landroid/graphics/Rect;)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getItemEntryForPosition(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;->cacheItemFrame(Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string p2, "Tried to cache frame on undefined item"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public cacheChildLaneAndSpan(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->setUndefined()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getItemEntryForPosition(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 19
    .line 20
    iget v3, v1, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 21
    .line 22
    iget v4, v1, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 23
    .line 24
    invoke-virtual {v2, v3, v4}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->set(II)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->isUndefined()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 36
    .line 37
    invoke-virtual {p0, v2, p1, p2}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;->getLaneForChild(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    if-nez v1, :cond_2

    .line 41
    .line 42
    new-instance v1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 45
    .line 46
    iget v2, p2, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 47
    .line 48
    iget p2, p2, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->anchorLane:I

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-direct {v1, v2, p2, p1}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;-><init>(III)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->setItemEntryForPosition(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->setLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-object v1
.end method

.method public cacheItemFrame(Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 2
    .line 3
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    invoke-static {p1, v0}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->h(Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;I)V

    .line 7
    .line 8
    .line 9
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 10
    .line 11
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    sub-int/2addr v0, p2

    .line 14
    invoke-static {p1, v0}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->g(Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    instance-of v1, p1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 10
    .line 11
    iget p1, p1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-lt p1, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->getLaneCount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-gt p1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    and-int/2addr v0, v1

    .line 25
    :cond_1
    return v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;->generateDefaultLayoutParams()Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    move-result v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 1

    .line 12
    new-instance v0, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 3

    .line 3
    new-instance v0, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 4
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 5
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 8
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 9
    :goto_0
    instance-of v1, p1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    .line 10
    check-cast p1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 11
    iget p1, p1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->getLaneCount()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    :cond_1
    return-object v0
.end method

.method public getLaneForChild(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneForChild(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->isUndefined()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p2}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {v0, p1, p2, p3}, Lcom/owen/tvrecyclerview/Lanes;->findLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public getLaneForPosition(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getItemEntryForPosition(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget p3, p2, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 10
    .line 11
    iget p2, p2, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 12
    .line 13
    invoke-virtual {p1, p3, p2}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->set(II)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->setUndefined()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public getLaneSpanForChild(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget p1, p1, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    .line 8
    .line 9
    return p1
.end method

.method public getLaneSpanForPosition(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getItemEntryForPosition(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sub-int v0, p1, v0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "Could not find span for position "

    .line 29
    .line 30
    invoke-static {p1, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    invoke-static {v0}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->e(Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public moveLayoutToPosition(IILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 13

    .line 1
    move-object v6, p0

    .line 2
    move v7, p1

    .line 3
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 4
    .line 5
    .line 6
    move-result v8

    .line 7
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 8
    .line 9
    .line 10
    move-result-object v9

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {v9, v0}, Lcom/owen/tvrecyclerview/Lanes;->reset(I)V

    .line 13
    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    :goto_0
    if-gt v10, v7, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v10}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getItemEntryForPosition(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v11, v0

    .line 23
    check-cast v11, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 24
    .line 25
    if-eqz v11, :cond_1

    .line 26
    .line 27
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 28
    .line 29
    iget v1, v11, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 30
    .line 31
    iget v2, v11, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->set(II)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->isUndefined()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 45
    .line 46
    invoke-virtual {p0, v10}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;->getLaneSpanForPosition(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sget-object v2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 51
    .line 52
    invoke-virtual {v9, v0, v1, v2}, Lcom/owen/tvrecyclerview/Lanes;->findLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 56
    .line 57
    invoke-virtual {v11, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->setLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v1, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-static {v11}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->f(Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-static {v11}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->d(Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget-object v4, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 71
    .line 72
    sget-object v5, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 73
    .line 74
    move-object v0, v9

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/owen/tvrecyclerview/Lanes;->getChildFrame(Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/Lanes$LaneInfo;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 76
    .line 77
    .line 78
    move-object v1, v11

    .line 79
    move-object/from16 v11, p3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move-object/from16 v11, p3

    .line 83
    .line 84
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/g2;->d(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v5, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 89
    .line 90
    invoke-virtual {p0, v0, v5}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->measureChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v10}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getItemEntryForPosition(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    move-object v12, v1

    .line 98
    check-cast v12, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 99
    .line 100
    iget-object v1, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 101
    .line 102
    iget v2, v12, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 103
    .line 104
    iget v3, v12, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 105
    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->set(II)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    iget-object v4, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 120
    .line 121
    move-object v0, v9

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/owen/tvrecyclerview/Lanes;->getChildFrame(Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/Lanes$LaneInfo;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 126
    .line 127
    invoke-virtual {p0, v12, v0}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;->cacheItemFrame(Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;Landroid/graphics/Rect;)V

    .line 128
    .line 129
    .line 130
    move-object v1, v12

    .line 131
    :goto_1
    if-eq v10, v7, :cond_2

    .line 132
    .line 133
    iget-object v2, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 134
    .line 135
    iget v3, v1, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 136
    .line 137
    invoke-static {v1}, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->e(Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    sget-object v5, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 142
    .line 143
    move-object v0, p0

    .line 144
    invoke-virtual/range {v0 .. v5}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->pushChildFrame(Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_3
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 152
    .line 153
    iget v0, v0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 154
    .line 155
    iget-object v1, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 156
    .line 157
    invoke-virtual {v9, v0, v1}, Lcom/owen/tvrecyclerview/Lanes;->getLane(ILandroid/graphics/Rect;)V

    .line 158
    .line 159
    .line 160
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 161
    .line 162
    invoke-virtual {v9, v0}, Lcom/owen/tvrecyclerview/Lanes;->reset(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 166
    .line 167
    if-eqz v8, :cond_4

    .line 168
    .line 169
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 173
    .line 174
    :goto_2
    sub-int v0, p2, v0

    .line 175
    .line 176
    invoke-virtual {v9, v0}, Lcom/owen/tvrecyclerview/Lanes;->offset(I)V

    .line 177
    .line 178
    .line 179
    return-void
.end method
