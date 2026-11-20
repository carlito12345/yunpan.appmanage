.class public abstract Lc6/g;
.super Landroidx/recyclerview/widget/m1;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/List;

.field public e:Lc6/e;

.field public f:Lc6/f;

.field public final g:Landroidx/recyclerview/widget/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v1}, Lc6/g;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lke/r;->a:Lke/r;

    .line 3
    :cond_0
    const-string p2, "_items"

    invoke-static {p1, p2}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/m1;-><init>()V

    .line 5
    iput-object p1, p0, Lc6/g;->d:Ljava/util/List;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lc6/g;->g:Landroidx/recyclerview/widget/f;

    return-void
.end method

.method public static s(Lc6/g;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p0, "list"

    .line 9
    .line 10
    invoke-static {v0, p0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public A(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "payloads"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lc6/g;->z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V

    invoke-static {p1, p3}, Lcom/yunpan/appmanage/carui/LegacyUi;->holder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public abstract B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public final C(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lc6/g;->g:Landroidx/recyclerview/widget/f;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lc6/g;->w()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/n1;->f(II)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lc6/g;->s(Lc6/g;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 33
    .line 34
    const-string v2, "getCurrentList(...)"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lve/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lke/j;->b0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/f;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 52
    .line 53
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const-string v2, "position: "

    .line 62
    .line 63
    const-string v3, ". size:"

    .line 64
    .line 65
    invoke-static {v2, p1, v1, v3}, Landroid/support/v4/media/session/a;->g(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public final D(ILjava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lc6/g;->g:Landroidx/recyclerview/widget/f;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lc6/g;->w()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/n1;->d(II)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 35
    .line 36
    const-string v2, "getCurrentList(...)"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lve/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lke/j;->b0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/f;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 54
    .line 55
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const-string v1, "position: "

    .line 64
    .line 65
    const-string v2, ". size:"

    .line 66
    .line 67
    invoke-static {v1, p1, v0, v2}, Landroid/support/v4/media/session/a;->g(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p2
.end method

.method public final E(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc6/g;->g:Landroidx/recyclerview/widget/f;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lke/r;->a:Lke/r;

    .line 8
    .line 9
    :cond_0
    invoke-static {p0}, Lc6/g;->s(Lc6/g;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lc6/g;->d:Ljava/util/List;

    .line 13
    .line 14
    iput-object p1, p0, Lc6/g;->d:Ljava/util/List;

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->b()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lc6/g;->d:Ljava/util/List;

    .line 22
    .line 23
    const-string v1, "previousList"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "currentList"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/f;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc6/g;->y(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b()I
    .locals 2

    .line 1
    invoke-static {p0}, Lc6/g;->s(Lc6/g;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "items"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final c(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    return-wide v0
.end method

.method public final d(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lc6/g;->s(Lc6/g;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Lc6/g;->u(ILjava/util/List;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    instance-of v0, p1, Lh6/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lh6/b;

    .line 6
    .line 7
    iget-object p1, p1, Lh6/b;->a:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/bumptech/glide/manager/d;->q(Landroid/view/ViewGroup;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "<this>"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-ltz p2, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ge p2, v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lc6/g;->z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carui/LegacyUi;->holder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "payloads"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lc6/g;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    instance-of v0, p1, Lh6/b;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lh6/b;

    .line 21
    .line 22
    iget-object p1, p1, Lh6/b;->a:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/bumptech/glide/manager/d;->q(Landroid/view/ViewGroup;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "<this>"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-ltz p2, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ge p2, v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lc6/g;->A(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final i(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0b0005

    .line 7
    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lh6/b;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Lh6/b;-><init>(Landroid/view/ViewGroup;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "getContext(...)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lve/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, p2, p1}, Lc6/g;->B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Lc6/g;->e:Lc6/e;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 35
    .line 36
    new-instance v0, Lc6/c;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {v0, p1, v1, p0}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p2, p0, Lc6/g;->f:Lc6/f;

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 50
    .line 51
    new-instance v0, Lc6/d;

    .line 52
    .line 53
    invoke-direct {v0, p1, p0}, Lc6/d;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lc6/g;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-object p1
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lh6/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lc6/g;->d(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lc6/g;->x(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v0, v0, Landroidx/recyclerview/widget/y2;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lve/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast p1, Landroidx/recyclerview/widget/y2;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p1, Landroidx/recyclerview/widget/y2;->b:Z

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final p(ILjava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gt p1, v0, :cond_1

    .line 15
    .line 16
    if-ltz p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lc6/g;->g:Landroidx/recyclerview/widget/f;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Lc6/g;->s(Lc6/g;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lc6/g;->w()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/n1;->e(II)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, v0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 40
    .line 41
    const-string v1, "getCurrentList(...)"

    .line 42
    .line 43
    invoke-static {p1, v1}, Lve/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lke/j;->b0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/f;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 59
    .line 60
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const-string v1, "position: "

    .line 69
    .line 70
    const-string v2, ". size:"

    .line 71
    .line 72
    invoke-static {v1, p1, v0, v2}, Landroid/support/v4/media/session/a;->g(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p2
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc6/g;->g:Landroidx/recyclerview/widget/f;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lc6/g;->s(Lc6/g;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lc6/g;->w()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lc6/g;->d:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x1

    .line 30
    sub-int/2addr p1, v0

    .line 31
    iget-object v1, p0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 32
    .line 33
    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/n1;->e(II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 38
    .line 39
    const-string v2, "getCurrentList(...)"

    .line 40
    .line 41
    invoke-static {v1, v2}, Lve/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lke/j;->b0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/f;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public final r(Ljava/util/Collection;)V
    .locals 3

    .line 1
    const-string v0, "collection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lc6/g;->g:Landroidx/recyclerview/widget/f;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Lc6/g;->s(Lc6/g;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lc6/g;->d:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Lc6/g;->w()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 41
    .line 42
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/n1;->e(II)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 47
    .line 48
    const-string v2, "getCurrentList(...)"

    .line 49
    .line 50
    invoke-static {v1, v2}, Lve/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lke/j;->b0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/f;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final t(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc6/g;->v()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public u(ILjava/util/List;)I
    .locals 0

    .line 1
    const-string p1, "list"

    invoke-static {p2, p1}, Lve/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final v()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lc6/g;->g:Landroidx/recyclerview/widget/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lc6/g;->d:Ljava/util/List;

    .line 10
    .line 11
    :cond_1
    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lc6/g;->d:Ljava/util/List;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/AbstractList;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "null cannot be cast to non-null type java.util.AbstractList<T of com.chad.library.adapter4.BaseQuickAdapter>"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lve/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/util/AbstractList;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    .line 16
    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    instance-of v1, v0, Lwe/a;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    instance-of v1, v0, Lwe/b;

    .line 24
    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    :cond_1
    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<T of com.chad.library.adapter4.BaseQuickAdapter>"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lve/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    instance-of v1, v0, Lwe/a;

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    instance-of v1, v0, Lwe/b;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string v1, "kotlin.collections.MutableList"

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    const-string v0, "null"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    const-string v2, " cannot be cast to "

    .line 57
    .line 58
    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/ClassCastException;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-class v0, Lve/i;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Lve/d;->f(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1

    .line 77
    :cond_4
    invoke-static {v0}, Lke/j;->b0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lc6/g;->d:Ljava/util/List;

    .line 82
    .line 83
    :cond_5
    :goto_1
    return-object v0
.end method

.method public x(I)Z
    .locals 1

    .line 1
    const v0, 0x7f0b0005

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method public final y(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc6/g;->g:Landroidx/recyclerview/widget/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lc6/g;->d:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_2

    .line 14
    .line 15
    if-ltz p2, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lc6/g;->d:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ge p2, v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lc6/g;->w()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lc6/g;->w()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/n1;->c(II)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 47
    .line 48
    const-string v2, "getCurrentList(...)"

    .line 49
    .line 50
    invoke-static {v1, v2}, Lve/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-ltz p1, :cond_1

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-ge p1, v2, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-ltz p2, :cond_2

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge p2, v2, :cond_2

    .line 69
    .line 70
    :goto_0
    invoke-static {v1}, Lke/j;->b0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/f;->b(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_1
    return-void
.end method

.method public abstract z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
.end method
