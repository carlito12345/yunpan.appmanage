.class public Lcom/owen/tvrecyclerview/widget/SpacingItemDecoration;
.super Landroidx/recyclerview/widget/v1;
.source "SourceFile"


# instance fields
.field protected mHorizontalSpacing:I

.field protected final mItemSpacing:Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

.field protected mVerticalSpacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/v1;-><init>()V

    .line 10
    new-instance v0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    invoke-direct {v0, p1, p2}, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;-><init>(II)V

    iput-object v0, p0, Lcom/owen/tvrecyclerview/widget/SpacingItemDecoration;->mItemSpacing:Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/owen/tvrecyclerview/widget/SpacingItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/v1;-><init>()V

    .line 3
    sget-object v0, Lw9/a;->d:[I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/owen/tvrecyclerview/widget/SpacingItemDecoration;->mVerticalSpacing:I

    .line 6
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/owen/tvrecyclerview/widget/SpacingItemDecoration;->mHorizontalSpacing:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    new-instance p1, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    iget p2, p0, Lcom/owen/tvrecyclerview/widget/SpacingItemDecoration;->mHorizontalSpacing:I

    invoke-direct {p1, p2, p2}, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;-><init>(II)V

    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/SpacingItemDecoration;->mItemSpacing:Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/SpacingItemDecoration;->mItemSpacing:Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 7
    .line 8
    return-void
.end method
