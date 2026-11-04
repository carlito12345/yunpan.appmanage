.class public final Lv3/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/k0;
.implements Landroid/view/View$OnClickListener;
.implements Lv3/s;
.implements Lv3/i;


# instance fields
.field public final a:Lr1/o0;

.field public b:Ljava/lang/Object;

.field public final synthetic c:Lv3/e0;


# direct methods
.method public constructor <init>(Lv3/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/a0;->c:Lv3/e0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lr1/o0;

    .line 7
    .line 8
    invoke-direct {p1}, Lr1/o0;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lv3/a0;->a:Lr1/o0;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final synthetic A(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final B(ILr1/l0;Lr1/l0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lv3/a0;->c:Lv3/e0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lv3/e0;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-boolean p2, p1, Lv3/e0;->F:Z

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lv3/e0;->l:Lv3/t;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lv3/t;->g()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final synthetic C(Lr1/h0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final D(II)V
    .locals 4

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p2, 0x22

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lv3/a0;->c:Lv3/e0;

    .line 8
    .line 9
    iget-object p2, p1, Lv3/e0;->d:Landroid/view/View;

    .line 10
    .line 11
    instance-of p2, p2, Landroid/view/SurfaceView;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-boolean p2, p1, Lv3/e0;->H:Z

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p1, Lv3/e0;->f:Lv3/d0;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lv3/e0;->p:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v1, p1, Lv3/e0;->d:Landroid/view/View;

    .line 27
    .line 28
    check-cast v1, Landroid/view/SurfaceView;

    .line 29
    .line 30
    new-instance v2, Lua/g8;

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    invoke-direct {v2, v3, p1}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, La2/e0;

    .line 37
    .line 38
    const/16 v3, 0x10

    .line 39
    .line 40
    invoke-direct {p1, p2, v1, v2, v3}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final synthetic E(Lr1/y;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic F(Lu7/y0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic H(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lr1/b1;)V
    .locals 2

    .line 1
    sget-object v0, Lr1/b1;->d:Lr1/b1;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lr1/b1;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lv3/a0;->c:Lv3/e0;

    .line 10
    .line 11
    iget-object v0, p1, Lv3/e0;->t:Lr1/m0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast v0, Ly1/x;

    .line 16
    .line 17
    invoke-virtual {v0}, Ly1/x;->J()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lv3/e0;->k()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Lr1/x0;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lv3/a0;->c:Lv3/e0;

    .line 2
    .line 3
    iget-object v0, p1, Lv3/e0;->t:Lr1/m0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, La/b;

    .line 10
    .line 11
    const/16 v2, 0x11

    .line 12
    .line 13
    invoke-virtual {v1, v2}, La/b;->i(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, Ly1/x;

    .line 21
    .line 22
    invoke-virtual {v2}, Ly1/x;->E()Lr1/q0;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v2, Lr1/q0;->a:Lr1/n0;

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v2}, Lr1/q0;->p()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iput-object v5, p0, Lv3/a0;->b:Ljava/lang/Object;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v3, 0x1e

    .line 41
    .line 42
    invoke-virtual {v1, v3}, La/b;->i(I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object v3, p0, Lv3/a0;->a:Lr1/o0;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    move-object v1, v0

    .line 51
    check-cast v1, Ly1/x;

    .line 52
    .line 53
    invoke-virtual {v1}, Ly1/x;->F()Lr1/x0;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v6, v6, Lr1/x0;->a:Lu7/g0;

    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Ly1/x;->B()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-virtual {v2, v0, v3, v1}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v0, v0, Lr1/o0;->b:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v0, p0, Lv3/a0;->b:Ljava/lang/Object;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v1, p0, Lv3/a0;->b:Ljava/lang/Object;

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 v6, -0x1

    .line 88
    if-eq v1, v6, :cond_3

    .line 89
    .line 90
    invoke-virtual {v2, v1, v3, v4}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget v1, v1, Lr1/o0;->c:I

    .line 95
    .line 96
    check-cast v0, Ly1/x;

    .line 97
    .line 98
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ne v0, v1, :cond_3

    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    iput-object v5, p0, Lv3/a0;->b:Ljava/lang/Object;

    .line 106
    .line 107
    :cond_4
    :goto_1
    invoke-virtual {p1, v4}, Lv3/e0;->o(Z)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final synthetic e(Lr1/v0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic f(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lv3/a0;->c:Lv3/e0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lv3/e0;->l()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lv3/e0;->e()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-boolean p2, p1, Lv3/e0;->F:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lv3/e0;->l:Lv3/t;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lv3/t;->g()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lv3/e0;->f(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic h(Lr1/i0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic i(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic j(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lv3/a0;->c:Lv3/e0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lv3/e0;->l()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lv3/e0;->n()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lv3/e0;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p1, Lv3/e0;->F:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lv3/e0;->l:Lv3/t;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lv3/t;->g()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lv3/e0;->f(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic m(Lr1/b0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic n(Ly1/k;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic o(Lr1/j0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lv3/a0;->c:Lv3/e0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lv3/e0;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic p(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final q(Lt1/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/a0;->c:Lv3/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lv3/e0;->i:Landroidx/media3/ui/SubtitleView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lt1/c;->a:Lu7/y0;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final synthetic r(Ly1/k;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic t(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic u(Lr1/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic v(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic x(Lr1/d0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/a0;->c:Lv3/e0;

    .line 2
    .line 3
    iget-object v1, v0, Lv3/e0;->c:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lv3/e0;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lv3/e0;->g:Landroid/widget/ImageView;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lv3/e0;->d()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic z(Z)V
    .locals 0

    .line 1
    return-void
.end method
