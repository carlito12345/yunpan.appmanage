.class public Lcom/owen/tvrecyclerview/Lanes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owen/tvrecyclerview/Lanes$LaneInfo;
    }
.end annotation


# static fields
.field public static final NO_LANE:I = -0x1


# instance fields
.field private mInnerEnd:Ljava/lang/Integer;

.field private mInnerStart:Ljava/lang/Integer;

.field private final mIsVertical:Z

.field private final mLaneSize:F

.field private final mLanes:[Landroid/graphics/Rect;

.field private final mLayout:Lcom/owen/tvrecyclerview/BaseLayoutManager;

.field private final mSavedLanes:[Landroid/graphics/Rect;

.field private final mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/owen/tvrecyclerview/BaseLayoutManager;I)V
    .locals 8

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mTempRect:Landroid/graphics/Rect;

    .line 13
    new-instance v0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    invoke-direct {v0}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;-><init>()V

    iput-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 14
    iput-object p1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLayout:Lcom/owen/tvrecyclerview/BaseLayoutManager;

    .line 15
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    move-result v0

    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 16
    new-array v0, p2, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 17
    new-array v0, p2, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 18
    iget-object v2, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    .line 19
    iget-object v2, p0, Lcom/owen/tvrecyclerview/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1, p2}, Lcom/owen/tvrecyclerview/Lanes;->calculateLaneSize(Lcom/owen/tvrecyclerview/BaseLayoutManager;I)F

    move-result v1

    iput v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLaneSize:F

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_5

    int-to-float v3, v2

    .line 23
    iget v4, p0, Lcom/owen/tvrecyclerview/Lanes;->mLaneSize:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 24
    iget-boolean v5, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    if-eqz v5, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v6, v1

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    :cond_2
    add-int/2addr v3, p1

    if-eqz v5, :cond_3

    float-to-int v7, v4

    add-int/2addr v7, v6

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    if-eqz v5, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    float-to-int v4, v4

    add-int/2addr v4, v3

    .line 25
    :goto_4
    iget-object v5, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {v5, v6, v3, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/owen/tvrecyclerview/BaseLayoutManager;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;[Landroid/graphics/Rect;F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mTempRect:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    invoke-direct {v0}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;-><init>()V

    iput-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 4
    iput-object p1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLayout:Lcom/owen/tvrecyclerview/BaseLayoutManager;

    .line 5
    sget-object p1, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 6
    iput-object p3, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 7
    iput p4, p0, Lcom/owen/tvrecyclerview/Lanes;->mLaneSize:F

    .line 8
    array-length p1, p3

    new-array p1, p1, [Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/owen/tvrecyclerview/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length p1, p1

    if-ge v0, p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/owen/tvrecyclerview/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static calculateLaneSize(Lcom/owen/tvrecyclerview/BaseLayoutManager;I)F
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
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :goto_0
    sub-int/2addr p0, v0

    .line 20
    sub-int/2addr p0, v1

    .line 21
    int-to-float p0, p0

    .line 22
    int-to-float p1, p1

    .line 23
    div-float/2addr p0, p1

    .line 24
    return p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    goto :goto_0
.end method

.method private findLaneThatFitsSpan(IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)I
    .locals 10

    .line 1
    sub-int v0, p1, p2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int v2, v0, p2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 13
    .line 14
    array-length v3, v3

    .line 15
    sub-int/2addr v3, p2

    .line 16
    add-int/2addr v3, v1

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    :goto_0
    if-ge v0, v2, :cond_3

    .line 22
    .line 23
    iget-object v3, p0, Lcom/owen/tvrecyclerview/Lanes;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 24
    .line 25
    invoke-virtual {v3, v0, p1}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->set(II)V

    .line 26
    .line 27
    .line 28
    iget-object v5, p0, Lcom/owen/tvrecyclerview/Lanes;->mTempRect:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    int-to-float v4, p2

    .line 35
    iget v6, p0, Lcom/owen/tvrecyclerview/Lanes;->mLaneSize:F

    .line 36
    .line 37
    mul-float v4, v4, v6

    .line 38
    .line 39
    float-to-int v4, v4

    .line 40
    move v6, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v6, 0x1

    .line 43
    :goto_1
    if-eqz v3, :cond_1

    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    int-to-float v3, p2

    .line 48
    iget v4, p0, Lcom/owen/tvrecyclerview/Lanes;->mLaneSize:F

    .line 49
    .line 50
    mul-float v3, v3, v4

    .line 51
    .line 52
    float-to-int v3, v3

    .line 53
    move v7, v3

    .line 54
    :goto_2
    iget-object v8, p0, Lcom/owen/tvrecyclerview/Lanes;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 55
    .line 56
    move-object v4, p0

    .line 57
    move-object v9, p3

    .line 58
    invoke-virtual/range {v4 .. v9}, Lcom/owen/tvrecyclerview/Lanes;->getChildFrame(Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/Lanes$LaneInfo;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/owen/tvrecyclerview/Lanes;->mTempRect:Landroid/graphics/Rect;

    .line 62
    .line 63
    invoke-direct {p0, v0, p2, v3}, Lcom/owen/tvrecyclerview/Lanes;->intersects(IILandroid/graphics/Rect;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    return v0

    .line 70
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 p1, -0x1

    .line 74
    return p1
.end method

.method private intersects(IILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    move v0, p1

    .line 2
    :goto_0
    add-int v1, p1, p2

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    invoke-static {v1, p3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method private invalidateEdges()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerStart:Ljava/lang/Integer;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerEnd:Ljava/lang/Integer;

    .line 5
    .line 6
    return-void
.end method

.method private offsetLane(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, p2

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 p2, 0x0

    .line 17
    :goto_1
    invoke-virtual {p1, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public findLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->setUndefined()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 5
    .line 6
    if-ne p3, v0, :cond_0

    .line 7
    .line 8
    const v0, 0x7fffffff

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/high16 v0, -0x80000000

    .line 13
    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 16
    .line 17
    array-length v3, v2

    .line 18
    if-ge v1, v3, :cond_7

    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    sget-object v3, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 25
    .line 26
    if-ne p3, v3, :cond_1

    .line 27
    .line 28
    aget-object v2, v2, v1

    .line 29
    .line 30
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    aget-object v2, v2, v1

    .line 34
    .line 35
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    sget-object v3, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 39
    .line 40
    if-ne p3, v3, :cond_3

    .line 41
    .line 42
    aget-object v2, v2, v1

    .line 43
    .line 44
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    aget-object v2, v2, v1

    .line 48
    .line 49
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    :goto_2
    sget-object v3, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 52
    .line 53
    if-ne p3, v3, :cond_4

    .line 54
    .line 55
    if-lt v2, v0, :cond_5

    .line 56
    .line 57
    :cond_4
    sget-object v3, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 58
    .line 59
    if-ne p3, v3, :cond_6

    .line 60
    .line 61
    if-le v2, v0, :cond_6

    .line 62
    .line 63
    :cond_5
    invoke-direct {p0, v1, p2, p3}, Lcom/owen/tvrecyclerview/Lanes;->findLaneThatFitsSpan(IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const/4 v4, -0x1

    .line 68
    if-eq v3, v4, :cond_6

    .line 69
    .line 70
    invoke-virtual {p1, v3, v1}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->set(II)V

    .line 71
    .line 72
    .line 73
    move v0, v2

    .line 74
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_7
    return-void
.end method

.method public getChildFrame(Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/Lanes$LaneInfo;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 4

    .line 1
    iget v0, p4, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p4, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 9
    .line 10
    iget v1, p4, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 11
    .line 12
    aget-object v2, v0, v1

    .line 13
    .line 14
    sget-object v3, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 15
    .line 16
    if-ne p5, v3, :cond_1

    .line 17
    .line 18
    iget v1, p4, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->anchorLane:I

    .line 19
    .line 20
    :cond_1
    aget-object p4, v0, v1

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    if-ne p5, v3, :cond_2

    .line 31
    .line 32
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    sub-int/2addr p4, p3

    .line 38
    :goto_0
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 44
    .line 45
    if-ne p5, v3, :cond_4

    .line 46
    .line 47
    iget p4, p4, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    iget p4, p4, Landroid/graphics/Rect;->left:I

    .line 51
    .line 52
    sub-int/2addr p4, p2

    .line 53
    :goto_1
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    :goto_2
    iget p4, p1, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    add-int/2addr p4, p2

    .line 58
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    add-int/2addr p2, p3

    .line 63
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 64
    .line 65
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getInnerEnd()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerEnd:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const v0, 0x7fffffff

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerEnd:Ljava/lang/Integer;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    if-ge v0, v2, :cond_2

    .line 24
    .line 25
    aget-object v1, v1, v0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerEnd:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-boolean v3, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    :goto_1
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerEnd:Ljava/lang/Integer;

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerEnd:Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    return v0
.end method

.method public getInnerStart()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerStart:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerStart:Ljava/lang/Integer;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    if-ge v0, v2, :cond_2

    .line 23
    .line 24
    aget-object v1, v1, v0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerStart:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-boolean v3, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    :goto_1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerStart:Ljava/lang/Integer;

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mInnerStart:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    return v0
.end method

.method public getLane(ILandroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getLaneSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mLaneSize:F

    .line 2
    .line 3
    return v0
.end method

.method public getOrientation()Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;->HORIZONTAL:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public offset(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/owen/tvrecyclerview/Lanes;->offset(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/Lanes;->invalidateEdges()V

    return-void
.end method

.method public offset(II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/owen/tvrecyclerview/Lanes;->offsetLane(II)V

    .line 5
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/Lanes;->invalidateEdges()V

    return-void
.end method

.method public popChildFrame(Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 2

    .line 1
    if-ltz p2, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lt p2, v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    aget-object p2, v0, p2

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 16
    .line 17
    if-ne p4, v0, :cond_1

    .line 18
    .line 19
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    sub-int/2addr p1, p3

    .line 22
    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    add-int/2addr p1, p3

    .line 28
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 32
    .line 33
    if-ne p4, v0, :cond_3

    .line 34
    .line 35
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 36
    .line 37
    sub-int/2addr p1, p3

    .line 38
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    add-int/2addr p1, p3

    .line 44
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 45
    .line 46
    :goto_0
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/Lanes;->invalidateEdges()V

    .line 47
    .line 48
    .line 49
    :cond_4
    :goto_1
    return-void
.end method

.method public pushChildFrame(Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 2
    .line 3
    aget-object p2, v0, p2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 10
    .line 11
    if-ne p4, v0, :cond_0

    .line 12
    .line 13
    iget p4, p1, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    sub-int/2addr p4, v0

    .line 18
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    add-int/2addr p1, p3

    .line 21
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 25
    .line 26
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    sub-int/2addr p4, v0

    .line 29
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    sub-int/2addr p1, p3

    .line 32
    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 36
    .line 37
    if-ne p4, v0, :cond_2

    .line 38
    .line 39
    iget p4, p1, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    sub-int/2addr p4, v0

    .line 44
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 45
    .line 46
    add-int/2addr p1, p3

    .line 47
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    sub-int/2addr p4, v0

    .line 55
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    sub-int/2addr p1, p3

    .line 58
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 59
    .line 60
    :goto_0
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/Lanes;->invalidateEdges()V

    .line 61
    .line 62
    .line 63
    return p4
.end method

.method public reset(I)V
    .locals 4

    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 12
    aget-object v1, v1, v0

    .line 13
    iget-boolean v2, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    if-eqz v2, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_0
    move v3, p1

    :goto_1
    if-eqz v2, :cond_1

    move v2, p1

    goto :goto_2

    .line 14
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 15
    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 16
    iget-boolean v2, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    if-eqz v2, :cond_2

    .line 17
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 18
    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/Lanes;->invalidateEdges()V

    return-void
.end method

.method public reset(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 2
    aget-object v1, v1, v0

    .line 3
    iget-boolean v2, p0, Lcom/owen/tvrecyclerview/Lanes;->mIsVertical:Z

    if-eqz v2, :cond_1

    .line 4
    sget-object v2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    if-ne p1, v2, :cond_0

    .line 5
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 6
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 7
    :cond_1
    sget-object v2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    if-ne p1, v2, :cond_2

    .line 8
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 9
    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/Lanes;->invalidateEdges()V

    return-void
.end method

.method public restore()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/owen/tvrecyclerview/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    .line 10
    .line 11
    aget-object v2, v2, v0

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public save()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/owen/tvrecyclerview/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/owen/tvrecyclerview/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    .line 8
    .line 9
    aget-object v2, v2, v0

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method
