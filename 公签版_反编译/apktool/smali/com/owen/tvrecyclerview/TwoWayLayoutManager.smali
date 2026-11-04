.class public abstract Lcom/owen/tvrecyclerview/TwoWayLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/l2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;,
        Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;,
        Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "TwoWayLayoutManager"


# instance fields
.field protected mIsVertical:Z

.field private mLayoutEnd:I

.field private mLayoutStart:I

.field private mPendingSavedState:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

.field private mPendingScrollOffset:I

.field private mPendingScrollPosition:I

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingSavedState:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingScrollPosition:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingScrollOffset:I

    .line 7
    sget-object v2, Lw9/a;->b:[I

    .line 8
    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_1

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    if-nez p3, :cond_0

    .line 11
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 12
    invoke-static {}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;->values()[Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    move-result-object v2

    aget-object p3, v2, p3

    invoke-virtual {p0, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->setOrientation(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingSavedState:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingScrollPosition:I

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingScrollOffset:I

    .line 19
    sget-object v2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    return-void
.end method

.method private adjustViewsStartOrEnd()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getStartWithPadding()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    if-gez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_1
    if-eqz v0, :cond_2

    .line 19
    .line 20
    neg-int v0, v0

    .line 21
    invoke-direct {p0, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->offsetChildren(I)V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method private correctTooHigh(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getLastVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroidx/recyclerview/widget/n2;->b()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    add-int/lit8 p3, p3, -0x1

    .line 10
    .line 11
    if-ne v0, p3, :cond_3

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getStartWithPadding()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getEndWithPadding()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 29
    .line 30
    sub-int/2addr p3, v1

    .line 31
    if-lez p3, :cond_3

    .line 32
    .line 33
    if-gtz v0, :cond_1

    .line 34
    .line 35
    iget v1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 36
    .line 37
    if-ge v1, p1, :cond_3

    .line 38
    .line 39
    :cond_1
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget v1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 42
    .line 43
    sub-int/2addr p1, v1

    .line 44
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    :cond_2
    invoke-direct {p0, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->offsetChildren(I)V

    .line 49
    .line 50
    .line 51
    if-lez v0, :cond_3

    .line 52
    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    invoke-direct {p0, v0, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillBefore(ILandroidx/recyclerview/widget/g2;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->adjustViewsStartOrEnd()V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method

.method private correctTooLow(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getStartWithPadding()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getEndWithPadding()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p3}, Landroidx/recyclerview/widget/n2;->b()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getLastVisiblePosition()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget v3, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 27
    .line 28
    sub-int/2addr v3, p1

    .line 29
    if-lez v3, :cond_4

    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    if-lt v2, v1, :cond_2

    .line 34
    .line 35
    iget p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 36
    .line 37
    if-le p1, v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-ne v2, v1, :cond_4

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->adjustViewsStartOrEnd()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    if-ne v2, v1, :cond_3

    .line 47
    .line 48
    iget p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 49
    .line 50
    sub-int/2addr p1, v0

    .line 51
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    :cond_3
    neg-int p1, v3

    .line 56
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->offsetChildren(I)V

    .line 57
    .line 58
    .line 59
    if-ge v2, v1, :cond_4

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    invoke-direct {p0, v2, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillAfter(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->adjustViewsStartOrEnd()V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    return-void
.end method

.method private fillAfter(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillAfter(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;I)V

    return-void
.end method

.method private fillAfter(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;I)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getEndWithPadding()I

    move-result v0

    add-int/2addr v0, p4

    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/n2;->b()I

    move-result p3

    .line 4
    :goto_0
    sget-object p4, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    invoke-virtual {p0, p4, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->canAddMoreViews(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ge p1, p3, :cond_0

    .line 5
    invoke-direct {p0, p1, p4, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->makeAndAddView(ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;)Landroid/view/View;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillBefore(ILandroidx/recyclerview/widget/g2;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillBefore(ILandroidx/recyclerview/widget/g2;I)V

    return-void
.end method

.method private fillBefore(ILandroidx/recyclerview/widget/g2;I)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getStartWithPadding()I

    move-result v0

    sub-int/2addr v0, p3

    .line 3
    :goto_0
    sget-object p3, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    invoke-virtual {p0, p3, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->canAddMoreViews(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 4
    invoke-direct {p0, p1, p3, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->makeAndAddView(ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;)Landroid/view/View;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillFromScrapList(Ljava/util/List;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :goto_0
    add-int/2addr v1, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 17
    .line 18
    :goto_1
    invoke-static {p1, p2, v1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->findNextScrapView(Ljava/util/List;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-direct {p0, v0, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->setupChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 28
    .line 29
    if-ne p2, v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method private fillGap(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/n2;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sget-object v3, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 14
    .line 15
    if-ne p1, v3, :cond_0

    .line 16
    .line 17
    add-int/2addr v2, v0

    .line 18
    invoke-direct {p0, v2, p2, p3, v1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillAfter(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->correctTooHigh(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    invoke-direct {p0, v2, p2, v1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillBefore(ILandroidx/recyclerview/widget/g2;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->correctTooLow(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method private fillSpecific(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/n2;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 9
    .line 10
    invoke-direct {p0, p1, v0, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->makeAndAddView(ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/n2;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p3, Landroidx/recyclerview/widget/n2;->a:I

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-ge v1, p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v2, v0

    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .line 26
    .line 27
    invoke-direct {p0, v1, p2, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillBefore(ILandroidx/recyclerview/widget/g2;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->adjustViewsStartOrEnd()V

    .line 31
    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillAfter(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->correctTooHigh(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private findFirstValidChildPosition(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ltz v3, :cond_0

    .line 18
    .line 19
    if-ge v3, p1, :cond_0

    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return v1
.end method

.method private static findNextScrapView(Ljava/util/List;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;I)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const v2, 0x7fffffff

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v4, v1

    .line 11
    :goto_0
    if-ge v3, v0, :cond_4

    .line 12
    .line 13
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    sub-int/2addr v6, p2

    .line 24
    if-gez v6, :cond_0

    .line 25
    .line 26
    sget-object v7, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 27
    .line 28
    if-eq p1, v7, :cond_3

    .line 29
    .line 30
    :cond_0
    if-lez v6, :cond_1

    .line 31
    .line 32
    sget-object v7, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 33
    .line 34
    if-ne p1, v7, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-ge v7, v2, :cond_3

    .line 42
    .line 43
    move-object v4, v5

    .line 44
    if-nez v6, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move v2, v7

    .line 48
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 52
    .line 53
    iget-object p0, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_5
    return-object v1
.end method

.method private getPendingItemSelectionState()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingSavedState:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->b(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method private getTotalSpace()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :goto_0
    sub-int/2addr v0, v1

    .line 19
    return v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr v0, v1

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0
.end method

.method private handleUpdate()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->setPendingScrollPositionWithOffset(II)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->setPendingScrollPositionWithOffset(II)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private makeAndAddView(ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/g2;->d(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 10
    .line 11
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 18
    .line 19
    if-ne p2, v0, :cond_0

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->setupChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 28
    .line 29
    .line 30
    if-nez p3, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->updateLayoutEdgesFromNewChild(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-object p1
.end method

.method private offsetChildren(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 13
    .line 14
    add-int/2addr v0, p1

    .line 15
    iput v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 16
    .line 17
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 18
    .line 19
    add-int/2addr v0, p1

    .line 20
    iput v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 21
    .line 22
    return-void
.end method

.method private recycleChildrenFromEnd(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getEndWithPadding()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {p0, v4}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getChildStart(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-gt v5, v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v4, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->detachChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v3, v1, -0x1

    .line 32
    .line 33
    move v6, v3

    .line 34
    move v3, v1

    .line 35
    move v1, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    if-ltz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/g2;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->updateLayoutEdgesFromRemovedChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    return-void
.end method

.method private recycleChildrenFromStart(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getStartWithPadding()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    if-ge v3, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {p0, v5}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getChildEnd(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-lt v6, v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    invoke-virtual {p0, v5, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->detachChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 34
    .line 35
    if-ltz v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/g2;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->updateLayoutEdgesFromRemovedChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    return-void
.end method

.method private recycleChildrenOutOfBounds(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->recycleChildrenFromStart(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->recycleChildrenFromEnd(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private resetLayoutEdges()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getStartWithPadding()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 6
    .line 7
    iput v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 8
    .line 9
    return-void
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_4

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getStartWithPadding()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getEndWithPadding()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getTotalSpace()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x1

    .line 28
    if-gez p1, :cond_1

    .line 29
    .line 30
    sub-int/2addr v5, v6

    .line 31
    neg-int v5, v5

    .line 32
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sub-int/2addr v5, v6

    .line 38
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    :goto_0
    if-nez v4, :cond_2

    .line 43
    .line 44
    iget v5, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 45
    .line 46
    if-lt v5, v2, :cond_2

    .line 47
    .line 48
    if-gtz p1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v6, 0x0

    .line 52
    :goto_1
    add-int/2addr v4, v0

    .line 53
    invoke-virtual {p3}, Landroidx/recyclerview/widget/n2;->b()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ne v4, v0, :cond_3

    .line 58
    .line 59
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 60
    .line 61
    if-gt v0, v3, :cond_3

    .line 62
    .line 63
    if-ltz p1, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    if-eqz v6, :cond_4

    .line 67
    .line 68
    :goto_2
    return v1

    .line 69
    :cond_4
    neg-int v0, p1

    .line 70
    invoke-direct {p0, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->offsetChildren(I)V

    .line 71
    .line 72
    .line 73
    if-lez p1, :cond_5

    .line 74
    .line 75
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 79
    .line 80
    :goto_3
    invoke-direct {p0, v0, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->recycleChildrenOutOfBounds(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    sget-object v4, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 88
    .line 89
    sub-int/2addr v2, v1

    .line 90
    invoke-virtual {p0, v4, v2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->canAddMoreViews(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;I)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_6

    .line 95
    .line 96
    sget-object v2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 97
    .line 98
    add-int/2addr v3, v1

    .line 99
    invoke-virtual {p0, v2, v3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->canAddMoreViews(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;I)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    :cond_6
    invoke-direct {p0, v0, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillGap(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    return p1

    .line 109
    :cond_8
    :goto_4
    return v1
.end method

.method private setupChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->measureChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->layoutChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private updateLayoutEdgesFromNewChild(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getChildStart(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    iput v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getChildEnd(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 16
    .line 17
    if-le p1, v0, :cond_1

    .line 18
    .line 19
    iput p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method private updateLayoutEdgesFromRemovedChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->resetLayoutEdges()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getChildStart(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getChildEnd(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v2, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 20
    .line 21
    if-le v1, v2, :cond_1

    .line 22
    .line 23
    iget v2, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 24
    .line 25
    if-ge p1, v2, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget-object v2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 29
    .line 30
    if-ne p2, v2, :cond_2

    .line 31
    .line 32
    const v1, 0x7fffffff

    .line 33
    .line 34
    .line 35
    iput v1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/high16 p1, -0x80000000

    .line 40
    .line 41
    iput p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 42
    .line 43
    add-int/lit8 p1, v0, -0x1

    .line 44
    .line 45
    move v4, v1

    .line 46
    move v1, p1

    .line 47
    move p1, v4

    .line 48
    :goto_0
    if-ltz v1, :cond_8

    .line 49
    .line 50
    add-int/lit8 v2, v0, -0x1

    .line 51
    .line 52
    if-gt v1, v2, :cond_8

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 59
    .line 60
    if-ne p2, v3, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getChildStart(Landroid/view/View;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iget v3, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 67
    .line 68
    if-ge v2, v3, :cond_3

    .line 69
    .line 70
    iput v2, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 71
    .line 72
    :cond_3
    if-lt v2, p1, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {p0, v2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getChildEnd(Landroid/view/View;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget v3, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 83
    .line 84
    if-le v2, v3, :cond_6

    .line 85
    .line 86
    iput v2, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 87
    .line 88
    :cond_6
    if-gt v2, p1, :cond_7

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract canAddMoreViews(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;I)Z
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    return v0
.end method

.method public cannotScrollBackward(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v1, v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getEndWithPadding()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-gt v0, v1, :cond_0

    .line 23
    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1
.end method

.method public cannotScrollForward(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getStartWithPadding()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    if-gtz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/n2;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/n2;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n2;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

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
    return-object p1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ge p1, v0, :cond_1

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x1

    .line 23
    :goto_0
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    new-instance v0, Landroid/graphics/PointF;

    .line 29
    .line 30
    int-to-float p1, p1

    .line 31
    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    new-instance v0, Landroid/graphics/PointF;

    .line 36
    .line 37
    int-to-float p1, p1

    .line 38
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/n2;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/n2;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n2;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public detachChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 0

    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/m1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getAnchorItemPosition(Landroidx/recyclerview/widget/n2;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n2;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getPendingScrollPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    if-lt v0, p1, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 v0, -0x1

    .line 17
    :cond_1
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_3

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->findFirstValidChildPosition(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_3
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :goto_0
    return p1
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :goto_0
    return p1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    .line 13
    add-int/2addr p1, v0

    .line 14
    return p1
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    .line 13
    sub-int/2addr p1, v0

    .line 14
    return p1
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    .line 13
    add-int/2addr p1, v1

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 15
    .line 16
    add-int/2addr p1, v0

    .line 17
    return p1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    .line 13
    add-int/2addr p1, v1

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    .line 16
    add-int/2addr p1, v0

    .line 17
    return p1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 12
    .line 13
    add-int/2addr p1, v0

    .line 14
    return p1
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    .line 13
    sub-int/2addr p1, v0

    .line 14
    return p1
.end method

.method public getEndWithPadding()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :goto_0
    sub-int/2addr v0, v1

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0
.end method

.method public getExtraLayoutSpace(Landroidx/recyclerview/widget/n2;)I
    .locals 1

    .line 1
    iget p1, p1, Landroidx/recyclerview/widget/n2;->a:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getTotalSpace()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public getOrientation()Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

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

.method public getPendingScrollOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingSavedState:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingScrollOffset:I

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingScrollOffset:I

    .line 21
    .line 22
    return v0
.end method

.method public getPendingScrollPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingSavedState:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->a(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingScrollPosition:I

    .line 11
    .line 12
    return v0
.end method

.method public getStartWithPadding()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract layoutChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8
    .line 9
    add-int v4, p2, v1

    .line 10
    .line 11
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    .line 13
    add-int v5, p3, p2

    .line 14
    .line 15
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 16
    .line 17
    sub-int v6, p4, p2

    .line 18
    .line 19
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 20
    .line 21
    sub-int v7, p5, p2

    .line 22
    .line 23
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    invoke-super/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public abstract measureChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/m1;Landroidx/recyclerview/widget/m1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/m1;Landroidx/recyclerview/widget/m1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    iget p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getStartWithPadding()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mLayoutStart:I

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/g2;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/g2;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->handleUpdate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->handleUpdate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->handleUpdate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->handleUpdate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->handleUpdate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getAnchorItemPosition(Landroidx/recyclerview/widget/n2;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/g2;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillSpecific(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->onLayoutScrapList(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->setPendingScrollPositionWithOffset(II)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingSavedState:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    .line 21
    .line 22
    return-void
.end method

.method public onLayoutScrapList(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean p2, p2, Landroidx/recyclerview/widget/n2;->g:Z

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->supportsPredictiveItemAnimations()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/g2;->d:Ljava/util/List;

    .line 19
    .line 20
    sget-object p2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillFromScrapList(Ljava/util/List;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 23
    .line 24
    .line 25
    sget-object p2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 26
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->fillFromScrapList(Ljava/util/List;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingSavedState:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    .line 2
    .line 3
    sget-object v1, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->EMPTY_STATE:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getPendingScrollPosition()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :cond_0
    invoke-static {v0, v1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->c(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;I)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;->d(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$SavedState;Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->setPendingScrollPositionWithOffset(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setOrientation(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 9
    .line 10
    if-ne v0, p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mIsVertical:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setPendingScrollPositionWithOffset(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingScrollPosition:I

    .line 2
    .line 3
    iput p2, p0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->mPendingScrollOffset:I

    .line 4
    .line 5
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/n2;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$1;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$1;-><init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/m2;->setTargetPosition(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/m2;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
