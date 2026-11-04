.class public Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;
.super Lcom/owen/tvrecyclerview/widget/GridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;,
        Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;,
        Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$OnSectionSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LANE_COUNTS:[I


# instance fields
.field private mIsIntelligentScroll:Z

.field private mLaneCounts:[I

.field private mMeasuring:Z

.field private mSectionSelectedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$OnSectionSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedSectionIndex:I

.field private smoothTargetPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    filled-new-array {v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->DEFAULT_LANE_COUNTS:[I

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSelectedSectionIndex:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mIsIntelligentScroll:Z

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->smoothTargetPosition:I

    .line 6
    sget-object v2, Lw9/a;->b:[I

    .line 7
    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    .line 9
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mIsIntelligentScroll:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 13
    array-length p2, p1

    .line 14
    new-array p3, p2, [I

    :goto_0
    if-ge v0, p2, :cond_1

    .line 15
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    sget-object p3, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->DEFAULT_LANE_COUNTS:[I

    .line 17
    :cond_1
    invoke-direct {p0, p3}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->initLaneCounts([I)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;[I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;-><init>(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Orientation;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSelectedSectionIndex:I

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mIsIntelligentScroll:Z

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->smoothTargetPosition:I

    .line 22
    invoke-direct {p0, p2}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->initLaneCounts([I)V

    return-void
.end method

.method private getChildHeight(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes;->getLaneSize()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float p1, p1

    .line 10
    mul-float v0, v0, p1

    .line 11
    .line 12
    float-to-int p1, v0

    .line 13
    return p1
.end method

.method private getChildWidth(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes;->getLaneSize()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float p1, p1

    .line 10
    mul-float v0, v0, p1

    .line 11
    .line 12
    float-to-int p1, v0

    .line 13
    return p1
.end method

.method private getHeightUsed(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->getRowSpan()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getChildHeight(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sub-int/2addr v0, p1

    .line 30
    return v0
.end method

.method private getLaneSpan(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->getColSpan()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->getRowSpan()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getLaneSpan(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->getColSpan()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->getRowSpan()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getWidthUsed(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->getColSpan()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getChildWidth(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sub-int/2addr v0, p1

    .line 30
    return v0
.end method

.method private varargs initLaneCounts([I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mLaneCounts:[I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/owen/tvrecyclerview/utils/MathUtil;->commonMultiple([I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->setNumColumns(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->setNumRows(I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "multiple="

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private notifySectionSelectedChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSectionSelectedListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$OnSectionSelectedListener;

    .line 20
    .line 21
    iget v2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSelectedSectionIndex:I

    .line 22
    .line 23
    invoke-interface {v1, v2}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$OnSectionSelectedListener;->onSectionSelected(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnSectionSelectedListener(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$OnSectionSelectedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSectionSelectedListeners:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSectionSelectedListeners:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSectionSelectedListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public cacheChildLaneAndSpan(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;
    .locals 12

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
    check-cast v1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;

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
    invoke-virtual {p0, v2, p1, p2}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getLaneForChild(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 45
    .line 46
    const-string v3, "cacheChildLaneAndSpan position="

    .line 47
    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, " direction="

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-static {p2}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const/4 v1, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    :goto_0
    if-ge p2, v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getItemEntryForPosition(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;

    .line 86
    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    invoke-static {v5}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->e(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    iget v7, v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 94
    .line 95
    if-ne v6, v7, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-direct {p0, v5, v6}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getLaneSpan(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;Z)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    add-int/2addr v4, v5

    .line 106
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->getLaneCount()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-le v4, v5, :cond_2

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-direct {p0, v2, p2}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getLaneSpan(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;Z)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    add-int/2addr v4, p2

    .line 125
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->getLaneCount()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-gt v4, p2, :cond_4

    .line 130
    .line 131
    const/4 p2, 0x1

    .line 132
    iput-boolean p2, v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    iput-boolean v1, v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 136
    .line 137
    :goto_2
    new-instance v1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;

    .line 138
    .line 139
    iget-object p2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 140
    .line 141
    iget v5, p2, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 142
    .line 143
    iget v6, p2, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->anchorLane:I

    .line 144
    .line 145
    iget v7, v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    .line 146
    .line 147
    iget v8, v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    .line 148
    .line 149
    invoke-static {v2}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->a(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;)I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    iget v10, v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 154
    .line 155
    iget-boolean v11, v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 156
    .line 157
    move-object v4, v1

    .line 158
    invoke-direct/range {v4 .. v11}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;-><init>(IIIIIIZ)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->setItemEntryForPosition(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    iget-object p2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 166
    .line 167
    invoke-virtual {v1, p2}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->setLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->d(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    iput-boolean p2, v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 175
    .line 176
    :goto_3
    const-string p2, " lp.isSectionStart="

    .line 177
    .line 178
    invoke-static {v3, v0, p2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    iget-boolean v0, v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 183
    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v0, " TopDecorationHeight="

    .line 188
    .line 189
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-object v1
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->canScrollHorizontally()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mMeasuring:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->canScrollVertically()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mMeasuring:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    check-cast p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->getLaneCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mLaneCounts:[I

    .line 16
    .line 17
    iget v3, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 18
    .line 19
    aget v2, v2, v3

    .line 20
    .line 21
    div-int/2addr v0, v2

    .line 22
    invoke-static {p1, v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->b(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, -0x1

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->getRowSpan()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-direct {p0, v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getChildHeight(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 42
    .line 43
    sub-int/2addr v0, v4

    .line 44
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 45
    .line 46
    sub-int/2addr v0, v4

    .line 47
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 48
    .line 49
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 50
    .line 51
    iget v0, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    .line 52
    .line 53
    if-lt v0, v3, :cond_0

    .line 54
    .line 55
    iget v0, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    .line 56
    .line 57
    if-lt v0, v3, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->getLaneCount()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-gt v0, v2, :cond_0

    .line 64
    .line 65
    iget p1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 66
    .line 67
    if-ltz p1, :cond_0

    .line 68
    .line 69
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mLaneCounts:[I

    .line 70
    .line 71
    array-length v0, v0

    .line 72
    if-ge p1, v0, :cond_0

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    :cond_0
    return v1

    .line 76
    :cond_1
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->getColSpan()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-direct {p0, v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getChildHeight(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 87
    .line 88
    sub-int/2addr v0, v2

    .line 89
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 90
    .line 91
    sub-int/2addr v0, v2

    .line 92
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 93
    .line 94
    iget v0, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    .line 95
    .line 96
    if-lt v0, v3, :cond_2

    .line 97
    .line 98
    iget v0, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    .line 99
    .line 100
    if-lt v0, v3, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->getLaneCount()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-gt v0, v2, :cond_2

    .line 107
    .line 108
    iget p1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 109
    .line 110
    if-ltz p1, :cond_2

    .line 111
    .line 112
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mLaneCounts:[I

    .line 113
    .line 114
    array-length v0, v0

    .line 115
    if-ge p1, v0, :cond_2

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    :cond_2
    return v1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->generateDefaultLayoutParams()Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;
    .locals 1

    .line 17
    new-instance v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;
    .locals 6

    .line 3
    new-instance v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 4
    instance-of v1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 6
    iget v1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    iget-object v2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mLaneCounts:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 7
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/GridLayoutManager;->getLaneCount()I

    move-result v1

    iget-object v2, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mLaneCounts:[I

    iget v4, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    aget v2, v2, v4

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->b(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;I)V

    .line 8
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 9
    iget v1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    iget-object v4, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mLaneCounts:[I

    iget v5, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    aget v4, v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    .line 10
    iget p1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    .line 11
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->getRowSpan()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getChildHeight(I)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 12
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    .line 13
    :cond_0
    iget v1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->colSpan:I

    .line 14
    iget v1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    iget-object v4, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mLaneCounts:[I

    iget p1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    aget p1, v4, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->rowSpan:I

    .line 15
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 16
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->getColSpan()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getChildHeight(I)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_1
    :goto_0
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
    invoke-virtual {p0, p2}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

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
    check-cast p2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;

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
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getLaneSpan(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;Z)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
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
    check-cast v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;

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
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

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
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getLaneSpan(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;Z)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method public getSelectedSectionIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSelectedSectionIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public isIntelligentScroll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mIsIntelligentScroll:Z

    .line 2
    .line 3
    return v0
.end method

.method public layoutChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->layoutChild(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mMeasuring:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getWidthUsed(Landroid/view/View;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getHeightUsed(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mMeasuring:Z

    .line 17
    .line 18
    return-void
.end method

.method public moveLayoutToPosition(IILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 14

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
    check-cast v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;

    .line 23
    .line 24
    move-object/from16 v11, p3

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/g2;->d(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->cacheChildLaneAndSpan(Landroid/view/View;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;

    .line 39
    .line 40
    :cond_0
    move-object v12, v0

    .line 41
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 42
    .line 43
    iget v1, v12, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 44
    .line 45
    iget v2, v12, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->set(II)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->isUndefined()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 59
    .line 60
    invoke-virtual {p0, v10}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getLaneSpanForPosition(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sget-object v2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 65
    .line 66
    invoke-virtual {v9, v0, v1, v2}, Lcom/owen/tvrecyclerview/Lanes;->findLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 70
    .line 71
    invoke-virtual {v12, v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->setLane(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v1, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-virtual {v12}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->getColSpan()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-direct {p0, v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getChildWidth(I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {v12}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;->getRowSpan()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-direct {p0, v0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getChildHeight(I)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    iget-object v4, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 93
    .line 94
    sget-object v13, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 95
    .line 96
    move-object v0, v9

    .line 97
    move-object v5, v13

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/owen/tvrecyclerview/Lanes;->getChildFrame(Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/Lanes$LaneInfo;Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 99
    .line 100
    .line 101
    if-eq v10, v7, :cond_2

    .line 102
    .line 103
    iget-object v2, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 104
    .line 105
    iget v3, v12, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->startLane:I

    .line 106
    .line 107
    invoke-direct {p0, v12, v8}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->getLaneSpan(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$MetroItemEntry;Z)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    move-object v0, p0

    .line 112
    move-object v1, v12

    .line 113
    move-object v5, v13

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->pushChildFrame(Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 121
    .line 122
    iget v0, v0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 123
    .line 124
    iget-object v1, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-virtual {v9, v0, v1}, Lcom/owen/tvrecyclerview/Lanes;->getLane(ILandroid/graphics/Rect;)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 130
    .line 131
    invoke-virtual {v9, v0}, Lcom/owen/tvrecyclerview/Lanes;->reset(Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v6, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 135
    .line 136
    if-eqz v8, :cond_4

    .line 137
    .line 138
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 142
    .line 143
    :goto_1
    sub-int v0, p2, v0

    .line 144
    .line 145
    invoke-virtual {v9, v0}, Lcom/owen/tvrecyclerview/Lanes;->offset(I)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->smoothTargetPosition:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 28
    .line 29
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSelectedSectionIndex:I

    .line 30
    .line 31
    iget p1, p1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 32
    .line 33
    if-eq v0, p1, :cond_0

    .line 34
    .line 35
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSelectedSectionIndex:I

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->notifySectionSelectedChanged()V

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->smoothTargetPosition:I

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public removeOnSectionSelectedListener(Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$OnSectionSelectedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSectionSelectedListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSelectedSectionIndex:I

    .line 8
    .line 9
    iget v2, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v1, v2, :cond_8

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v1, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->START:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 21
    .line 22
    :goto_0
    sget-object v2, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 23
    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    iget-boolean v5, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSuportIntelligentScrollEnd:Z

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-boolean v5, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSuportIntelligentScrollStart:Z

    .line 30
    .line 31
    :goto_1
    iget-boolean v6, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mIsIntelligentScroll:Z

    .line 32
    .line 33
    if-eqz v6, :cond_7

    .line 34
    .line 35
    if-eqz v5, :cond_7

    .line 36
    .line 37
    instance-of v5, p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 38
    .line 39
    if-eqz v5, :cond_7

    .line 40
    .line 41
    iget-object v5, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-virtual {p0, p2, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    move-object v5, p1

    .line 47
    check-cast v5, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    if-ne v1, v2, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 58
    .line 59
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    sub-int/2addr v1, v2

    .line 66
    invoke-virtual {v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getSelectedItemOffsetStart()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    :goto_2
    sub-int/2addr v1, v2

    .line 71
    goto :goto_4

    .line 72
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 77
    .line 78
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    sub-int/2addr v1, v2

    .line 81
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    sub-int/2addr v1, v2

    .line 86
    invoke-virtual {v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getSelectedItemOffsetEnd()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    :goto_3
    sub-int/2addr v1, v2

    .line 91
    neg-int v1, v1

    .line 92
    goto :goto_4

    .line 93
    :cond_3
    if-ne v1, v2, :cond_4

    .line 94
    .line 95
    iget-object v1, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 96
    .line 97
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    sub-int/2addr v1, v2

    .line 104
    invoke-virtual {v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getSelectedItemOffsetStart()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget-object v2, p0, Lcom/owen/tvrecyclerview/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 114
    .line 115
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 116
    .line 117
    sub-int/2addr v1, v2

    .line 118
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    sub-int/2addr v1, v2

    .line 123
    invoke-virtual {v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getSelectedItemOffsetEnd()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    goto :goto_3

    .line 128
    :goto_4
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_5

    .line 133
    .line 134
    sget-object v2, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    move v2, v1

    .line 143
    goto :goto_5

    .line 144
    :cond_5
    const/4 v2, 0x0

    .line 145
    :goto_5
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_6

    .line 150
    .line 151
    sget-object v6, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_6

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_6
    const/4 v1, 0x0

    .line 161
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v7, "dx="

    .line 164
    .line 165
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v7, " dy="

    .line 172
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v6}, Lcom/owen/tvrecyclerview/utils/Loger;->d(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 187
    .line 188
    .line 189
    const/4 v1, 0x1

    .line 190
    goto :goto_7

    .line 191
    :cond_7
    const/4 v1, 0x0

    .line 192
    :goto_7
    iget v0, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 193
    .line 194
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mSelectedSectionIndex:I

    .line 195
    .line 196
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->notifySectionSelectedChanged()V

    .line 197
    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_8
    const/4 v1, 0x0

    .line 201
    :goto_8
    if-nez v1, :cond_a

    .line 202
    .line 203
    invoke-super/range {p0 .. p5}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_9

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_9
    const/4 v3, 0x0

    .line 211
    :cond_a
    :goto_9
    return v3
.end method

.method public setIntelligentScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->mIsIntelligentScroll:Z

    .line 2
    .line 3
    return-void
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/m2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/m2;->getTargetPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;->smoothTargetPosition:I

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/m2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
