.class public Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final DEFAULT_SPAN:I = 0x1


# instance fields
.field public colSpan:I

.field public rowSpan:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 3
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget-object v0, Lw9/a;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v1, 0x1

    .line 7
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 9
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget v0, p1, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 8
    .line 9
    iput v0, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 10
    .line 11
    iget p1, p1, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    .line 12
    .line 13
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 18
    .line 19
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    .line 20
    .line 21
    :goto_0
    return-void
.end method
