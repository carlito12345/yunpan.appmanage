.class public Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;
.super Landroidx/recyclerview/widget/v1;
.source "SourceFile"


# instance fields
.field private final mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private final mItemSpacing:Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

.field private final mVerticalDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/v1;-><init>()V

    .line 3
    sget-object v0, Lw9/a;->c:[I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iput-object p2, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    iget-object p1, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2}, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->createSpacing(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    move-result-object p1

    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mItemSpacing:Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p1}, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/v1;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 14
    iput-object p2, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-static {p1, p2}, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->createSpacing(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    move-result-object p1

    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mItemSpacing:Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    return-void
.end method

.method private static createSpacing(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :cond_1
    new-instance p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    .line 17
    .line 18
    invoke-direct {p0, p1, v0}, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;-><init>(II)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->setAddSpacingAtEnd(Z)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mItemSpacing:Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lcom/owen/tvrecyclerview/BaseLayoutManager;

    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sub-int/2addr v3, v4

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    sub-int/2addr v4, v5

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x0

    .line 34
    :goto_0
    if-ge v6, v5, :cond_2

    .line 35
    .line 36
    move-object/from16 v7, p2

    .line 37
    .line 38
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v2, v8}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    invoke-virtual {v2, v8}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    invoke-virtual {v2, v8}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    invoke-virtual {v2, v8}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 63
    .line 64
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 65
    .line 66
    .line 67
    move-result v14

    .line 68
    sub-int v14, v12, v14

    .line 69
    .line 70
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 71
    .line 72
    sub-int/2addr v14, v15

    .line 73
    if-lez v14, :cond_0

    .line 74
    .line 75
    if-ge v12, v4, :cond_0

    .line 76
    .line 77
    sub-int v14, v12, v14

    .line 78
    .line 79
    iget-object v15, v0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    add-int/2addr v15, v14

    .line 86
    move-object/from16 v16, v2

    .line 87
    .line 88
    iget-object v2, v0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    invoke-virtual {v2, v9, v14, v11, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_0
    move-object/from16 v16, v2

    .line 100
    .line 101
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    sub-int v2, v11, v2

    .line 106
    .line 107
    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 108
    .line 109
    sub-int/2addr v2, v8

    .line 110
    if-lez v2, :cond_1

    .line 111
    .line 112
    if-ge v11, v3, :cond_1

    .line 113
    .line 114
    sub-int/2addr v11, v2

    .line 115
    iget-object v2, v0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    add-int/2addr v2, v11

    .line 122
    iget-object v8, v0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    invoke-virtual {v8, v11, v10, v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    .line 126
    .line 127
    iget-object v2, v0, Lcom/owen/tvrecyclerview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    .line 131
    .line 132
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 133
    .line 134
    move-object/from16 v2, v16

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    return-void
.end method
