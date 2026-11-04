.class public abstract Landroidx/viewpager2/adapter/f;
.super Landroidx/recyclerview/widget/m1;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/adapter/h;


# instance fields
.field public final d:Landroidx/lifecycle/o;

.field public final e:Landroidx/fragment/app/e1;

.field public final f:La0/k;

.field public final g:La0/k;

.field public final h:La0/k;

.field public i:Landroidx/viewpager2/adapter/e;

.field public final j:Landroidx/viewpager2/adapter/b;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppDetails;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->p()Landroidx/fragment/app/e1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/m1;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, La0/k;

    .line 9
    .line 10
    invoke-direct {v1}, La0/k;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Landroidx/viewpager2/adapter/f;->f:La0/k;

    .line 14
    .line 15
    new-instance v1, La0/k;

    .line 16
    .line 17
    invoke-direct {v1}, La0/k;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Landroidx/viewpager2/adapter/f;->g:La0/k;

    .line 21
    .line 22
    new-instance v1, La0/k;

    .line 23
    .line 24
    invoke-direct {v1}, La0/k;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroidx/viewpager2/adapter/f;->h:La0/k;

    .line 28
    .line 29
    new-instance v1, Landroidx/viewpager2/adapter/b;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v1, v2}, Landroidx/viewpager2/adapter/b;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Landroidx/viewpager2/adapter/f;->j:Landroidx/viewpager2/adapter/b;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Landroidx/viewpager2/adapter/f;->k:Z

    .line 39
    .line 40
    iput-boolean v1, p0, Landroidx/viewpager2/adapter/f;->l:Z

    .line 41
    .line 42
    iput-object v0, p0, Landroidx/viewpager2/adapter/f;->e:Landroidx/fragment/app/e1;

    .line 43
    .line 44
    iget-object p1, p1, Landroidx/activity/m;->d:Landroidx/lifecycle/v;

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/viewpager2/adapter/f;->d:Landroidx/lifecycle/o;

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->a()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Landroidx/recyclerview/widget/m1;->b:Z

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public static p(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-gt v0, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p1, "Design assumption violated."

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method


# virtual methods
.method public final c(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    return-wide v0
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/f;->i:Landroidx/viewpager2/adapter/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/viewpager2/adapter/e;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/viewpager2/adapter/e;-><init>(Landroidx/viewpager2/adapter/f;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/viewpager2/adapter/f;->i:Landroidx/viewpager2/adapter/e;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/viewpager2/adapter/e;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, v0, Landroidx/viewpager2/adapter/e;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 17
    .line 18
    new-instance v1, Landroidx/viewpager2/adapter/c;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Landroidx/viewpager2/adapter/c;-><init>(Landroidx/viewpager2/adapter/e;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Landroidx/viewpager2/adapter/e;->a:Landroidx/viewpager2/adapter/c;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/adapter/c;

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/viewpager2/adapter/c;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance p1, Landroidx/viewpager2/adapter/d;

    .line 35
    .line 36
    invoke-direct {p1, v0}, Landroidx/viewpager2/adapter/d;-><init>(Landroidx/viewpager2/adapter/e;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, v0, Landroidx/viewpager2/adapter/e;->b:Landroidx/viewpager2/adapter/d;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m1;->o(Landroidx/recyclerview/widget/o1;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    .line 45
    .line 46
    invoke-direct {p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Landroidx/viewpager2/adapter/e;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, v0, Landroidx/viewpager2/adapter/e;->c:Landroidx/lifecycle/r;

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/viewpager2/adapter/f;->d:Landroidx/lifecycle/o;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/g;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    check-cast v2, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, v2}, Landroidx/viewpager2/adapter/f;->s(I)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Landroidx/viewpager2/adapter/f;->h:La0/k;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    cmp-long v7, v5, v0

    .line 28
    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {p0, v5, v6}, Landroidx/viewpager2/adapter/f;->u(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    invoke-virtual {v4, v5, v6}, La0/k;->i(J)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v4, v2, v0, v1}, La0/k;->h(Ljava/lang/Object;J)V

    .line 50
    .line 51
    .line 52
    int-to-long v0, p2

    .line 53
    iget-object v2, p0, Landroidx/viewpager2/adapter/f;->f:La0/k;

    .line 54
    .line 55
    invoke-virtual {v2, v0, v1}, La0/k;->f(J)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-ltz v3, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v3, p0

    .line 63
    check-cast v3, Lx9/o;

    .line 64
    .line 65
    iget-object v3, v3, Lx9/o;->m:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 72
    .line 73
    iget-object v3, p0, Landroidx/viewpager2/adapter/f;->g:La0/k;

    .line 74
    .line 75
    invoke-virtual {v3, v0, v1}, La0/k;->d(J)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Landroidx/fragment/app/e0;

    .line 80
    .line 81
    invoke-virtual {p2, v3}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/e0;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p2, v0, v1}, La0/k;->h(Ljava/lang/Object;J)V

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 88
    .line 89
    check-cast p2, Landroid/widget/FrameLayout;

    .line 90
    .line 91
    invoke-static {p2}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/f;->t(Landroidx/viewpager2/adapter/g;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/f;->r()V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final i(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    sget p1, Landroidx/viewpager2/adapter/g;->a:I

    .line 2
    .line 3
    new-instance p1, Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    sget-object p2, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-static {}, Lx0/k0;->a()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Landroidx/viewpager2/adapter/g;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Landroidx/viewpager2/adapter/g;-><init>(Landroid/widget/FrameLayout;)V

    .line 37
    .line 38
    .line 39
    return-object p2
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/f;->i:Landroidx/viewpager2/adapter/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/viewpager2/adapter/e;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v1, v0, Landroidx/viewpager2/adapter/e;->a:Landroidx/viewpager2/adapter/c;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/adapter/c;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/viewpager2/adapter/c;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Landroidx/viewpager2/adapter/e;->b:Landroidx/viewpager2/adapter/d;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/viewpager2/adapter/e;->f:Landroidx/viewpager2/adapter/f;

    .line 24
    .line 25
    iget-object v2, v1, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Landroidx/viewpager2/adapter/e;->c:Landroidx/lifecycle/r;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/viewpager2/adapter/f;->d:Landroidx/lifecycle/o;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-object p1, v0, Landroidx/viewpager2/adapter/e;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/viewpager2/adapter/f;->i:Landroidx/viewpager2/adapter/e;

    .line 41
    .line 42
    return-void
.end method

.method public final bridge synthetic k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/g;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/f;->t(Landroidx/viewpager2/adapter/g;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/f;->r()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/g;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p1, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/f;->s(I)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager2/adapter/f;->u(J)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/viewpager2/adapter/f;->h:La0/k;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, La0/k;->i(J)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final q(J)Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lx9/o;

    .line 9
    .line 10
    iget-object v0, v0, Lx9/o;->m:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    cmp-long v2, p1, v0

    .line 18
    .line 19
    if-gez v2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public final r()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager2/adapter/f;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/viewpager2/adapter/f;->e:Landroidx/fragment/app/e1;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/d1;->K()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    new-instance v0, La0/f;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, La0/f;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/adapter/f;->f:La0/k;

    .line 23
    .line 24
    invoke-virtual {v3}, La0/k;->j()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget-object v5, p0, Landroidx/viewpager2/adapter/f;->h:La0/k;

    .line 29
    .line 30
    if-ge v2, v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {v3, v2}, La0/k;->g(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-virtual {p0, v3, v4}, Landroidx/viewpager2/adapter/f;->q(J)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v0, v6}, La0/f;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v3, v4}, La0/k;->i(J)V

    .line 50
    .line 51
    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-boolean v2, p0, Landroidx/viewpager2/adapter/f;->k:Z

    .line 56
    .line 57
    if-nez v2, :cond_7

    .line 58
    .line 59
    iput-boolean v1, p0, Landroidx/viewpager2/adapter/f;->l:Z

    .line 60
    .line 61
    :goto_1
    invoke-virtual {v3}, La0/k;->j()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ge v1, v2, :cond_7

    .line 66
    .line 67
    invoke-virtual {v3, v1}, La0/k;->g(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    invoke-virtual {v5, v6, v7}, La0/k;->f(J)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-ltz v2, :cond_3

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    invoke-virtual {v3, v6, v7}, La0/k;->d(J)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 83
    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_6

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_6
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, La0/f;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_7
    new-instance v1, La0/a;

    .line 112
    .line 113
    invoke-direct {v1, v0}, La0/a;-><init>(La0/f;)V

    .line 114
    .line 115
    .line 116
    :goto_4
    invoke-virtual {v1}, La0/a;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    invoke-virtual {v1}, La0/a;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Ljava/lang/Long;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager2/adapter/f;->u(J)V

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_8
    :goto_5
    return-void
.end method

.method public final s(I)Ljava/lang/Long;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/viewpager2/adapter/f;->h:La0/k;

    .line 4
    .line 5
    invoke-virtual {v2}, La0/k;->j()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v1, v3, :cond_2

    .line 10
    .line 11
    invoke-virtual {v2, v1}, La0/k;->k(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v3, p1, :cond_1

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2, v1}, La0/k;->g(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v0, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-object v0
.end method

.method public final t(Landroidx/viewpager2/adapter/g;)V
    .locals 8

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Landroidx/viewpager2/adapter/f;->f:La0/k;

    .line 8
    .line 9
    invoke-virtual {v3, v1, v2}, La0/k;->d(J)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    const-string v2, "Design assumption violated."

    .line 16
    .line 17
    if-eqz v1, :cond_9

    .line 18
    .line 19
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    check-cast v3, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v5, 0x0

    .line 47
    iget-object v6, p0, Landroidx/viewpager2/adapter/f;->e:Landroidx/fragment/app/e1;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    new-instance p1, Landroidx/viewpager2/adapter/a;

    .line 54
    .line 55
    invoke-direct {p1, p0, v1, v3}, Landroidx/viewpager2/adapter/a;-><init>(Landroidx/viewpager2/adapter/f;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v6, Landroidx/fragment/app/d1;->l:Landroidx/fragment/app/k0;

    .line 59
    .line 60
    iget-object v0, v0, Landroidx/fragment/app/k0;->a:Ljava/lang/Cloneable;

    .line 61
    .line 62
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    .line 64
    new-instance v1, Landroidx/fragment/app/r0;

    .line 65
    .line 66
    invoke-direct {v1, p1, v5}, Landroidx/fragment/app/r0;-><init>(Landroidx/fragment/app/z0;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eq p1, v3, :cond_3

    .line 90
    .line 91
    invoke-static {v4, v3}, Landroidx/viewpager2/adapter/f;->p(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void

    .line 95
    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    invoke-static {v4, v3}, Landroidx/viewpager2/adapter/f;->p(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    invoke-virtual {v6}, Landroidx/fragment/app/d1;->K()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_7

    .line 110
    .line 111
    new-instance v2, Landroidx/viewpager2/adapter/a;

    .line 112
    .line 113
    invoke-direct {v2, p0, v1, v3}, Landroidx/viewpager2/adapter/a;-><init>(Landroidx/viewpager2/adapter/f;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, v6, Landroidx/fragment/app/d1;->l:Landroidx/fragment/app/k0;

    .line 117
    .line 118
    iget-object v3, v3, Landroidx/fragment/app/k0;->a:Ljava/lang/Cloneable;

    .line 119
    .line 120
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 121
    .line 122
    new-instance v4, Landroidx/fragment/app/r0;

    .line 123
    .line 124
    invoke-direct {v4, v2, v5}, Landroidx/fragment/app/r0;-><init>(Landroidx/fragment/app/z0;Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Landroidx/viewpager2/adapter/f;->j:Landroidx/viewpager2/adapter/b;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    new-instance v3, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v2, v2, Landroidx/viewpager2/adapter/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-nez v4, :cond_6

    .line 151
    .line 152
    :try_start_0
    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Landroidx/fragment/app/a;

    .line 156
    .line 157
    invoke-direct {v2, v6}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 158
    .line 159
    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    .line 166
    .line 167
    .line 168
    move-result-wide v6

    .line 169
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const/4 v0, 0x1

    .line 177
    invoke-virtual {v2, v5, v1, p1, v0}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    sget-object p1, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 181
    .line 182
    invoke-virtual {v2, v1, p1}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Landroidx/fragment/app/a;->e()V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Landroidx/viewpager2/adapter/f;->i:Landroidx/viewpager2/adapter/e;

    .line 189
    .line 190
    invoke-virtual {p1, v5}, Landroidx/viewpager2/adapter/e;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    invoke-static {v3}, Landroidx/viewpager2/adapter/b;->a(Ljava/util/List;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :catchall_0
    move-exception p1

    .line 198
    invoke-static {v3}, Landroidx/viewpager2/adapter/b;->a(Ljava/util/List;)V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_6
    invoke-static {v2}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    throw p1

    .line 207
    :cond_7
    iget-boolean v0, v6, Landroidx/fragment/app/d1;->G:Z

    .line 208
    .line 209
    if-eqz v0, :cond_8

    .line 210
    .line 211
    return-void

    .line 212
    :cond_8
    new-instance v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$1;

    .line 213
    .line 214
    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$1;-><init>(Landroidx/viewpager2/adapter/f;Landroidx/viewpager2/adapter/g;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Landroidx/viewpager2/adapter/f;->d:Landroidx/lifecycle/o;

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 220
    .line 221
    .line 222
    :goto_1
    return-void

    .line 223
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1
.end method

.method public final u(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/f;->f:La0/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, La0/k;->d(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    check-cast v2, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/f;->q(J)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Landroidx/viewpager2/adapter/f;->g:La0/k;

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v3, p1, p2}, La0/k;->i(J)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0, p1, p2}, La0/k;->i(J)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    iget-object v2, p0, Landroidx/viewpager2/adapter/f;->e:Landroidx/fragment/app/e1;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/fragment/app/d1;->K()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Landroidx/viewpager2/adapter/f;->l:Z

    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-object v5, p0, Landroidx/viewpager2/adapter/f;->j:Landroidx/viewpager2/adapter/b;

    .line 71
    .line 72
    if-eqz v4, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/f;->q(J)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_6

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v4, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v6, v5, Landroidx/viewpager2/adapter/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_5

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Landroidx/fragment/app/d1;->V(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/e0;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v4}, Landroidx/viewpager2/adapter/b;->a(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v6, p1, p2}, La0/k;->h(Ljava/lang/Object;J)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    invoke-static {v6}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    throw p1

    .line 116
    :cond_6
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    new-instance v3, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v4, v5, Landroidx/viewpager2/adapter/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-nez v5, :cond_7

    .line 135
    .line 136
    :try_start_0
    new-instance v4, Landroidx/fragment/app/a;

    .line 137
    .line 138
    invoke-direct {v4, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v1}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Landroidx/fragment/app/a;->e()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p1, p2}, La0/k;->i(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .line 149
    .line 150
    invoke-static {v3}, Landroidx/viewpager2/adapter/b;->a(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :catchall_0
    move-exception p1

    .line 155
    invoke-static {v3}, Landroidx/viewpager2/adapter/b;->a(Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_7
    invoke-static {v4}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    throw p1
.end method

.method public final v(Landroid/os/Parcelable;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/f;->g:La0/k;

    .line 2
    .line 3
    invoke-virtual {v0}, La0/k;->j()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_9

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/viewpager2/adapter/f;->f:La0/k;

    .line 10
    .line 11
    invoke-virtual {v1}, La0/k;->j()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_9

    .line 16
    .line 17
    check-cast p1, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x1

    .line 49
    if-eqz v3, :cond_7

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    const-string v5, "f#"

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x2

    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-le v5, v6, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v4, 0x0

    .line 74
    :goto_1
    if-eqz v4, :cond_5

    .line 75
    .line 76
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    iget-object v6, p0, Landroidx/viewpager2/adapter/f;->e:Landroidx/fragment/app/e1;

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const/4 v8, 0x0

    .line 94
    if-nez v7, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    iget-object v9, v6, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 98
    .line 99
    invoke-virtual {v9, v7}, Landroidx/fragment/app/l1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    if-eqz v9, :cond_4

    .line 104
    .line 105
    move-object v8, v9

    .line 106
    :goto_2
    invoke-virtual {v1, v8, v4, v5}, La0/k;->h(Ljava/lang/Object;J)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string v0, "Fragment no longer exists for key "

    .line 113
    .line 114
    const-string v1, ": unique id "

    .line 115
    .line 116
    invoke-static {v0, v3, v1, v7}, Lta/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, p1}, Landroidx/fragment/app/d1;->c0(Ljava/lang/IllegalStateException;)V

    .line 124
    .line 125
    .line 126
    throw v8

    .line 127
    :cond_5
    const-string v4, "s#"

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_6

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-le v4, v6, :cond_6

    .line 140
    .line 141
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 146
    .line 147
    .line 148
    move-result-wide v4

    .line 149
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Landroidx/fragment/app/e0;

    .line 154
    .line 155
    invoke-virtual {p0, v4, v5}, Landroidx/viewpager2/adapter/f;->q(J)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_1

    .line 160
    .line 161
    invoke-virtual {v0, v3, v4, v5}, La0/k;->h(Ljava/lang/Object;J)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    const-string v0, "Unexpected key in savedState: "

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_7
    invoke-virtual {v1}, La0/k;->j()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_8

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_8
    iput-boolean v4, p0, Landroidx/viewpager2/adapter/f;->l:Z

    .line 185
    .line 186
    iput-boolean v4, p0, Landroidx/viewpager2/adapter/f;->k:Z

    .line 187
    .line 188
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/f;->r()V

    .line 189
    .line 190
    .line 191
    new-instance p1, Landroid/os/Handler;

    .line 192
    .line 193
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Landroidx/activity/h;

    .line 201
    .line 202
    const/4 v1, 0x4

    .line 203
    invoke-direct {v0, v1, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;

    .line 207
    .line 208
    invoke-direct {v1, p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;-><init>(Landroid/os/Handler;Landroidx/activity/h;)V

    .line 209
    .line 210
    .line 211
    iget-object v2, p0, Landroidx/viewpager2/adapter/f;->d:Landroidx/lifecycle/o;

    .line 212
    .line 213
    invoke-virtual {v2, v1}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 214
    .line 215
    .line 216
    const-wide/16 v1, 0x2710

    .line 217
    .line 218
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    .line 220
    .line 221
    :goto_3
    return-void

    .line 222
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 223
    .line 224
    const-string v0, "Expected the adapter to be \'fresh\' while restoring state."

    .line 225
    .line 226
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :goto_4
    throw p1

    .line 231
    :goto_5
    goto :goto_4
.end method
