.class public final Lv/c0;
.super Lv/s;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lv/k;

.field public final d:Lv/h;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Lw/m2;

.field public final i:Lua/c2;

.field public final j:Lq7/o;

.field public k:Lv/t;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Lv/w;

.field public p:Landroid/view/ViewTreeObserver;

.field public q:Z

.field public r:Z

.field public s:I

.field public t:I

.field public v:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/view/View;Lv/k;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lv/s;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lua/c2;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1, p0}, Lua/c2;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lv/c0;->i:Lua/c2;

    .line 11
    .line 12
    new-instance v0, Lq7/o;

    .line 13
    .line 14
    invoke-direct {v0, v1, p0}, Lq7/o;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lv/c0;->j:Lq7/o;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lv/c0;->t:I

    .line 21
    .line 22
    iput-object p2, p0, Lv/c0;->b:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p4, p0, Lv/c0;->c:Lv/k;

    .line 25
    .line 26
    iput-boolean p5, p0, Lv/c0;->e:Z

    .line 27
    .line 28
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lv/h;

    .line 33
    .line 34
    const v2, 0x7f0e0013

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p4, v0, p5, v2}, Lv/h;-><init>(Lv/k;Landroid/view/LayoutInflater;ZI)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lv/c0;->d:Lv/h;

    .line 41
    .line 42
    iput p1, p0, Lv/c0;->g:I

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p5

    .line 48
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    .line 54
    div-int/lit8 v0, v0, 0x2

    .line 55
    .line 56
    const v1, 0x7f070017

    .line 57
    .line 58
    .line 59
    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result p5

    .line 63
    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result p5

    .line 67
    iput p5, p0, Lv/c0;->f:I

    .line 68
    .line 69
    iput-object p3, p0, Lv/c0;->l:Landroid/view/View;

    .line 70
    .line 71
    new-instance p3, Lw/m2;

    .line 72
    .line 73
    invoke-direct {p3, p2, p1}, Lw/m2;-><init>(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    iput-object p3, p0, Lv/c0;->h:Lw/m2;

    .line 77
    .line 78
    invoke-virtual {p4, p0, p2}, Lv/k;->b(Lv/x;Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final a(Lv/k;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c0;->c:Lv/k;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lv/c0;->dismiss()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lv/c0;->n:Lv/w;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lv/w;->a(Lv/k;Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv/c0;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lv/c0;->h:Lw/m2;

    .line 6
    .line 7
    iget-object v0, v0, Lw/g2;->B:Lw/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final c(Lv/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/c0;->n:Lv/w;

    .line 2
    .line 3
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv/c0;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lv/c0;->h:Lw/m2;

    .line 8
    .line 9
    invoke-virtual {v0}, Lw/g2;->dismiss()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lv/c0;->r:Z

    .line 3
    .line 4
    iget-object v0, p0, Lv/c0;->d:Lv/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lv/h;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final h()Lw/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c0;->h:Lw/m2;

    .line 2
    .line 3
    iget-object v0, v0, Lw/g2;->c:Lw/t1;

    .line 4
    .line 5
    return-object v0
.end method

.method public final j(Lv/d0;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lv/k;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    new-instance v0, Lv/v;

    .line 9
    .line 10
    iget-object v5, p0, Lv/c0;->m:Landroid/view/View;

    .line 11
    .line 12
    iget-object v4, p0, Lv/c0;->b:Landroid/content/Context;

    .line 13
    .line 14
    iget-boolean v7, p0, Lv/c0;->e:Z

    .line 15
    .line 16
    iget v3, p0, Lv/c0;->g:I

    .line 17
    .line 18
    move-object v2, v0

    .line 19
    move-object v6, p1

    .line 20
    invoke-direct/range {v2 .. v7}, Lv/v;-><init>(ILandroid/content/Context;Landroid/view/View;Lv/k;Z)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lv/c0;->n:Lv/w;

    .line 24
    .line 25
    iput-object v2, v0, Lv/v;->h:Lv/w;

    .line 26
    .line 27
    iget-object v3, v0, Lv/v;->i:Lv/s;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v3, v2}, Lv/x;->c(Lv/w;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {p1}, Lv/s;->t(Lv/k;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iput-boolean v2, v0, Lv/v;->g:Z

    .line 39
    .line 40
    iget-object v3, v0, Lv/v;->i:Lv/s;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Lv/s;->n(Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v2, p0, Lv/c0;->k:Lv/t;

    .line 48
    .line 49
    iput-object v2, v0, Lv/v;->j:Lv/t;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    iput-object v2, p0, Lv/c0;->k:Lv/t;

    .line 53
    .line 54
    iget-object v2, p0, Lv/c0;->c:Lv/k;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Lv/k;->c(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lv/c0;->h:Lw/m2;

    .line 60
    .line 61
    iget v3, v2, Lw/g2;->f:I

    .line 62
    .line 63
    invoke-virtual {v2}, Lw/g2;->n()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget v4, p0, Lv/c0;->t:I

    .line 68
    .line 69
    iget-object v5, p0, Lv/c0;->l:Landroid/view/View;

    .line 70
    .line 71
    sget-object v6, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 72
    .line 73
    invoke-static {v5}, Lx0/k0;->d(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    and-int/lit8 v4, v4, 0x7

    .line 82
    .line 83
    const/4 v5, 0x5

    .line 84
    if-ne v4, v5, :cond_2

    .line 85
    .line 86
    iget-object v4, p0, Lv/c0;->l:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    add-int/2addr v3, v4

    .line 93
    :cond_2
    invoke-virtual {v0}, Lv/v;->b()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/4 v5, 0x1

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    iget-object v4, v0, Lv/v;->e:Landroid/view/View;

    .line 102
    .line 103
    if-nez v4, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {v0, v3, v2, v5, v5}, Lv/v;->d(IIZZ)V

    .line 107
    .line 108
    .line 109
    :goto_0
    iget-object v0, p0, Lv/c0;->n:Lv/w;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-interface {v0, p1}, Lv/w;->d(Lv/k;)Z

    .line 114
    .line 115
    .line 116
    :cond_5
    return v5

    .line 117
    :cond_6
    :goto_1
    return v1
.end method

.method public final k(Lv/k;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/c0;->l:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public final n(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c0;->d:Lv/h;

    .line 2
    .line 3
    iput-boolean p1, v0, Lv/h;->c:Z

    .line 4
    .line 5
    return-void
.end method

.method public final o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lv/c0;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lv/c0;->q:Z

    .line 3
    .line 4
    iget-object v1, p0, Lv/c0;->c:Lv/k;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lv/k;->c(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lv/c0;->p:Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lv/c0;->m:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lv/c0;->p:Landroid/view/ViewTreeObserver;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lv/c0;->p:Landroid/view/ViewTreeObserver;

    .line 28
    .line 29
    iget-object v1, p0, Lv/c0;->i:Lua/c2;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lv/c0;->p:Landroid/view/ViewTreeObserver;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lv/c0;->m:Landroid/view/View;

    .line 38
    .line 39
    iget-object v1, p0, Lv/c0;->j:Lq7/o;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lv/c0;->k:Lv/t;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lv/t;->onDismiss()V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x52

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lv/c0;->dismiss()V

    .line 13
    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final p(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c0;->h:Lw/m2;

    .line 2
    .line 3
    iput p1, v0, Lw/g2;->f:I

    .line 4
    .line 5
    return-void
.end method

.method public final q(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    check-cast p1, Lv/t;

    .line 2
    .line 3
    iput-object p1, p0, Lv/c0;->k:Lv/t;

    .line 4
    .line 5
    return-void
.end method

.method public final r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lv/c0;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c0;->h:Lw/m2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lw/g2;->j(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final show()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lv/c0;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lv/c0;->q:Z

    .line 10
    .line 11
    if-nez v0, :cond_7

    .line 12
    .line 13
    iget-object v0, p0, Lv/c0;->l:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_7

    .line 16
    .line 17
    iput-object v0, p0, Lv/c0;->m:Landroid/view/View;

    .line 18
    .line 19
    iget-object v0, p0, Lv/c0;->h:Lw/m2;

    .line 20
    .line 21
    iget-object v1, v0, Lw/g2;->B:Lw/z;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 24
    .line 25
    .line 26
    iput-object p0, v0, Lw/g2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, v0, Lw/g2;->A:Z

    .line 30
    .line 31
    iget-object v2, v0, Lw/g2;->B:Lw/z;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lv/c0;->m:Landroid/view/View;

    .line 37
    .line 38
    iget-object v3, p0, Lv/c0;->p:Landroid/view/ViewTreeObserver;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, 0x0

    .line 46
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    iput-object v5, p0, Lv/c0;->p:Landroid/view/ViewTreeObserver;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-object v3, p0, Lv/c0;->i:Lua/c2;

    .line 55
    .line 56
    invoke-virtual {v5, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v3, p0, Lv/c0;->j:Lq7/o;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, v0, Lw/g2;->p:Landroid/view/View;

    .line 65
    .line 66
    iget v2, p0, Lv/c0;->t:I

    .line 67
    .line 68
    iput v2, v0, Lw/g2;->l:I

    .line 69
    .line 70
    iget-boolean v2, p0, Lv/c0;->r:Z

    .line 71
    .line 72
    iget-object v3, p0, Lv/c0;->b:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v5, p0, Lv/c0;->d:Lv/h;

    .line 75
    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    iget v2, p0, Lv/c0;->f:I

    .line 79
    .line 80
    invoke-static {v5, v3, v2}, Lv/s;->l(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iput v2, p0, Lv/c0;->s:I

    .line 85
    .line 86
    iput-boolean v1, p0, Lv/c0;->r:Z

    .line 87
    .line 88
    :cond_3
    iget v1, p0, Lv/c0;->s:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lw/g2;->q(I)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x2

    .line 94
    iget-object v2, v0, Lw/g2;->B:Lw/z;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lv/s;->a:Landroid/graphics/Rect;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    new-instance v6, Landroid/graphics/Rect;

    .line 105
    .line 106
    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move-object v6, v2

    .line 111
    :goto_1
    iput-object v6, v0, Lw/g2;->z:Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-virtual {v0}, Lw/g2;->show()V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lw/g2;->c:Lw/t1;

    .line 117
    .line 118
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 119
    .line 120
    .line 121
    iget-boolean v6, p0, Lv/c0;->v:Z

    .line 122
    .line 123
    if-eqz v6, :cond_6

    .line 124
    .line 125
    iget-object v6, p0, Lv/c0;->c:Lv/k;

    .line 126
    .line 127
    iget-object v7, v6, Lv/k;->m:Ljava/lang/CharSequence;

    .line 128
    .line 129
    if-eqz v7, :cond_6

    .line 130
    .line 131
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const v7, 0x7f0e0012

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Landroid/widget/FrameLayout;

    .line 143
    .line 144
    const v7, 0x1020016

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Landroid/widget/TextView;

    .line 152
    .line 153
    if-eqz v7, :cond_5

    .line 154
    .line 155
    iget-object v6, v6, Lv/k;->m:Ljava/lang/CharSequence;

    .line 156
    .line 157
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 164
    .line 165
    .line 166
    :cond_6
    invoke-virtual {v0, v5}, Lw/g2;->o(Landroid/widget/ListAdapter;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lw/g2;->show()V

    .line 170
    .line 171
    .line 172
    :goto_2
    return-void

    .line 173
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 174
    .line 175
    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    .line 176
    .line 177
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0
.end method
