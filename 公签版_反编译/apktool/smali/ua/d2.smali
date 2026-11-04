.class public final Lua/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityHome;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityHome;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/d2;->a:Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onItemPreSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onItemSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lua/d2;->a:Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityHome;->E:Lx9/g3;

    .line 4
    .line 5
    invoke-virtual {p2}, Lx9/g3;->F()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eq p3, p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityHome;->E:Lx9/g3;

    .line 12
    .line 13
    invoke-virtual {p2, p3}, Lx9/g3;->G(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityHome;->F:Lcom/yunpan/appmanage/view/NoScrollViewPager;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, p3, v0, v0}, Lk4/g;->m(IZZ)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityHome;->G:Lx9/k2;

    .line 23
    .line 24
    iget-object p1, p1, Lx9/k2;->h:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lda/h;

    .line 31
    .line 32
    invoke-virtual {p1}, Lda/h;->m()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
