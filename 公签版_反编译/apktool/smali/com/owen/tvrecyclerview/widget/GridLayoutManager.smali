.class public Lcom/owen/tvrecyclerview/widget/GridLayoutManager;
.super Lcom/owen/tvrecyclerview/BaseLayoutManager;
.source "SourceFile"


# static fields
.field private static final DEFAULT_NUM_COLS:I = 0x2

.field private static final DEFAULT_NUM_ROWS:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field private mNumColumns:I

.field private mNumRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/BaseLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lw9/a;->b:[I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x8

    .line 6
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumColumns:I

    const/16 p2, 0x9

    .line 7
    invoke-virtual {p1, p2, p5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumRows:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V
    .locals 1

    const/4 v0, 0x2

    .line 14
    invoke-direct {p0, p1, v0, v0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;-><init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;II)V

    return-void
.end method

.method public constructor <init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;-><init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V

    .line 10
    iput p2, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumColumns:I

    .line 11
    iput p3, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumRows:I

    const/4 p1, 0x1

    if-lt p2, p1, :cond_1

    if-lt p3, p1, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GridLayoutManager must have at least 1 row"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GridLayoutManager must have at least 1 column"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getLaneCount()I
    .locals 1

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
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumColumns:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumRows:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method public getLaneForPosition(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->getLaneCount()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    rem-int/2addr p2, p3

    .line 6
    invoke-virtual {p1, p2, p2}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->set(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getNumColumns()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumColumns:I

    .line 2
    .line 3
    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumRows:I

    .line 2
    .line 3
    return v0
.end method

.method public moveLayoutToPosition(IILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p4, p2}, Lcom/owen/tvrecyclerview/Lanes;->reset(I)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 9
    .line 10
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1, v0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->getLaneForPosition(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 16
    .line 17
    iget p2, p2, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/g2;->d(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->measureChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 45
    .line 46
    :goto_1
    if-ltz p2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p4, p2, p1}, Lcom/owen/tvrecyclerview/Lanes;->offset(II)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p2, p2, -0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumColumns:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumColumns:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumRows:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->mNumRows:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method
