.class public Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field private mExtraLayoutSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    const/16 p1, 0x1f4

    .line 2
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;->mExtraLayoutSpace:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    const/16 p1, 0x1f4

    .line 4
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;->mExtraLayoutSpace:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x1f4

    .line 6
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;->mExtraLayoutSpace:I

    return-void
.end method


# virtual methods
.method public getExtraLayoutSpace(Landroidx/recyclerview/widget/n2;)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;->mExtraLayoutSpace:I

    .line 2
    .line 3
    return p1
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

.method public setExtraLayoutSpace(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;->mExtraLayoutSpace:I

    .line 2
    .line 3
    return-void
.end method
