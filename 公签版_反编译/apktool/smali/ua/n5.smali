.class public final Lua/n5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onItemPreSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const-wide/16 v0, 0x64

    .line 6
    .line 7
    invoke-static {p2, p1, p1, v0, v1}, Lg/b;->r(Landroid/view/View;FFJ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onItemSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const p1, 0x3f83d70a    # 1.03f

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x64

    .line 7
    .line 8
    invoke-static {p2, p1, p1, v0, v1}, Lg/b;->r(Landroid/view/View;FFJ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
