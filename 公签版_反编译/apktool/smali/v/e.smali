.class public final Lv/e;
.super Lv/s;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public A:Lv/t;

.field public B:Z

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Lua/c2;

.field public final j:Lq7/o;

.field public final k:Lua/i1;

.field public l:I

.field public m:I

.field public n:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Lv/w;

.field public z:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lv/s;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv/e;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lv/e;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lua/c2;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1, p0}, Lua/c2;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lv/e;->i:Lua/c2;

    .line 25
    .line 26
    new-instance v0, Lq7/o;

    .line 27
    .line 28
    invoke-direct {v0, v1, p0}, Lq7/o;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lv/e;->j:Lq7/o;

    .line 32
    .line 33
    new-instance v0, Lua/i1;

    .line 34
    .line 35
    const/16 v2, 0x1a

    .line 36
    .line 37
    invoke-direct {v0, v2, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lv/e;->k:Lua/i1;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lv/e;->l:I

    .line 44
    .line 45
    iput v0, p0, Lv/e;->m:I

    .line 46
    .line 47
    iput-object p1, p0, Lv/e;->b:Landroid/content/Context;

    .line 48
    .line 49
    iput-object p2, p0, Lv/e;->n:Landroid/view/View;

    .line 50
    .line 51
    iput p3, p0, Lv/e;->d:I

    .line 52
    .line 53
    iput-boolean p4, p0, Lv/e;->e:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lv/e;->w:Z

    .line 56
    .line 57
    sget-object p3, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 58
    .line 59
    invoke-static {p2}, Lx0/k0;->d(Landroid/view/View;)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-ne p2, v1, :cond_0

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    :cond_0
    iput v1, p0, Lv/e;->q:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    .line 78
    div-int/lit8 p2, p2, 0x2

    .line 79
    .line 80
    const p3, 0x7f070017

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput p1, p0, Lv/e;->c:I

    .line 92
    .line 93
    new-instance p1, Landroid/os/Handler;

    .line 94
    .line 95
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lv/e;->f:Landroid/os/Handler;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final a(Lv/k;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lv/e;->h:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Lv/d;

    .line 17
    .line 18
    iget-object v5, v5, Lv/d;->b:Lv/k;

    .line 19
    .line 20
    if-ne p1, v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/2addr v4, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v4, -0x1

    .line 26
    :goto_1
    if-gez v4, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    add-int/lit8 v2, v4, 0x1

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ge v2, v5, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lv/d;

    .line 42
    .line 43
    iget-object v2, v2, Lv/d;->b:Lv/k;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lv/k;->c(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lv/d;

    .line 53
    .line 54
    iget-object v4, v2, Lv/d;->b:Lv/k;

    .line 55
    .line 56
    invoke-virtual {v4, p0}, Lv/k;->r(Lv/x;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v4, p0, Lv/e;->B:Z

    .line 60
    .line 61
    iget-object v2, v2, Lv/d;->a:Lw/m2;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    if-eqz v4, :cond_5

    .line 65
    .line 66
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v6, 0x17

    .line 69
    .line 70
    if-lt v4, v6, :cond_4

    .line 71
    .line 72
    iget-object v4, v2, Lw/g2;->B:Lw/z;

    .line 73
    .line 74
    invoke-static {v4, v5}, Lw/i2;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object v4, v2, Lw/g2;->B:Lw/z;

    .line 78
    .line 79
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-virtual {v2}, Lw/g2;->dismiss()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-lez v2, :cond_6

    .line 90
    .line 91
    add-int/lit8 v4, v2, -0x1

    .line 92
    .line 93
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lv/d;

    .line 98
    .line 99
    iget v4, v4, Lv/d;->c:I

    .line 100
    .line 101
    iput v4, p0, Lv/e;->q:I

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    iget-object v4, p0, Lv/e;->n:Landroid/view/View;

    .line 105
    .line 106
    sget-object v6, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 107
    .line 108
    invoke-static {v4}, Lx0/k0;->d(Landroid/view/View;)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-ne v4, v0, :cond_7

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    goto :goto_2

    .line 116
    :cond_7
    const/4 v4, 0x1

    .line 117
    :goto_2
    iput v4, p0, Lv/e;->q:I

    .line 118
    .line 119
    :goto_3
    if-nez v2, :cond_b

    .line 120
    .line 121
    invoke-virtual {p0}, Lv/e;->dismiss()V

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lv/e;->y:Lv/w;

    .line 125
    .line 126
    if-eqz p2, :cond_8

    .line 127
    .line 128
    invoke-interface {p2, p1, v0}, Lv/w;->a(Lv/k;Z)V

    .line 129
    .line 130
    .line 131
    :cond_8
    iget-object p1, p0, Lv/e;->z:Landroid/view/ViewTreeObserver;

    .line 132
    .line 133
    if-eqz p1, :cond_a

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_9

    .line 140
    .line 141
    iget-object p1, p0, Lv/e;->z:Landroid/view/ViewTreeObserver;

    .line 142
    .line 143
    iget-object p2, p0, Lv/e;->i:Lua/c2;

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    .line 147
    .line 148
    :cond_9
    iput-object v5, p0, Lv/e;->z:Landroid/view/ViewTreeObserver;

    .line 149
    .line 150
    :cond_a
    iget-object p1, p0, Lv/e;->p:Landroid/view/View;

    .line 151
    .line 152
    iget-object p2, p0, Lv/e;->j:Lq7/o;

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lv/e;->A:Lv/t;

    .line 158
    .line 159
    invoke-virtual {p1}, Lv/t;->onDismiss()V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_b
    if-eqz p2, :cond_c

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Lv/d;

    .line 170
    .line 171
    iget-object p1, p1, Lv/d;->b:Lv/k;

    .line 172
    .line 173
    invoke-virtual {p1, v3}, Lv/k;->c(Z)V

    .line 174
    .line 175
    .line 176
    :cond_c
    :goto_4
    return-void
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lv/e;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lv/d;

    .line 15
    .line 16
    iget-object v0, v0, Lv/d;->a:Lw/m2;

    .line 17
    .line 18
    iget-object v0, v0, Lw/g2;->B:Lw/z;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    :cond_0
    return v2
.end method

.method public final c(Lv/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/e;->y:Lv/w;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lv/e;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    new-array v2, v1, [Lv/d;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Lv/d;

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_1

    .line 20
    .line 21
    aget-object v2, v0, v1

    .line 22
    .line 23
    iget-object v3, v2, Lv/d;->a:Lw/m2;

    .line 24
    .line 25
    iget-object v3, v3, Lw/g2;->B:Lw/z;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v2, v2, Lv/d;->a:Lw/m2;

    .line 34
    .line 35
    invoke-virtual {v2}, Lw/g2;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv/e;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lv/d;

    .line 18
    .line 19
    iget-object v1, v1, Lv/d;->a:Lw/m2;

    .line 20
    .line 21
    iget-object v1, v1, Lw/g2;->c:Lw/t1;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lv/h;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    check-cast v1, Lv/h;

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v1}, Lv/h;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public final h()Lw/t1;
    .locals 2

    .line 1
    iget-object v0, p0, Lv/e;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lv/d;

    .line 17
    .line 18
    iget-object v0, v0, Lv/d;->a:Lw/m2;

    .line 19
    .line 20
    iget-object v0, v0, Lw/g2;->c:Lw/t1;

    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method public final j(Lv/d0;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lv/e;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lv/d;

    .line 19
    .line 20
    iget-object v3, v1, Lv/d;->b:Lv/k;

    .line 21
    .line 22
    if-ne p1, v3, :cond_0

    .line 23
    .line 24
    iget-object p1, v1, Lv/d;->a:Lw/m2;

    .line 25
    .line 26
    iget-object p1, p1, Lw/g2;->c:Lw/t1;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p1}, Lv/k;->hasVisibleItems()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lv/e;->k(Lv/k;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lv/e;->y:Lv/w;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lv/w;->d(Lv/k;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    return v2

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public final k(Lv/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/e;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, p0, v0}, Lv/k;->b(Lv/x;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lv/e;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lv/e;->u(Lv/k;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lv/e;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv/e;->n:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lv/e;->n:Landroid/view/View;

    .line 6
    .line 7
    iget v0, p0, Lv/e;->l:I

    .line 8
    .line 9
    sget-object v1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-static {p1}, Lx0/k0;->d(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lv/e;->m:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lv/e;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public final o(I)V
    .locals 2

    .line 1
    iget v0, p0, Lv/e;->l:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lv/e;->l:I

    .line 6
    .line 7
    iget-object v0, p0, Lv/e;->n:Landroid/view/View;

    .line 8
    .line 9
    sget-object v1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-static {v0}, Lx0/k0;->d(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lv/e;->m:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onDismiss()V
    .locals 6

    .line 1
    iget-object v0, p0, Lv/e;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lv/d;

    .line 16
    .line 17
    iget-object v5, v4, Lv/d;->a:Lw/m2;

    .line 18
    .line 19
    iget-object v5, v5, Lw/g2;->B:Lw/z;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-object v0, v4, Lv/d;->b:Lv/k;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lv/k;->c(Z)V

    .line 37
    .line 38
    .line 39
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
    invoke-virtual {p0}, Lv/e;->dismiss()V

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
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lv/e;->r:Z

    .line 3
    .line 4
    iput p1, p0, Lv/e;->t:I

    .line 5
    .line 6
    return-void
.end method

.method public final q(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    check-cast p1, Lv/t;

    .line 2
    .line 3
    iput-object p1, p0, Lv/e;->A:Lv/t;

    .line 4
    .line 5
    return-void
.end method

.method public final r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lv/e;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lv/e;->s:Z

    .line 3
    .line 4
    iput p1, p0, Lv/e;->v:I

    .line 5
    .line 6
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lv/e;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lv/e;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lv/k;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lv/e;->u(Lv/k;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lv/e;->n:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, p0, Lv/e;->p:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lv/e;->z:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lv/e;->z:Landroid/view/ViewTreeObserver;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lv/e;->i:Lua/c2;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lv/e;->p:Landroid/view/View;

    .line 60
    .line 61
    iget-object v1, p0, Lv/e;->j:Lq7/o;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final u(Lv/k;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lv/e;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    new-instance v5, Lv/h;

    .line 12
    .line 13
    iget-boolean v6, v0, Lv/e;->e:Z

    .line 14
    .line 15
    const v7, 0x7f0e000b

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v1, v4, v6, v7}, Lv/h;-><init>(Lv/k;Landroid/view/LayoutInflater;ZI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lv/e;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const/4 v7, 0x1

    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    iget-boolean v6, v0, Lv/e;->w:Z

    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    iput-boolean v7, v5, Lv/h;->c:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lv/e;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lv/s;->t(Lv/k;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    iput-boolean v6, v5, Lv/h;->c:Z

    .line 46
    .line 47
    :cond_1
    :goto_0
    iget v6, v0, Lv/e;->c:I

    .line 48
    .line 49
    invoke-static {v5, v3, v6}, Lv/s;->l(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    new-instance v8, Lw/m2;

    .line 54
    .line 55
    iget v9, v0, Lv/e;->d:I

    .line 56
    .line 57
    invoke-direct {v8, v3, v9}, Lw/m2;-><init>(Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v8, Lw/g2;->B:Lw/z;

    .line 61
    .line 62
    iget-object v9, v0, Lv/e;->k:Lua/i1;

    .line 63
    .line 64
    iput-object v9, v8, Lw/m2;->F:Lua/i1;

    .line 65
    .line 66
    iput-object v0, v8, Lw/g2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v9, v0, Lv/e;->n:Landroid/view/View;

    .line 72
    .line 73
    iput-object v9, v8, Lw/g2;->p:Landroid/view/View;

    .line 74
    .line 75
    iget v9, v0, Lv/e;->m:I

    .line 76
    .line 77
    iput v9, v8, Lw/g2;->l:I

    .line 78
    .line 79
    iput-boolean v7, v8, Lw/g2;->A:Z

    .line 80
    .line 81
    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 82
    .line 83
    .line 84
    const/4 v9, 0x2

    .line 85
    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v5}, Lw/g2;->o(Landroid/widget/ListAdapter;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v6}, Lw/g2;->q(I)V

    .line 92
    .line 93
    .line 94
    iget v5, v0, Lv/e;->m:I

    .line 95
    .line 96
    iput v5, v8, Lw/g2;->l:I

    .line 97
    .line 98
    iget-object v5, v0, Lv/e;->h:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    if-lez v10, :cond_b

    .line 105
    .line 106
    invoke-static {v7, v5}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    check-cast v10, Lv/d;

    .line 111
    .line 112
    iget-object v12, v10, Lv/d;->b:Lv/k;

    .line 113
    .line 114
    iget-object v13, v12, Lv/k;->f:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    const/4 v14, 0x0

    .line 121
    :goto_1
    if-ge v14, v13, :cond_3

    .line 122
    .line 123
    invoke-virtual {v12, v14}, Lv/k;->getItem(I)Landroid/view/MenuItem;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    invoke-interface {v15}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 128
    .line 129
    .line 130
    move-result v16

    .line 131
    if-eqz v16, :cond_2

    .line 132
    .line 133
    invoke-interface {v15}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    if-ne v1, v9, :cond_2

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    add-int/2addr v14, v7

    .line 141
    const/4 v9, 0x2

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    const/4 v15, 0x0

    .line 144
    :goto_2
    if-nez v15, :cond_5

    .line 145
    .line 146
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .line 147
    goto :goto_7

    .line 148
    :cond_5
    iget-object v9, v10, Lv/d;->a:Lw/m2;

    .line 149
    .line 150
    iget-object v9, v9, Lw/g2;->c:Lw/t1;

    .line 151
    .line 152
    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    .line 157
    .line 158
    if-eqz v13, :cond_6

    .line 159
    .line 160
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 161
    .line 162
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    check-cast v12, Lv/h;

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_6
    check-cast v12, Lv/h;

    .line 174
    .line 175
    const/4 v13, 0x0

    .line 176
    :goto_4
    invoke-virtual {v12}, Lv/h;->getCount()I

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    const/4 v11, 0x0

    .line 181
    :goto_5
    if-ge v11, v14, :cond_8

    .line 182
    .line 183
    invoke-virtual {v12, v11}, Lv/h;->b(I)Lv/m;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    if-ne v15, v2, :cond_7

    .line 188
    .line 189
    const/4 v2, -0x1

    .line 190
    goto :goto_6

    .line 191
    :cond_7
    add-int/2addr v11, v7

    .line 192
    goto :goto_5

    .line 193
    :cond_8
    const/4 v2, -0x1

    .line 194
    const/4 v11, -0x1

    .line 195
    :goto_6
    if-ne v11, v2, :cond_9

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_9
    add-int/2addr v11, v13

    .line 199
    invoke-virtual {v9}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    sub-int/2addr v11, v2

    .line 204
    if-ltz v11, :cond_4

    .line 205
    .line 206
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-lt v11, v2, :cond_a

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_a
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    goto :goto_7

    .line 218
    :cond_b
    const/4 v2, 0x0

    .line 219
    const/4 v10, 0x0

    .line 220
    :goto_7
    if-eqz v2, :cond_18

    .line 221
    .line 222
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 223
    .line 224
    const/16 v11, 0x1c

    .line 225
    .line 226
    if-gt v9, v11, :cond_c

    .line 227
    .line 228
    sget-object v9, Lw/m2;->G:Ljava/lang/reflect/Method;

    .line 229
    .line 230
    if-eqz v9, :cond_d

    .line 231
    .line 232
    :try_start_0
    new-array v11, v7, [Ljava/lang/Object;

    .line 233
    .line 234
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 235
    .line 236
    const/4 v13, 0x0

    .line 237
    aput-object v12, v11, v13

    .line 238
    .line 239
    invoke-virtual {v9, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    .line 242
    goto :goto_8

    .line 243
    :catch_0
    nop

    .line 244
    goto :goto_8

    .line 245
    :cond_c
    const/4 v9, 0x0

    .line 246
    invoke-static {v3, v9}, Lw/j2;->a(Landroid/widget/PopupWindow;Z)V

    .line 247
    .line 248
    .line 249
    :cond_d
    :goto_8
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 250
    .line 251
    const/16 v11, 0x17

    .line 252
    .line 253
    if-lt v9, v11, :cond_e

    .line 254
    .line 255
    const/4 v11, 0x0

    .line 256
    invoke-static {v3, v11}, Lw/i2;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 257
    .line 258
    .line 259
    :cond_e
    invoke-static {v7, v5}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    check-cast v3, Lv/d;

    .line 264
    .line 265
    iget-object v3, v3, Lv/d;->a:Lw/m2;

    .line 266
    .line 267
    iget-object v3, v3, Lw/g2;->c:Lw/t1;

    .line 268
    .line 269
    const/4 v11, 0x2

    .line 270
    new-array v12, v11, [I

    .line 271
    .line 272
    invoke-virtual {v3, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 273
    .line 274
    .line 275
    new-instance v11, Landroid/graphics/Rect;

    .line 276
    .line 277
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 278
    .line 279
    .line 280
    iget-object v13, v0, Lv/e;->p:Landroid/view/View;

    .line 281
    .line 282
    invoke-virtual {v13, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 283
    .line 284
    .line 285
    iget v13, v0, Lv/e;->q:I

    .line 286
    .line 287
    if-ne v13, v7, :cond_11

    .line 288
    .line 289
    const/16 v17, 0x0

    .line 290
    .line 291
    aget v12, v12, v17

    .line 292
    .line 293
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    add-int/2addr v3, v12

    .line 298
    add-int/2addr v3, v6

    .line 299
    iget v11, v11, Landroid/graphics/Rect;->right:I

    .line 300
    .line 301
    if-le v3, v11, :cond_10

    .line 302
    .line 303
    :cond_f
    const/4 v3, 0x0

    .line 304
    goto :goto_a

    .line 305
    :cond_10
    :goto_9
    const/4 v3, 0x1

    .line 306
    goto :goto_a

    .line 307
    :cond_11
    const/16 v17, 0x0

    .line 308
    .line 309
    aget v3, v12, v17

    .line 310
    .line 311
    sub-int/2addr v3, v6

    .line 312
    if-gez v3, :cond_f

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :goto_a
    if-ne v3, v7, :cond_12

    .line 316
    .line 317
    const/4 v13, 0x1

    .line 318
    goto :goto_b

    .line 319
    :cond_12
    const/4 v13, 0x0

    .line 320
    :goto_b
    iput v3, v0, Lv/e;->q:I

    .line 321
    .line 322
    const/16 v3, 0x1a

    .line 323
    .line 324
    const/4 v11, 0x5

    .line 325
    if-lt v9, v3, :cond_13

    .line 326
    .line 327
    iput-object v2, v8, Lw/g2;->p:Landroid/view/View;

    .line 328
    .line 329
    const/4 v3, 0x0

    .line 330
    const/4 v12, 0x0

    .line 331
    goto :goto_d

    .line 332
    :cond_13
    const/4 v3, 0x2

    .line 333
    new-array v9, v3, [I

    .line 334
    .line 335
    iget-object v12, v0, Lv/e;->n:Landroid/view/View;

    .line 336
    .line 337
    invoke-virtual {v12, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 338
    .line 339
    .line 340
    new-array v3, v3, [I

    .line 341
    .line 342
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 343
    .line 344
    .line 345
    iget v12, v0, Lv/e;->m:I

    .line 346
    .line 347
    and-int/lit8 v12, v12, 0x7

    .line 348
    .line 349
    if-ne v12, v11, :cond_14

    .line 350
    .line 351
    const/4 v12, 0x0

    .line 352
    aget v14, v9, v12

    .line 353
    .line 354
    iget-object v15, v0, Lv/e;->n:Landroid/view/View;

    .line 355
    .line 356
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    .line 357
    .line 358
    .line 359
    move-result v15

    .line 360
    add-int/2addr v15, v14

    .line 361
    aput v15, v9, v12

    .line 362
    .line 363
    aget v14, v3, v12

    .line 364
    .line 365
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 366
    .line 367
    .line 368
    move-result v15

    .line 369
    add-int/2addr v15, v14

    .line 370
    aput v15, v3, v12

    .line 371
    .line 372
    goto :goto_c

    .line 373
    :cond_14
    const/4 v12, 0x0

    .line 374
    :goto_c
    aget v14, v3, v12

    .line 375
    .line 376
    aget v15, v9, v12

    .line 377
    .line 378
    sub-int v12, v14, v15

    .line 379
    .line 380
    aget v3, v3, v7

    .line 381
    .line 382
    aget v9, v9, v7

    .line 383
    .line 384
    sub-int/2addr v3, v9

    .line 385
    :goto_d
    iget v9, v0, Lv/e;->m:I

    .line 386
    .line 387
    and-int/2addr v9, v11

    .line 388
    if-ne v9, v11, :cond_16

    .line 389
    .line 390
    if-eqz v13, :cond_15

    .line 391
    .line 392
    add-int/2addr v12, v6

    .line 393
    goto :goto_e

    .line 394
    :cond_15
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    sub-int/2addr v12, v2

    .line 399
    goto :goto_e

    .line 400
    :cond_16
    if-eqz v13, :cond_17

    .line 401
    .line 402
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    add-int/2addr v12, v2

    .line 407
    goto :goto_e

    .line 408
    :cond_17
    sub-int/2addr v12, v6

    .line 409
    :goto_e
    iput v12, v8, Lw/g2;->f:I

    .line 410
    .line 411
    iput-boolean v7, v8, Lw/g2;->k:Z

    .line 412
    .line 413
    iput-boolean v7, v8, Lw/g2;->j:Z

    .line 414
    .line 415
    invoke-virtual {v8, v3}, Lw/g2;->j(I)V

    .line 416
    .line 417
    .line 418
    goto :goto_10

    .line 419
    :cond_18
    iget-boolean v2, v0, Lv/e;->r:Z

    .line 420
    .line 421
    if-eqz v2, :cond_19

    .line 422
    .line 423
    iget v2, v0, Lv/e;->t:I

    .line 424
    .line 425
    iput v2, v8, Lw/g2;->f:I

    .line 426
    .line 427
    :cond_19
    iget-boolean v2, v0, Lv/e;->s:Z

    .line 428
    .line 429
    if-eqz v2, :cond_1a

    .line 430
    .line 431
    iget v2, v0, Lv/e;->v:I

    .line 432
    .line 433
    invoke-virtual {v8, v2}, Lw/g2;->j(I)V

    .line 434
    .line 435
    .line 436
    :cond_1a
    iget-object v2, v0, Lv/s;->a:Landroid/graphics/Rect;

    .line 437
    .line 438
    if-eqz v2, :cond_1b

    .line 439
    .line 440
    new-instance v11, Landroid/graphics/Rect;

    .line 441
    .line 442
    invoke-direct {v11, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 443
    .line 444
    .line 445
    goto :goto_f

    .line 446
    :cond_1b
    const/4 v11, 0x0

    .line 447
    :goto_f
    iput-object v11, v8, Lw/g2;->z:Landroid/graphics/Rect;

    .line 448
    .line 449
    :goto_10
    new-instance v2, Lv/d;

    .line 450
    .line 451
    iget v3, v0, Lv/e;->q:I

    .line 452
    .line 453
    invoke-direct {v2, v8, v1, v3}, Lv/d;-><init>(Lw/m2;Lv/k;I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    invoke-virtual {v8}, Lw/g2;->show()V

    .line 460
    .line 461
    .line 462
    iget-object v2, v8, Lw/g2;->c:Lw/t1;

    .line 463
    .line 464
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 465
    .line 466
    .line 467
    if-nez v10, :cond_1c

    .line 468
    .line 469
    iget-boolean v3, v0, Lv/e;->x:Z

    .line 470
    .line 471
    if-eqz v3, :cond_1c

    .line 472
    .line 473
    iget-object v3, v1, Lv/k;->m:Ljava/lang/CharSequence;

    .line 474
    .line 475
    if-eqz v3, :cond_1c

    .line 476
    .line 477
    const v3, 0x7f0e0012

    .line 478
    .line 479
    .line 480
    const/4 v5, 0x0

    .line 481
    invoke-virtual {v4, v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    check-cast v3, Landroid/widget/FrameLayout;

    .line 486
    .line 487
    const v4, 0x1020016

    .line 488
    .line 489
    .line 490
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    check-cast v4, Landroid/widget/TextView;

    .line 495
    .line 496
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 497
    .line 498
    .line 499
    iget-object v1, v1, Lv/k;->m:Ljava/lang/CharSequence;

    .line 500
    .line 501
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    .line 503
    .line 504
    const/4 v1, 0x0

    .line 505
    invoke-virtual {v2, v3, v1, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v8}, Lw/g2;->show()V

    .line 509
    .line 510
    .line 511
    :cond_1c
    return-void
.end method
