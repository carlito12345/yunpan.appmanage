.class public abstract Lcom/owen/tvrecyclerview/BaseLayoutManager;
.super Lcom/owen/tvrecyclerview/TwoWayLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;,
        Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;,
        Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "BaseLayoutManager"


# instance fields
.field protected final mChildFrame:Landroid/graphics/Rect;

.field private mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

.field private mItemEntriesToRestore:Lcom/owen/tvrecyclerview/ItemEntries;

.field private mLanes:Lcom/owen/tvrecyclerview/Lanes;

.field private mLanesToRestore:Lcom/owen/tvrecyclerview/Lanes;

.field protected final mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

.field protected final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 5
    new-instance p1, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    invoke-direct {p1}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;-><init>()V

    iput-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    return-void
.end method

.method public constructor <init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;-><init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 9
    new-instance p1, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    invoke-direct {p1}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;-><init>()V

    iput-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    return-void
.end method

.method private canUseLanes(Lcom/owen/tvrecyclerview/Lanes;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0, v1}, Lcom/owen/tvrecyclerview/Lanes;->calculateLaneSize(Lcom/owen/tvrecyclerview/BaseLayoutManager;I)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/Lanes;->getOrientation()Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getOrientation()Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-ne v3, v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/Lanes;->getCount()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ne v3, v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/Lanes;->getLaneSize()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    cmpl-float p1, p1, v2

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_1
    return v0
.end method

