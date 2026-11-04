.class public final Lx9/n0;
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
    iput-object p1, p0, Lx9/n0;->a:Lx9/t0;

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
    new-instance v0, Lx9/r0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lx9/r0;-><init>(Landroid/view/ViewGroup;)V

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
    .locals 0

    .line 1
    check-cast p1, Lx9/r0;

    .line 2
    .line 3
    check-cast p3, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 4
    .line 5
    iget-object p2, p0, Lx9/n0;->a:Lx9/t0;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lx9/t0;->J(Lh6/a;Lcom/yunpan/appmanage/bean/NameIcoTypeBean;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
