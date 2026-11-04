.class public final Lua/m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityShell;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityShell;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/m6;->a:Lcom/yunpan/appmanage/ui/ActivityShell;

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
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const-wide/16 v0, 0x96

    .line 6
    .line 7
    invoke-static {p2, p1, p1, v0, v1}, Lg/b;->r(Landroid/view/View;FFJ)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lua/m6;->a:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 11
    .line 12
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 13
    .line 14
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lx9/j1;

    .line 19
    .line 20
    iget-object p2, p2, Lx9/j1;->a:Ljava/lang/String;

    .line 21
    .line 22
    const-string p3, "\u626b\u7801"

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityShell;->E:Landroid/widget/ImageView;

    .line 31
    .line 32
    const/16 p2, 0x8

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
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
    const-wide/16 v0, 0x96

    .line 7
    .line 8
    invoke-static {p2, p1, p1, v0, v1}, Lg/b;->r(Landroid/view/View;FFJ)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lua/m6;->a:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 12
    .line 13
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 14
    .line 15
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lx9/j1;

    .line 20
    .line 21
    iget-object p2, p2, Lx9/j1;->a:Ljava/lang/String;

    .line 22
    .line 23
    const-string p3, "\u626b\u7801"

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityShell;->E:Landroid/widget/ImageView;

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
