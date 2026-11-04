.class public final Lx9/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/a;


# instance fields
.field public final synthetic a:Lx9/t0;


# direct methods
.method public constructor <init>(Lx9/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx9/c1;->a:Lx9/t0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/media/session/a;->a(Lc6/a;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    new-instance v0, Lx9/f1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lx9/f1;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final synthetic e(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/a;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lx9/f1;

    .line 2
    .line 3
    check-cast p3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 4
    .line 5
    iget-object p2, p0, Lx9/c1;->a:Lx9/t0;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p2, p3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    if-ne p2, v0, :cond_1

    .line 17
    .line 18
    const p2, 0x7f0b0523

    .line 19
    .line 20
    .line 21
    iget-object p3, p3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->name:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const p3, 0x7f0b04b5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method
