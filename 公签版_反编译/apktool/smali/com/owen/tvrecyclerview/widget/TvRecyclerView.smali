.class public Lcom/owen/tvrecyclerview/widget/TvRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;,
        Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;,
        Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;,
        Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;,
        Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;,
        Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOAD_MORE_BEFOREHAND_COUNT:I = 0x4

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mDataObserver:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;

.field private mHasFocusWithPrevious:Z

.field private mHasMoreData:Z

.field public mHorizontalSpacingWithMargins:I

.field private mIsMemoryFocus:Z

.field private mIsMenu:Z

.field private mLoadMoreBeforehandCount:I

.field private mLoadingMore:Z

.field private mOldHorizontalSpacingWithMargins:I

.field private mOldVerticalSpacingWithMargins:I

.field private mOnInBorderKeyEventListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;

.field private mOnItemListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;

.field private mOnLoadMoreListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;

.field private mOptimizeLayout:Z

.field private mScrollPoint:Landroid/graphics/Point;

.field protected mScrollX:I

.field protected mScrollY:I

.field private mSelectedItemCentered:Z

.field private mSelectedItemOffsetEnd:I

.field private mSelectedItemOffsetStart:I

.field private mSelectedPosition:I

.field private mShouldReverseLayout:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field public mVerticalSpacingWithMargins:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const-class v1, Landroid/content/Context;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const-class v1, Landroid/util/AttributeSet;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sput-object v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 5
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 6
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOldVerticalSpacingWithMargins:I

    .line 7
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOldHorizontalSpacingWithMargins:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasMoreData:Z

    .line 9
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mLoadingMore:Z

    const/4 v2, -0x1

    .line 10
    iput v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 11
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasFocusWithPrevious:Z

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 13
    new-instance v2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;

    invoke-direct {v2, p0, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;-><init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;I)V

    iput-object v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mDataObserver:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;

    .line 14
    iput-boolean v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mShouldReverseLayout:Z

    .line 15
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mScrollPoint:Landroid/graphics/Point;

    .line 16
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->init(Landroid/content/Context;)V

    .line 17
    sget-object v2, Lw9/a;->b:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x6

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 20
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V

    :cond_0
    const/16 p1, 0xb

    .line 21
    invoke-virtual {v2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemCentered:Z

    const/4 p1, 0x4

    .line 22
    invoke-virtual {v2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMenu:Z

    const/4 p2, 0x3

    .line 23
    invoke-virtual {v2, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMemoryFocus:Z

    const/4 p2, 0x7

    .line 24
    invoke-virtual {v2, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mLoadMoreBeforehandCount:I

    const/16 p1, 0xd

    .line 25
    invoke-virtual {v2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    const/16 p1, 0xc

    .line 26
    invoke-virtual {v2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetEnd:I

    const/16 p1, 0xa

    .line 27
    invoke-virtual {v2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOptimizeLayout:Z

    const/16 p1, 0xe

    .line 28
    invoke-virtual {v2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 29
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSpacingWithMargins(II)V

    .line 31
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private adjustPadding()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 6
    .line 7
    if-ltz v1, :cond_1

    .line 8
    .line 9
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 12
    .line 13
    div-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    iget v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOldVerticalSpacingWithMargins:I

    .line 16
    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 18
    .line 19
    iget v3, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOldHorizontalSpacingWithMargins:I

    .line 20
    .line 21
    div-int/lit8 v3, v3, 0x2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    add-int/2addr v4, v3

    .line 28
    sub-int/2addr v4, v1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    add-int/2addr v5, v2

    .line 34
    sub-int/2addr v5, v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    add-int/2addr v6, v3

    .line 40
    sub-int/2addr v6, v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v1, v2

    .line 46
    sub-int/2addr v1, v0

    .line 47
    invoke-virtual {p0, v4, v5, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method private computeScrollOffset(IIII)I
    .locals 3

    .line 1
    const-string v0, "zsq start="

    .line 2
    .line 3
    const-string v1, " end="

    .line 4
    .line 5
    const-string v2, " offsetStart="

    .line 6
    .line 7
    invoke-static {p1, p2, v0, v1, v2}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " offsetEnd="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "zsq canScrollHorizontally( -1)="

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    invoke-virtual {p0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->canScrollHorizontally(I)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, " canScrollVertically( -1)="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->canScrollVertically(I)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    if-lez p2, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getLastVisiblePosition()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getItemCount()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    sub-int/2addr p3, v0

    .line 75
    if-eq p1, p3, :cond_0

    .line 76
    .line 77
    add-int/2addr p2, p4

    .line 78
    :cond_0
    return p2

    .line 79
    :cond_1
    if-gez p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFirstVisiblePosition()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_2

    .line 86
    .line 87
    sub-int/2addr p1, p3

    .line 88
    :cond_2
    return p1

    .line 89
    :cond_3
    if-lez p1, :cond_5

    .line 90
    .line 91
    if-ge p1, p3, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->canScrollHorizontally(I)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->canScrollVertically(I)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    :cond_4
    sub-int/2addr p1, p3

    .line 106
    return p1

    .line 107
    :cond_5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-lez p1, :cond_7

    .line 112
    .line 113
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-ge p1, p4, :cond_7

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->canScrollHorizontally(I)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_6

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->canScrollVertically(I)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    sub-int/2addr p4, p1

    .line 136
    return p4

    .line 137
    :cond_7
    const/4 p1, 0x0

    .line 138
    return p1
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    const-string v0, ": Could not instantiate the LayoutManager: "

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->isInEditMode()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :catch_1
    move-exception p1

    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :catch_2
    move-exception p1

    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :catch_3
    move-exception p1

    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :catch_4
    move-exception p1

    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-class v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v2, 0x1

    .line 63
    :try_start_1
    sget-object v3, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const/4 v4, 0x3

    .line 70
    new-array v4, v4, [Ljava/lang/Object;

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    aput-object p1, v4, v5

    .line 74
    .line 75
    aput-object p3, v4, v2

    .line 76
    .line 77
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/4 p4, 0x2

    .line 82
    aput-object p1, v4, p4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_5
    move-exception p1

    .line 86
    const/4 v4, 0x0

    .line 87
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 88
    .line 89
    .line 90
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :goto_1
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_7

    .line 104
    .line 105
    :catch_6
    move-exception p4

    .line 106
    invoke-virtual {p4, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 107
    .line 108
    .line 109
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, ": Error creating LayoutManager "

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-direct {p1, v1, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    .line 139
    :goto_2
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p3, ": Class is not a LayoutManager "

    .line 154
    .line 155
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw p4

    .line 169
    :goto_3
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p3, ": Cannot access non-public constructor "

    .line 184
    .line 185
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    throw p4

    .line 199
    :goto_4
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw p4

    .line 227
    :goto_5
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 228
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p3

    .line 238
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    throw p4

    .line 255
    :goto_6
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 256
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string p3, ": Unable to find LayoutManager "

    .line 270
    .line 271
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    throw p4

    .line 285
    :cond_1
    :goto_7
    return-void
.end method

.method private findNextFocus(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private getChildRectangleOnScreenScrollAmount2(Landroid/view/View;Landroid/graphics/Rect;II)[I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    iget-object p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    add-int/2addr p2, p1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sub-int/2addr p2, p1

    .line 37
    iget-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 38
    .line 39
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr p1, v1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "zsq left="

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, " right="

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->computeScrollOffset(IIII)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 p1, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_1

    .line 86
    .line 87
    iget-object p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 88
    .line 89
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    add-int/2addr v0, p2

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    sub-int/2addr v0, p2

    .line 101
    iget-object p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 102
    .line 103
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    sub-int/2addr p2, v1

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, "zsq top="

    .line 113
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, " bottom="

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->computeScrollOffset(IIII)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    move v3, v0

    .line 140
    move v0, p1

    .line 141
    move p1, v3

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    move v0, p1

    .line 144
    :cond_2
    const/4 p1, 0x0

    .line 145
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string p3, "zsq dx="

    .line 148
    .line 149
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p3, " dy="

    .line 156
    .line 157
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {p2}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    filled-new-array {v0, p1}, [I

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    return-object p1
.end method

.method private getFreeHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method private getFreeWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x2e

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    const-string p1, "."

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    return-object p2

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-class v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method private hasInBorder(ILandroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq p1, v0, :cond_8

    .line 7
    .line 8
    const/16 v0, 0x21

    .line 9
    .line 10
    if-eq p1, v0, :cond_6

    .line 11
    .line 12
    const/16 v0, 0x42

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const-string v4, "zsq offset="

    .line 16
    .line 17
    if-eq p1, v0, :cond_3

    .line 18
    .line 19
    const/16 v0, 0x82

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    invoke-virtual {p0, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->canScrollVertically(I)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p3, :cond_2

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    sub-int/2addr p1, p3

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    .line 49
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 50
    .line 51
    sub-int/2addr p1, p2

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    sub-int/2addr p1, p2

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p2}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-gt p1, v1, :cond_1

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    :cond_1
    return v2

    .line 80
    :cond_2
    xor-int/2addr p1, v3

    .line 81
    return p1

    .line 82
    :cond_3
    invoke-virtual {p0, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->canScrollHorizontally(I)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p3, :cond_5

    .line 87
    .line 88
    if-nez p1, :cond_5

    .line 89
    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    sub-int/2addr p1, p3

    .line 101
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 106
    .line 107
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 108
    .line 109
    sub-int/2addr p1, p2

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    sub-int/2addr p1, p2

    .line 115
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-static {p2}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    if-gt p1, v1, :cond_4

    .line 135
    .line 136
    const/4 v2, 0x1

    .line 137
    :cond_4
    return v2

    .line 138
    :cond_5
    xor-int/2addr p1, v3

    .line 139
    return p1

    .line 140
    :cond_6
    if-eqz p3, :cond_7

    .line 141
    .line 142
    return v2

    .line 143
    :cond_7
    invoke-virtual {p0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->canScrollVertically(I)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    xor-int/2addr p1, v3

    .line 148
    return p1

    .line 149
    :cond_8
    if-eqz p3, :cond_9

    .line 150
    .line 151
    return v2

    .line 152
    :cond_9
    invoke-virtual {p0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->canScrollHorizontally(I)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    xor-int/2addr p1, v3

    .line 157
    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/t1;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/t1;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroidx/recyclerview/widget/u2;

    .line 39
    .line 40
    iput-boolean v0, p1, Landroidx/recyclerview/widget/u2;->g:Z

    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public static bridge synthetic r(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMenu:Z

    return p0
.end method

.method private resetAdapter(Landroidx/recyclerview/widget/m1;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mDataObserver:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mShouldReverseLayout:Z

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mDataObserver:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->o(Landroidx/recyclerview/widget/o1;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v0, v0, Lcom/owen/tvrecyclerview/BaseLayoutManager;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasFocusWithPrevious:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    :goto_1
    sub-int/2addr p1, v0

    .line 92
    invoke-virtual {p0, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFirstVisibleAndFocusablePosition()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 101
    .line 102
    :goto_2
    if-eqz p2, :cond_4

    .line 103
    .line 104
    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 106
    .line 107
    :cond_4
    return-void
.end method

.method public static bridge synthetic s(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemCentered:Z

    return p0
.end method

.method private scrollToPosition(IZZI)V
    .locals 7

    .line 2
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 3
    new-instance v6, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;-><init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/content/Context;ZZI)V

    .line 4
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/m2;->setTargetPosition(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/m2;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    return p0
.end method

.method public static bridge synthetic u(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    return-void
.end method

.method public static bridge synthetic w(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mShouldReverseLayout:Z

    return-void
.end method

.method public static bridge synthetic x(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFreeHeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFreeWidth()I

    move-result p0

    return p0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addFocusables(Ljava/util/ArrayList;II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->canScrollHorizontally()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->cannotScrollBackward(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->cannotScrollForward(I)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    :goto_0
    const/4 p1, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    :goto_1
    return p1

    .line 46
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->canScrollVertically()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->cannotScrollBackward(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->cannotScrollForward(I)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    :goto_0
    const/4 p1, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    :goto_1
    return p1

    .line 46
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 8
    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    iget v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 12
    .line 13
    if-ltz v2, :cond_1

    .line 14
    .line 15
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    iget v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 18
    .line 19
    div-int/lit8 v2, v2, 0x2

    .line 20
    .line 21
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 22
    .line 23
    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public finishLoadMore()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mLoadingMore:Z

    .line 3
    .line 4
    return-void
.end method

.method public finishLoadMoreWithNoMore()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mLoadingMore:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasMoreData(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->findNextFocus(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p2, p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->hasInBorder(ILandroid/view/View;Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOnInBorderKeyEventListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p2, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;->onInBorderKeyEvent(ILandroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1

    .line 24
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_2
    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    if-le v0, p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p2, v0

    .line 19
    :goto_0
    return p2

    .line 20
    :cond_1
    if-ne v0, p2, :cond_2

    .line 21
    .line 22
    return p1

    .line 23
    :cond_2
    return p2
.end method

.method public getFirstVisibleAndFocusablePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, -0x1

    .line 32
    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

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
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/m1;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public getLastVisibleAndFocusablePosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getLastVisiblePosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    :goto_0
    if-lt v1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, -0x1

    .line 32
    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

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
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
.end method

.method public getLoadMoreBeforehandCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mLoadMoreBeforehandCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getSelectedItemOffsetEnd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetEnd:I

    .line 2
    .line 3
    return v0
.end method

.method public getSelectedItemOffsetStart()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    .line 2
    .line 3
    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public hasMoreData()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasMoreData:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInEditMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mLoadingMore:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMemoryFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMemoryFocus:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMenu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMenu:Z

    .line 2
    .line 3
    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isSelectedItemCentered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemCentered:Z

    .line 2
    .line 3
    return v0
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    invoke-static {p1}, Lx0/i0;->a(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOnItemListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq p0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, p0, p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;->onItemClick(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_2

    .line 15
    .line 16
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 17
    .line 18
    if-nez v1, :cond_3

    .line 19
    .line 20
    iget-boolean p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMenu:Z

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOnItemListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;

    .line 35
    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    invoke-interface {p2, p0, p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;->onItemSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance p2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;

    .line 43
    .line 44
    invoke-direct {p2, p0, v1, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$1;-><init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;ZLandroid/view/View;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v2, 0x6

    .line 48
    .line 49
    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOnItemListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    invoke-interface {p2, p0, p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;->onItemPreSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-boolean v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasFocusWithPrevious:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 20
    :goto_1
    iput-boolean v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasFocusWithPrevious:Z

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "onLayout...start hasFocus()="

    .line 25
    .line 26
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v4, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasFocusWithPrevious:Z

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, " changed="

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, " ,mShouldReverseLayout="

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-boolean v4, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mShouldReverseLayout:Z

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOptimizeLayout:Z

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    iget-boolean v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mShouldReverseLayout:Z

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    goto :goto_4

    .line 75
    :cond_3
    :goto_2
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 76
    .line 77
    .line 78
    iput-boolean v3, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mShouldReverseLayout:Z

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_7

    .line 85
    .line 86
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 87
    .line 88
    if-gez p2, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFirstVisibleAndFocusablePosition()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iput p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getItemCount()I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-lt p2, p3, :cond_5

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getLastVisibleAndFocusablePosition()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    iput p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 108
    .line 109
    :cond_5
    :goto_3
    iget-boolean p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasFocusWithPrevious:Z

    .line 110
    .line 111
    if-eqz p2, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPreserveFocusAfterLayout()Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_6

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->requestDefaultFocus()V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_6
    iget-boolean p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMenu:Z

    .line 124
    .line 125
    if-eqz p2, :cond_7

    .line 126
    .line 127
    iget p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 128
    .line 129
    invoke-virtual {p0, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setItemActivated(I)V

    .line 130
    .line 131
    .line 132
    :cond_7
    :goto_4
    iput-boolean v3, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasFocusWithPrevious:Z

    .line 133
    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string p3, "onLayout...end layoutAfterFocus="

    .line 137
    .line 138
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p1, ". used time "

    .line 145
    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide p3

    .line 153
    sub-long/2addr p3, v0

    .line 154
    long-to-float p1, p3

    .line 155
    const/high16 p3, 0x447a0000    # 1000.0f

    .line 156
    .line 157
    div-float/2addr p1, p3

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, "s"

    .line 162
    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "onMeasure...start"

    .line 6
    .line 7
    invoke-static {v2}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, "onMeasure...end. used time "

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v2, v0

    .line 25
    long-to-float p2, v2

    .line 26
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 27
    .line 28
    div-float/2addr p2, v0

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p2, "s"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMemoryFocus:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFirstVisibleAndFocusablePosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-eqz v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-interface {v1, p0, v2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->k(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 14
    .line 15
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->l(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 20
    .line 21
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->b(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 26
    .line 27
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->g(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOldVerticalSpacingWithMargins:I

    .line 32
    .line 33
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->f(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOldHorizontalSpacingWithMargins:I

    .line 38
    .line 39
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->j(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    .line 44
    .line 45
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->i(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetEnd:I

    .line 50
    .line 51
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->h(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemCentered:Z

    .line 56
    .line 57
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->d(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMenu:Z

    .line 62
    .line 63
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->a(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasMoreData:Z

    .line 68
    .line 69
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->e(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMemoryFocus:Z

    .line 74
    .line 75
    :try_start_0
    invoke-static {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->c(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;)Landroid/os/Parcelable;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/j2;

    .line 6
    .line 7
    new-instance v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;

    .line 8
    .line 9
    iget-object v2, v0, Le1/b;->a:Landroid/os/Parcelable;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;-><init>(Landroid/os/Parcelable;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->o(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;Landroidx/recyclerview/widget/j2;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->w(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->x(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->n(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOldVerticalSpacingWithMargins:I

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->s(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOldHorizontalSpacingWithMargins:I

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->r(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->v(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetEnd:I

    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->u(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;I)V

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemCentered:Z

    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->t(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;Z)V

    .line 55
    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMenu:Z

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->p(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;Z)V

    .line 60
    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasMoreData:Z

    .line 63
    .line 64
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->m(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;Z)V

    .line 65
    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMemoryFocus:Z

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;->q(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$ISavedState;Z)V

    .line 70
    .line 71
    .line 72
    return-object v1
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setScrollValue(II)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOnLoadMoreListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mLoadingMore:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasMoreData:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getLastVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/m1;->b()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mLoadMoreBeforehandCount:I

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    add-int/2addr v1, v2

    .line 35
    sub-int/2addr v0, v1

    .line 36
    if-lt p1, v0, :cond_0

    .line 37
    .line 38
    iput-boolean v2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mLoadingMore:Z

    .line 39
    .line 40
    iget-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOnLoadMoreListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;->onLoadMore()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    .line 1
    const/4 p3, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemCentered:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFreeWidth()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_0
    sub-int/2addr v0, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFreeHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_0

    .line 53
    :goto_1
    div-int/lit8 v0, v0, 0x2

    .line 54
    .line 55
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    .line 56
    .line 57
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetEnd:I

    .line 58
    .line 59
    :cond_2
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    .line 60
    .line 61
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetEnd:I

    .line 62
    .line 63
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getChildRectangleOnScreenScrollAmount2(Landroid/view/View;Landroid/graphics/Rect;II)[I

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    aget p2, p1, p3

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    aget p1, p1, v0

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "dx="

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, " dy="

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 98
    .line 99
    .line 100
    if-nez p2, :cond_4

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 106
    .line 107
    .line 108
    return p3

    .line 109
    :cond_4
    :goto_2
    return v0

    .line 110
    :cond_5
    :goto_3
    return p3
.end method

.method public requestDefaultFocus()V
    .locals 1

    .line 1
    const-string v0, "zqq requestDefaultFocus"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMenu:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMemoryFocus:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFirstVisibleAndFocusablePosition()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 24
    .line 25
    if-gez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getFirstVisibleAndFocusablePosition()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 32
    .line 33
    :cond_2
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    invoke-virtual {p0, p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPositionWithOffset(IIZ)V

    return-void
.end method

.method public scrollToPositionWithOffset(IIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p3, v0, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPosition(IZZI)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/m1;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->resetAdapter(Landroidx/recyclerview/widget/m1;Z)V

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/m1;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->resetAdapter(Landroidx/recyclerview/widget/m1;Z)V

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    return-void
.end method

.method public setHasMoreData(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHasMoreData:Z

    .line 2
    .line 3
    return-void
.end method

.method public setItemActivated(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->isActivated()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public setLoadMoreBeforehandCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mLoadMoreBeforehandCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setMemoryFocus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMemoryFocus:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMenu(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mIsMenu:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOnInBorderKeyEventListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOnItemListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOnLoadMoreListener:Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollValue(II)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mScrollPoint:Landroid/graphics/Point;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mScrollPoint:Landroid/graphics/Point;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :goto_1
    return-void
.end method

.method public setSelectedItemAtCentered(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemCentered:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSelectedItemOffset(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    .line 2
    .line 3
    iput p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetEnd:I

    .line 4
    .line 5
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$2;-><init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setSelectionWithSmooth(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedPosition:I

    .line 17
    .line 18
    new-instance v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v5, 0x1

    .line 25
    iget v6, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    move-object v1, v0

    .line 29
    move-object v2, p0

    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$TvSmoothScroller;-><init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/content/Context;ZZI)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/m2;->setTargetPosition(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/m2;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public setSpacingWithMargins(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 6
    .line 7
    if-eq v1, p2, :cond_1

    .line 8
    .line 9
    :cond_0
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOldVerticalSpacingWithMargins:I

    .line 10
    .line 11
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 12
    .line 13
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mOldHorizontalSpacingWithMargins:I

    .line 14
    .line 15
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 16
    .line 17
    iput p2, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->adjustPadding()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setScrollValue(II)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mSelectedItemOffsetStart:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->smoothScrollToPositionWithOffset(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public smoothScrollToPositionWithOffset(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->smoothScrollToPositionWithOffset(IIZ)V

    return-void
.end method

.method public smoothScrollToPositionWithOffset(IIZ)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p3, v0, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPosition(IZZI)V

    return-void
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/m1;Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->resetAdapter(Landroidx/recyclerview/widget/m1;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->p(Landroidx/recyclerview/widget/m1;ZZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
