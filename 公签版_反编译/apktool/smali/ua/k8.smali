.class public final Lua/k8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;


# instance fields
.field public final synthetic a:Lua/q8;


# direct methods
.method public constructor <init>(Lua/q8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/k8;->a:Lua/q8;

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
    iget-object p1, p0, Lua/k8;->a:Lua/q8;

    .line 4
    .line 5
    const/4 p3, -0x1

    .line 6
    iput p3, p1, Lua/q8;->M:I

    .line 7
    .line 8
    const/high16 p3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const-wide/16 v0, 0x96

    .line 11
    .line 12
    invoke-static {p2, p3, p3, v0, v1}, Lg/b;->r(Landroid/view/View;FFJ)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lua/q8;->N:Landroid/widget/TextView;

    .line 16
    .line 17
    const-string p2, ""

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onItemSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lua/k8;->a:Lua/q8;

    .line 4
    .line 5
    iput p3, p1, Lua/q8;->M:I

    .line 6
    .line 7
    const v0, 0x3f866666    # 1.05f

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0x96

    .line 11
    .line 12
    invoke-static {p2, v0, v0, v1, v2}, Lg/b;->r(Landroid/view/View;FFJ)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lua/q8;->N:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object p1, p1, Lua/q8;->n:Lx9/n;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lx9/w3;

    .line 24
    .line 25
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
