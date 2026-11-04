.class public Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;
.super Landroidx/recyclerview/widget/v1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration$Adapter;

.field private mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTempSectionIndex:I

.field private mTempTitleView:Landroid/view/View;

.field private final mTitleViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration$Adapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/v1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTitleViews:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempSectionIndex:I

    .line 20
    .line 21
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mAdapter:Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration$Adapter;

    .line 22
    .line 23
    return-void
.end method

.method private createAndMeasureTitleView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mAdapter:Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration$Adapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 7
    .line 8
    iget v1, v1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 9
    .line 10
    invoke-interface {v0, v1, p1}, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration$Adapter;->getTitleView(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 15
    .line 16
    if-eqz v0, :cond_6

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, -0x2

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object v3, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 41
    .line 42
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 43
    .line 44
    add-int/2addr v2, v3

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object v4, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 50
    .line 51
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 52
    .line 53
    add-int/2addr v3, v4

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget-object v5, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 59
    .line 60
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 61
    .line 62
    add-int/2addr v4, v5

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iget-object v6, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 68
    .line 69
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 70
    .line 71
    add-int/2addr v5, v6

    .line 72
    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    .line 74
    if-gez v6, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    sub-int/2addr v6, v2

    .line 81
    sub-int/2addr v6, v3

    .line 82
    :cond_2
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 83
    .line 84
    if-gez v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    sub-int/2addr p1, v4

    .line 91
    sub-int v2, p1, v5

    .line 92
    .line 93
    :cond_3
    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    .line 95
    const/high16 v3, 0x40000000    # 2.0f

    .line 96
    .line 97
    const/high16 v4, -0x80000000

    .line 98
    .line 99
    if-ne p1, v1, :cond_4

    .line 100
    .line 101
    const/high16 p1, -0x80000000

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    .line 105
    .line 106
    :goto_0
    invoke-static {v6, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    .line 112
    if-ne v0, v1, :cond_5

    .line 113
    .line 114
    const/high16 v3, -0x80000000

    .line 115
    .line 116
    :cond_5
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 121
    .line 122
    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTitleViews:Landroid/util/SparseArray;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 128
    .line 129
    iget v0, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 130
    .line 131
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/n2;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    check-cast p4, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 8
    .line 9
    new-instance p4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "ViewAdapterPosition="

    .line 12
    .line 13
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " isSectionStart="

    .line 26
    .line 27
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 31
    .line 32
    iget-boolean v0, v0, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 33
    .line 34
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " Decorated Top="

    .line 38
    .line 39
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 61
    .line 62
    iget-boolean p4, p2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 63
    .line 64
    if-eqz p4, :cond_3

    .line 65
    .line 66
    iget-object p4, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTitleViews:Landroid/util/SparseArray;

    .line 67
    .line 68
    iget p2, p2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 69
    .line 70
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Landroid/view/View;

    .line 75
    .line 76
    iput-object p2, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 77
    .line 78
    if-nez p2, :cond_0

    .line 79
    .line 80
    invoke-direct {p0, p3}, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->createAndMeasureTitleView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object p2, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 84
    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager;

    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    const/4 p3, 0x0

    .line 98
    if-eqz p2, :cond_1

    .line 99
    .line 100
    const/4 p4, 0x0

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object p4, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    :goto_0
    if-eqz p2, :cond_2

    .line 109
    .line 110
    iget-object p2, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    const/4 p2, 0x0

    .line 118
    :goto_1
    invoke-virtual {p1, p4, p2, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/n2;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-ge v0, p3, :cond_2

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 19
    .line 20
    iget v2, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempSectionIndex:I

    .line 21
    .line 22
    iget v3, v1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    iget-boolean v1, v1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->isSectionStart:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTitleViews:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/view/View;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iget-object v2, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempRect:Landroid/graphics/Rect;

    .line 60
    .line 61
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 62
    .line 63
    iget-object v3, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v3, v1

    .line 70
    iget-object v4, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    add-int/2addr v4, v2

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    .line 79
    .line 80
    iget-object v5, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 83
    .line 84
    .line 85
    int-to-float v1, v1

    .line 86
    int-to-float v2, v2

    .line 87
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 96
    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "mTitleView.draw ... sectionIndex="

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 106
    .line 107
    iget v2, v2, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_0
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 120
    .line 121
    iget v1, v1, Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;->sectionIndex:I

    .line 122
    .line 123
    iput v1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempSectionIndex:I

    .line 124
    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    const/4 p1, -0x1

    .line 129
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempSectionIndex:I

    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempItemLp:Lcom/owen/tvrecyclerview/widget/MetroGridLayoutManager$LayoutParams;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/MetroTitleItemDecoration;->mTempTitleView:Landroid/view/View;

    .line 135
    .line 136
    return-void
.end method
