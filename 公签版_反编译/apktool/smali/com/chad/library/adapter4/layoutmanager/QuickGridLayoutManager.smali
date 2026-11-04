.class public Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# instance fields
.field public final a:Lg6/a;

.field public b:Landroidx/recyclerview/widget/m1;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 7
    new-instance p1, Lg6/a;

    invoke-direct {p1, p0}, Lg6/a;-><init>(Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;)V

    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->a:Lg6/a;

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/j0;

    move-result-object p2

    .line 9
    iput-object p2, p1, Lg6/a;->c:Landroidx/recyclerview/widget/j0;

    .line 10
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/j0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance p1, Lg6/a;

    invoke-direct {p1, p0}, Lg6/a;-><init>(Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;)V

    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->a:Lg6/a;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/j0;

    move-result-object p2

    .line 4
    iput-object p2, p1, Lg6/a;->c:Landroidx/recyclerview/widget/j0;

    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/j0;)V

    return-void
.end method


# virtual methods
.method public final onAdapterChanged(Landroidx/recyclerview/widget/m1;Landroidx/recyclerview/widget/m1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->b:Landroidx/recyclerview/widget/m1;

    .line 2
    .line 3
    return-void
.end method

.method public final onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->b:Landroidx/recyclerview/widget/m1;

    .line 13
    .line 14
    return-void
.end method

.method public final onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/g2;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/g2;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->b:Landroidx/recyclerview/widget/m1;

    .line 6
    .line 7
    return-void
.end method

.method public final setSpanSizeLookup(Landroidx/recyclerview/widget/j0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->a:Lg6/a;

    .line 2
    .line 3
    iput-object p1, v0, Lg6/a;->c:Landroidx/recyclerview/widget/j0;

    .line 4
    .line 5
    return-void
.end method
