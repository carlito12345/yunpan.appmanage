.class Landroidx/viewpager2/adapter/FragmentStateAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:Landroidx/viewpager2/adapter/g;

.field public final synthetic b:Landroidx/viewpager2/adapter/f;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/f;Landroidx/viewpager2/adapter/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$1;->b:Landroidx/viewpager2/adapter/f;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$1;->a:Landroidx/viewpager2/adapter/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$1;->b:Landroidx/viewpager2/adapter/f;

    .line 2
    .line 3
    iget-object v0, p2, Landroidx/viewpager2/adapter/f;->e:Landroidx/fragment/app/e1;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/d1;->K()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$1;->a:Landroidx/viewpager2/adapter/g;

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 22
    .line 23
    check-cast v0, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-static {v0}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroidx/viewpager2/adapter/f;->t(Landroidx/viewpager2/adapter/g;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