.method private ensureLayoutState()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 21
    .line 22
    invoke-direct {p0, v2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->canUseLanes(Lcom/owen/tvrecyclerview/Lanes;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 30
    .line 31
    new-instance v3, Lcom/owen/tvrecyclerview/Lanes;

    .line 32
    .line 33
    invoke-direct {v3, p0, v0}, Lcom/owen/tvrecyclerview/Lanes;-><init>(Lcom/owen/tvrecyclerview/BaseLayoutManager;I)V

    .line 34
    .line 35
    .line 36
    iput-object v3, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->requestMoveLayout()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Lcom/owen/tvrecyclerview/ItemEntries;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/owen/tvrecyclerview/ItemEntries;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 51
    .line 52
    :cond_1
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/owen/tvrecyclerview/Lanes;->getOrientation()Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v3, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/owen/tvrecyclerview/Lanes;->getOrientation()Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-ne v0, v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/owen/tvrecyclerview/Lanes;->getLaneSize()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/owen/tvrecyclerview/Lanes;->getLaneSize()F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    cmpl-float v0, v0, v2

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->invalidateItemLanesAfter(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/ItemEntries;->clear()V

    .line 87
    .line 88
    .line 89
    :goto_0
    const/4 v0, 0x1

    .line 90
    return v0

    .line 91
    :cond_3
    :goto_1
    return v1
.end method

.method private getHeightUsed(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes;->getLaneSize()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    int-to-float p1, p1

    .line 22
    mul-float v0, v0, p1

    .line 23
    .line 24
    float-to-int p1, v0

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sub-int/2addr v0, v1

    .line 34
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    sub-int/2addr v0, p1

    .line 40
    return v0
.end method

.method private getWidthUsed(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes;->getLaneSize()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    int-to-float p1, p1

    .line 22
    mul-float v0, v0, p1

    .line 23
    .line 24
    float-to-int p1, v0

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sub-int/2addr v0, v1

    .line 34
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    sub-int/2addr v0, p1

    .line 40
    return v0
.end method

.method private handleUpdate(IILcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->invalidateItemLanesAfter(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    if-eqz p3, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p3, v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq p3, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->offsetForRemoval(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->offsetForAddition(II)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->offsetForRemoval(II)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->offsetForAddition(II)V

    .line 29
    .line 30
    .line 31
    :goto_0
    add-int/2addr p2, p1

    .line 32
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-gt p2, p3, :cond_3

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getLastVisiblePosition()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-gt p1, p2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 46
    .line 47
    .line 48
    :cond_4
    return-void
.end method

.method private popChildFrame(Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 3

    .line 1
    move v0, p3

    .line 2
    :goto_0
    add-int v1, p3, p4

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 9
    .line 10
    if-eq p5, v1, :cond_0

    .line 11
    .line 12
    sub-int v1, v0, p3

    .line 13
    .line 14
    invoke-static {v1, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->a(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_1
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 21
    .line 22
    invoke-virtual {v2, p2, v0, v1, p5}, Lcom/owen/tvrecyclerview/Lanes;->popChildFrame(Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private requestMoveLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getPendingScrollPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getChildStart(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->setPendingScrollPositionWithOffset(II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public cacheChildFrame(Landroid/view/View;Landroid/graphics/Rect;)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public cacheChildLaneAndSpan(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public canAddMoreViews(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;I)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x14

    .line 6
    .line 7
    if-ne p1, v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    :goto_0
    if-gtz p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v3, p1

    .line 28
    :goto_1
    iget-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/Lanes;->getInnerStart()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    add-int/2addr p1, v3

    .line 35
    if-le p1, p2, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_2
    return v1

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_2

    .line 50
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    :goto_2
    if-gtz p1, :cond_5

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    move v3, p1

    .line 58
    :goto_3
    iget-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/Lanes;->getInnerEnd()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    sub-int/2addr p1, v3

    .line 65
    if-ge p1, p2, :cond_6

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    :cond_6
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, -0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 11
    .line 12
    if-ne p1, v3, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 17
    .line 18
    if-ne p1, v3, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_2
    return v1
.end method

.method public clearItemEntries()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/ItemEntries;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public detachChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 8

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
    invoke-virtual {p0, v1, v0, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneForPosition(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getDecoratedChildFrame(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getItemEntryForPosition(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 22
    .line 23
    iget v5, v0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    move-object v2, p0

    .line 30
    move-object v7, p2

    .line 31
    invoke-direct/range {v2 .. v7}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->popChildFrame(Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x2

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 3
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 4
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    return-object v0
.end method

.method public getDecoratedChildFrame(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 24
    .line 25
    return-void
.end method

.method public getItemEntryForPosition(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/ItemEntries;->getItemEntry(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return-object p1
.end method

.method public abstract getLaneCount()I
.end method

.method public getLaneForChild(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneForPosition(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract getLaneForPosition(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
.end method

.method public getLaneSpanForChild(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getLaneSpanForPosition(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getLanes()Lcom/owen/tvrecyclerview/Lanes;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 2
    .line 3
    return-object v0
.end method

.method public invalidateItemLanesAfter(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/ItemEntries;->invalidateItemLanesAfter(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public layoutChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 10

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
    invoke-virtual {p0, v1, p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneForChild(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    iget-object v6, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 23
    .line 24
    move-object v7, p2

    .line 25
    invoke-virtual/range {v2 .. v7}, Lcom/owen/tvrecyclerview/Lanes;->getChildFrame(Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/Lanes$LaneInfo;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->cacheChildFrame(Landroid/view/View;Landroid/graphics/Rect;)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    iget v8, v1, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    .line 43
    .line 44
    move-object v4, p0

    .line 45
    move-object v5, p1

    .line 46
    invoke-virtual/range {v4 .. v9}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    iget-object v4, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 64
    .line 65
    iget v5, v1, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    move-object v2, p0

    .line 72
    move-object v7, p2

    .line 73
    invoke-virtual/range {v2 .. v7}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->pushChildFrame(Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    const-string p1, "child position "

    .line 77
    .line 78
    const-string p2, " childFrame="

    .line 79
    .line 80
    invoke-static {p1, v0, p2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public measureChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->cacheChildLaneAndSpan(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->measureChildWithMargins(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getWidthUsed(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getHeightUsed(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public abstract moveLayoutToPosition(IILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/Lanes;->offset(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/Lanes;->offset(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public offsetForAddition(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/owen/tvrecyclerview/ItemEntries;->offsetForAddition(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public offsetForRemoval(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/owen/tvrecyclerview/ItemEntries;->offsetForRemoval(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->ADD:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->handleUpdate(IILcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->clearItemEntries()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 1

    .line 1
    sget-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->MOVE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->handleUpdate(IILcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->REMOVE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->handleUpdate(IILcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->UPDATE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->handleUpdate(IILcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanesToRestore:Lcom/owen/tvrecyclerview/Lanes;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iput-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntriesToRestore:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanesToRestore:Lcom/owen/tvrecyclerview/Lanes;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntriesToRestore:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 20
    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->ensureLayoutState()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/n2;->b()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Lcom/owen/tvrecyclerview/ItemEntries;->setAdapterSize(I)V

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-virtual {p0, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getAnchorItemPosition(Landroidx/recyclerview/widget/n2;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-lez v2, :cond_5

    .line 46
    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    :cond_4
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getPendingScrollOffset()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->moveLayoutToPosition(IILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 59
    .line 60
    sget-object v1, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/Lanes;->reset(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 63
    .line 64
    .line 65
    invoke-super {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onLayoutScrapList(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes;->save()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->onLayoutScrapList(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/Lanes;->restore()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->g(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)[Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->f(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/owen/tvrecyclerview/Lanes;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->h(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->g(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)[Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->f(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/owen/tvrecyclerview/Lanes;-><init>(Lcom/owen/tvrecyclerview/BaseLayoutManager;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;[Landroid/graphics/Rect;F)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanesToRestore:Lcom/owen/tvrecyclerview/Lanes;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->e(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)Lcom/owen/tvrecyclerview/ItemEntries;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntriesToRestore:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->getSuperState()Landroid/os/Parcelable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-super {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes;->getCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    new-array v3, v0, [Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-static {v1, v3}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->k(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;[Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    :goto_1
    if-ge v2, v0, :cond_1

    .line 27
    .line 28
    new-instance v3, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 34
    .line 35
    invoke-virtual {v4, v2, v3}, Lcom/owen/tvrecyclerview/Lanes;->getLane(ILandroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->g(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;)[Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    aput-object v3, v4, v2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getOrientation()Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->l(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes;->getLaneSize()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_2
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->j(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;F)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;->i(Lcom/owen/tvrecyclerview/BaseLayoutManager$LanedSavedState;Lcom/owen/tvrecyclerview/ItemEntries;)V

    .line 70
    .line 71
    .line 72
    return-object v1
.end method

.method public pushChildFrame(Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p5, v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->b(Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    move v3, p3

    .line 19
    :goto_1
    add-int v4, p3, p4

    .line 20
    .line 21
    if-ge v3, v4, :cond_3

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    sget-object v4, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 26
    .line 27
    if-eq p5, v4, :cond_1

    .line 28
    .line 29
    sub-int v4, v3, p3

    .line 30
    .line 31
    invoke-static {v4, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->a(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    const/4 v4, 0x0

    .line 37
    :goto_2
    iget-object v5, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mLanes:Lcom/owen/tvrecyclerview/Lanes;

    .line 38
    .line 39
    invoke-virtual {v5, p2, v3, v4, p5}, Lcom/owen/tvrecyclerview/Lanes;->pushChildFrame(Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-le p4, v2, :cond_2

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    sub-int v5, v3, p3

    .line 48
    .line 49
    invoke-static {p1, v5, v4, p4}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->c(Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;III)V

    .line 50
    .line 51
    .line 52
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method public setItemEntryForPosition(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mItemEntries:Lcom/owen/tvrecyclerview/ItemEntries;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/owen/tvrecyclerview/ItemEntries;->putItemEntry(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
