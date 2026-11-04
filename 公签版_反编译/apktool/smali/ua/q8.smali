.class public Lua/q8;
.super Lda/h;
.source "SourceFile"


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Lx9/w3;

.field public C:Ljava/lang/String;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public E:Lx9/l5;

.field public final F:Ljava/util/concurrent/atomic/AtomicInteger;

.field public G:Ljava/util/concurrent/ExecutorService;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/LinearLayout;

.field public K:Landroid/widget/TextView;

.field public final L:Ljava/util/ArrayList;

.field public M:I

.field public N:Landroid/widget/TextView;

.field public O:Ljava/util/ArrayList;

.field public P:Landroid/media/SoundPool;

.field public R:I

.field public S:Landroid/widget/LinearLayout;

.field public T:Lcom/yunpan/appmanage/view/HiveProgressView;

.field public V:Z

.field public final X:Lcom/yunpan/appmanage/carsdk/u;

.field public g:Lha/u9;

.field public h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public i:Lx9/n4;

.field public j:Lx9/i3;

.field public k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public l:Lx9/g0;

.field public m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public n:Lx9/n;

.field public p:Z

.field public q:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public r:Landroid/widget/LinearLayout;

.field public s:Landroid/widget/LinearLayout;

.field public t:Landroid/widget/LinearLayout;

.field public v:Landroid/widget/LinearLayout;

.field public w:Landroid/widget/LinearLayout;

.field public x:Landroid/widget/LinearLayout;

.field public y:Landroid/widget/LinearLayout;

.field public z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lda/h;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lua/q8;->p:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lua/q8;->C:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lua/q8;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lua/q8;->L:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lua/q8;->M:I

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lua/q8;->O:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput v0, p0, Lua/q8;->R:I

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lua/q8;->V:Z

    .line 39
    .line 40
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/16 v2, 0x17

    .line 47
    .line 48
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lua/q8;->X:Lcom/yunpan/appmanage/carsdk/u;

    .line 52
    .line 53
    return-void
.end method

.method public static n(Lua/q8;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/q8;->g:Lha/u9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lua/q8;->l:Lx9/g0;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lx9/w3;

    .line 19
    .line 20
    iget-object v2, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lua/q8;->n:Lx9/n;

    .line 29
    .line 30
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sub-int/2addr v0, v1

    .line 35
    :goto_0
    if-ltz v0, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lua/q8;->n:Lx9/n;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lx9/w3;

    .line 44
    .line 45
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    iget-object v1, p0, Lua/q8;->n:Lx9/n;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lc6/g;->C(I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, v0, v1}, Lua/q8;->v(Lx9/w3;Z)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public static w(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 26
    .line 27
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    return p0
.end method


# virtual methods
.method public final A(ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    invoke-virtual {p0, v1, v0, v0}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lua/q8;->g:Lha/u9;

    .line 8
    .line 9
    const-string v1, "\u641c\u7d22\u4e2d"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lha/u9;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v6, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v5, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lh2/d;

    .line 25
    .line 26
    invoke-direct {v0, p3, p1, p2, v5}, Lh2/d;-><init>(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lmc/c;

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    invoke-direct {p1, p3, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p3, Lrc/f;->b:Lec/j;

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p1, p3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p3, Lua/q1;

    .line 50
    .line 51
    const/4 v7, 0x2

    .line 52
    move-object v2, p3

    .line 53
    move-object v3, p0

    .line 54
    move-object v4, p2

    .line 55
    invoke-direct/range {v2 .. v7}, Lua/q1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p3}, Lec/b;->b(Lec/e;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final B()V
    .locals 7

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2
    .line 3
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/high16 v3, 0x41200000    # 10.0f

    .line 7
    .line 8
    const/high16 v4, 0x41a00000    # 20.0f

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 13
    .line 14
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->f:F

    .line 15
    .line 16
    mul-float v4, v4, v0

    .line 17
    .line 18
    float-to-int v4, v4

    .line 19
    iput v4, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 20
    .line 21
    mul-float v0, v0, v3

    .line 22
    .line 23
    float-to-int v0, v0

    .line 24
    iput v0, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 25
    .line 26
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 27
    .line 28
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v0, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_0
    const/4 v5, 0x1

    .line 39
    const/4 v6, 0x3

    .line 40
    if-ne v1, v5, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 43
    .line 44
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->f:F

    .line 45
    .line 46
    mul-float v4, v4, v0

    .line 47
    .line 48
    float-to-int v2, v4

    .line 49
    iput v2, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 50
    .line 51
    mul-float v0, v0, v3

    .line 52
    .line 53
    float-to-int v0, v0

    .line 54
    iput v0, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 55
    .line 56
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 57
    .line 58
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 59
    .line 60
    invoke-direct {v0, v2, v6}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v5, 0x7

    .line 68
    if-ne v1, v2, :cond_2

    .line 69
    .line 70
    iget-object v1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 71
    .line 72
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->f:F

    .line 73
    .line 74
    mul-float v2, v0, v4

    .line 75
    .line 76
    float-to-int v2, v2

    .line 77
    iput v2, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 78
    .line 79
    mul-float v0, v0, v4

    .line 80
    .line 81
    float-to-int v0, v0

    .line 82
    iput v0, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 83
    .line 84
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 85
    .line 86
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 87
    .line 88
    invoke-direct {v0, v2, v5}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const/4 v2, 0x4

    .line 96
    if-ne v1, v6, :cond_3

    .line 97
    .line 98
    iget-object v1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 99
    .line 100
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->f:F

    .line 101
    .line 102
    mul-float v4, v4, v0

    .line 103
    .line 104
    float-to-int v4, v4

    .line 105
    iput v4, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 106
    .line 107
    mul-float v0, v0, v3

    .line 108
    .line 109
    float-to-int v0, v0

    .line 110
    iput v0, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 111
    .line 112
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 113
    .line 114
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 115
    .line 116
    invoke-direct {v0, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    if-ne v1, v2, :cond_4

    .line 124
    .line 125
    iget-object v1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 126
    .line 127
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->f:F

    .line 128
    .line 129
    mul-float v4, v4, v0

    .line 130
    .line 131
    float-to-int v2, v4

    .line 132
    iput v2, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 133
    .line 134
    const/high16 v2, 0x41000000    # 8.0f

    .line 135
    .line 136
    mul-float v0, v0, v2

    .line 137
    .line 138
    float-to-int v0, v0

    .line 139
    iput v0, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 140
    .line 141
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 142
    .line 143
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 144
    .line 145
    invoke-direct {v0, v2, v5}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_4
    const/4 v5, 0x5

    .line 153
    if-ne v1, v5, :cond_5

    .line 154
    .line 155
    iget-object v1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 156
    .line 157
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->f:F

    .line 158
    .line 159
    mul-float v4, v4, v0

    .line 160
    .line 161
    float-to-int v4, v4

    .line 162
    iput v4, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 163
    .line 164
    mul-float v0, v0, v3

    .line 165
    .line 166
    float-to-int v0, v0

    .line 167
    iput v0, v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mVerticalSpacingWithMargins:I

    .line 168
    .line 169
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 170
    .line 171
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 172
    .line 173
    invoke-direct {v0, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 177
    .line 178
    .line 179
    :cond_5
    :goto_0
    return-void
.end method

.method public final C(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/q8;->y:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget-object p3, p0, Lua/q8;->z:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lua/q8;->A:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final D(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lua/q8;->n:Lx9/n;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lx9/w3;

    .line 12
    .line 13
    iput-object v2, v0, Lua/q8;->B:Lx9/w3;

    .line 14
    .line 15
    iget-object v2, v0, Lua/q8;->l:Lx9/g0;

    .line 16
    .line 17
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    iget-object v2, v0, Lua/q8;->l:Lx9/g0;

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lx9/w3;

    .line 32
    .line 33
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 34
    .line 35
    const-string v3, "\u6536\u85cf\u680f"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    iget-object v2, v0, Lua/q8;->l:Lx9/g0;

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lx9/w3;

    .line 50
    .line 51
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    new-instance v2, Lha/z6;

    .line 60
    .line 61
    iget-object v6, v0, Lda/h;->f:Landroid/app/Activity;

    .line 62
    .line 63
    iget-object v7, v0, Lda/h;->e:Landroid/content/Context;

    .line 64
    .line 65
    iget-object v3, v0, Lua/q8;->B:Lx9/w3;

    .line 66
    .line 67
    iget-object v9, v3, Lx9/w3;->a:Ljava/lang/String;

    .line 68
    .line 69
    new-instance v13, Lua/c8;

    .line 70
    .line 71
    invoke-direct {v13, v0, v1}, Lua/c8;-><init>(Lua/q8;I)V

    .line 72
    .line 73
    .line 74
    const-string v11, "\u4fee\u6539\u5907\u6ce8"

    .line 75
    .line 76
    const-string v12, "\u79fb\u9664\u6536\u85cf"

    .line 77
    .line 78
    const-string v8, "\u4fee\u6539\u5907\u6ce8 \u6216 \u79fb\u9664\u6536\u85cf"

    .line 79
    .line 80
    const-string v10, "\u8bf7\u8f93\u5165\u5907\u6ce8"

    .line 81
    .line 82
    move-object v5, v2

    .line 83
    invoke-direct/range {v5 .. v13}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_0
    iget-object v2, v0, Lua/q8;->l:Lx9/g0;

    .line 91
    .line 92
    invoke-virtual {v2, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lx9/w3;

    .line 97
    .line 98
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 99
    .line 100
    const-string v3, "\u641c\u7d22\u7ed3\u679c\uff1a"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    new-instance v3, Ljava/io/File;

    .line 109
    .line 110
    iget-object v5, v0, Lua/q8;->B:Lx9/w3;

    .line 111
    .line 112
    iget-object v5, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_1

    .line 122
    .line 123
    iget-object v2, v0, Lua/q8;->n:Lx9/n;

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Lc6/g;->C(I)V

    .line 126
    .line 127
    .line 128
    const-string v1, "\u6b64\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 129
    .line 130
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_1
    new-instance v3, Lha/v5;

    .line 135
    .line 136
    iget-object v5, v0, Lda/h;->f:Landroid/app/Activity;

    .line 137
    .line 138
    iget-object v6, v0, Lda/h;->e:Landroid/content/Context;

    .line 139
    .line 140
    invoke-direct {v3, v5, v6}, Lha/v5;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    iget-object v5, v0, Lua/q8;->B:Lx9/w3;

    .line 144
    .line 145
    new-instance v6, Lua/c8;

    .line 146
    .line 147
    invoke-direct {v6, v0, v1}, Lua/c8;-><init>(Lua/q8;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 151
    .line 152
    .line 153
    iput-object v5, v3, Lha/v5;->p:Lx9/w3;

    .line 154
    .line 155
    iput-object v6, v3, Lha/v5;->s:Lua/c8;

    .line 156
    .line 157
    iget-object v1, v3, Lha/v5;->n:Landroid/widget/TextView;

    .line 158
    .line 159
    const/16 v6, 0x8

    .line 160
    .line 161
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v3, Lha/v5;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 165
    .line 166
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v6, v3, Lha/v5;->m:Lx9/t1;

    .line 175
    .line 176
    invoke-virtual {v6, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    iget-object v7, v3, Lha/v5;->k:Lx9/h;

    .line 185
    .line 186
    invoke-virtual {v7, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 187
    .line 188
    .line 189
    iget-boolean v1, v5, Lx9/w3;->c:Z

    .line 190
    .line 191
    const-string v7, "\u5b89\u88c5"

    .line 192
    .line 193
    const-string v8, "\u89e3\u538b"

    .line 194
    .line 195
    const v9, 0x7f0802a4

    .line 196
    .line 197
    .line 198
    if-eqz v1, :cond_2

    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :cond_2
    iget-object v1, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v1}, Lza/g;->g(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_3

    .line 209
    .line 210
    new-instance v1, Lx9/l3;

    .line 211
    .line 212
    invoke-direct {v1, v9, v8}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_3
    iget-wide v10, v5, Lx9/w3;->d:J

    .line 221
    .line 222
    const-wide/16 v12, 0x0

    .line 223
    .line 224
    cmp-long v1, v10, v12

    .line 225
    .line 226
    if-lez v1, :cond_5

    .line 227
    .line 228
    iget-object v1, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v1}, Lif/a;->X(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_4

    .line 235
    .line 236
    iget-object v1, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 237
    .line 238
    const-string v10, ".gj"

    .line 239
    .line 240
    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_5

    .line 245
    .line 246
    :cond_4
    new-instance v1, Lx9/l3;

    .line 247
    .line 248
    const v10, 0x7f080281

    .line 249
    .line 250
    .line 251
    invoke-direct {v1, v10, v7}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    new-instance v1, Lha/t5;

    .line 258
    .line 259
    const/4 v10, 0x2

    .line 260
    invoke-direct {v1, v3, v10}, Lha/t5;-><init>(Lha/v5;I)V

    .line 261
    .line 262
    .line 263
    new-instance v10, Lmc/c;

    .line 264
    .line 265
    const/4 v11, 0x0

    .line 266
    invoke-direct {v10, v11, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 270
    .line 271
    invoke-virtual {v10, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    invoke-virtual {v1, v10}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    new-instance v10, Lha/u5;

    .line 284
    .line 285
    const/4 v11, 0x1

    .line 286
    invoke-direct {v10, v3, v11}, Lha/u5;-><init>(Lha/v5;I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v10}, Lec/b;->b(Lec/e;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_2

    .line 293
    .line 294
    :cond_5
    iget-object v1, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {v1}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_6

    .line 301
    .line 302
    new-instance v1, Lx9/l3;

    .line 303
    .line 304
    const-string v10, "\u6d4f\u89c8"

    .line 305
    .line 306
    invoke-direct {v1, v9, v10}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_2

    .line 313
    .line 314
    :cond_6
    new-instance v1, Lx9/l3;

    .line 315
    .line 316
    const-string v10, "\u6253\u5f00"

    .line 317
    .line 318
    invoke-direct {v1, v9, v10}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    iget-object v1, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 325
    .line 326
    const-string v10, "."

    .line 327
    .line 328
    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-lez v1, :cond_c

    .line 333
    .line 334
    iget-object v10, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 335
    .line 336
    invoke-static {v10}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    move-result v10

    .line 340
    if-nez v10, :cond_b

    .line 341
    .line 342
    iget-object v10, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 343
    .line 344
    const-string v11, ".pcm"

    .line 345
    .line 346
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    if-eqz v10, :cond_7

    .line 351
    .line 352
    goto :goto_0

    .line 353
    :cond_7
    iget-object v10, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 354
    .line 355
    invoke-static {v10}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v10

    .line 359
    if-eqz v10, :cond_8

    .line 360
    .line 361
    const-string v1, "\u89c6\u9891"

    .line 362
    .line 363
    iput-object v1, v3, Lha/v5;->q:Ljava/lang/String;

    .line 364
    .line 365
    goto :goto_1

    .line 366
    :cond_8
    iget-object v10, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 367
    .line 368
    invoke-static {v10}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    if-eqz v10, :cond_9

    .line 373
    .line 374
    const-string v1, "\u56fe\u7247"

    .line 375
    .line 376
    iput-object v1, v3, Lha/v5;->q:Ljava/lang/String;

    .line 377
    .line 378
    goto :goto_1

    .line 379
    :cond_9
    iget-object v10, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 380
    .line 381
    invoke-static {v10}, Lif/a;->i0(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v10

    .line 385
    if-eqz v10, :cond_a

    .line 386
    .line 387
    const-string v1, "\u6587\u672c"

    .line 388
    .line 389
    iput-object v1, v3, Lha/v5;->q:Ljava/lang/String;

    .line 390
    .line 391
    goto :goto_1

    .line 392
    :cond_a
    iget-object v10, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 399
    .line 400
    .line 401
    move-result-object v10

    .line 402
    invoke-virtual {v1, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    iput-object v1, v3, Lha/v5;->q:Ljava/lang/String;

    .line 407
    .line 408
    goto :goto_1

    .line 409
    :cond_b
    :goto_0
    const-string v1, "\u97f3\u4e50"

    .line 410
    .line 411
    iput-object v1, v3, Lha/v5;->q:Ljava/lang/String;

    .line 412
    .line 413
    :cond_c
    :goto_1
    iget-object v1, v3, Lha/v5;->q:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-nez v1, :cond_d

    .line 420
    .line 421
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 422
    .line 423
    iget-object v10, v3, Lha/v5;->q:Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v1, v10}, Lcom/yunpan/appmanage/util/w;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-nez v1, :cond_d

    .line 434
    .line 435
    iget-object v1, v3, Lha/v5;->n:Landroid/widget/TextView;

    .line 436
    .line 437
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    :cond_d
    :goto_2
    iget-boolean v1, v5, Lx9/w3;->c:Z

    .line 441
    .line 442
    const-string v5, "\u4f20\u9001"

    .line 443
    .line 444
    const-string v11, "\u538b\u7f29"

    .line 445
    .line 446
    const-string v13, "\u6539\u540d"

    .line 447
    .line 448
    const v15, 0x7f0801f7

    .line 449
    .line 450
    .line 451
    const v9, 0x7f0800c0

    .line 452
    .line 453
    .line 454
    const-string v4, "\u5220\u9664"

    .line 455
    .line 456
    const v10, 0x7f0800c4

    .line 457
    .line 458
    .line 459
    const-string v12, "\u526a\u5207"

    .line 460
    .line 461
    const-string v14, "\u590d\u5236"

    .line 462
    .line 463
    if-eqz v1, :cond_e

    .line 464
    .line 465
    new-instance v1, Lx9/l3;

    .line 466
    .line 467
    invoke-direct {v1, v10, v4}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    new-instance v1, Lx9/l3;

    .line 474
    .line 475
    invoke-direct {v1, v9, v14}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    new-instance v1, Lx9/l3;

    .line 482
    .line 483
    invoke-direct {v1, v15, v12}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    new-instance v1, Lx9/l3;

    .line 490
    .line 491
    const v4, 0x7f0802ba

    .line 492
    .line 493
    .line 494
    invoke-direct {v1, v4, v13}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    new-instance v1, Lx9/l3;

    .line 501
    .line 502
    const v4, 0x7f0802f9

    .line 503
    .line 504
    .line 505
    invoke-direct {v1, v4, v14}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    new-instance v1, Lx9/l3;

    .line 512
    .line 513
    invoke-direct {v1, v4, v12}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    new-instance v1, Lx9/l3;

    .line 520
    .line 521
    const v4, 0x7f0802b7

    .line 522
    .line 523
    .line 524
    invoke-direct {v1, v4, v11}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    new-instance v1, Lx9/l3;

    .line 531
    .line 532
    const v4, 0x7f0801f5

    .line 533
    .line 534
    .line 535
    invoke-direct {v1, v4, v5}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    goto :goto_3

    .line 542
    :cond_e
    new-instance v1, Lx9/l3;

    .line 543
    .line 544
    invoke-direct {v1, v10, v4}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    new-instance v1, Lx9/l3;

    .line 551
    .line 552
    const v4, 0x7f0802ba

    .line 553
    .line 554
    .line 555
    invoke-direct {v1, v4, v13}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    new-instance v1, Lx9/l3;

    .line 562
    .line 563
    const v4, 0x7f0802b7

    .line 564
    .line 565
    .line 566
    invoke-direct {v1, v4, v11}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    new-instance v1, Lx9/l3;

    .line 573
    .line 574
    invoke-direct {v1, v9, v14}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 578
    .line 579
    .line 580
    new-instance v1, Lx9/l3;

    .line 581
    .line 582
    invoke-direct {v1, v15, v12}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    new-instance v1, Lx9/l3;

    .line 589
    .line 590
    const v4, 0x7f0802cb

    .line 591
    .line 592
    .line 593
    const-string v9, "\u5206\u4eab"

    .line 594
    .line 595
    invoke-direct {v1, v4, v9}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    new-instance v1, Lx9/l3;

    .line 602
    .line 603
    const v4, 0x7f0802f9

    .line 604
    .line 605
    .line 606
    invoke-direct {v1, v4, v14}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    new-instance v1, Lx9/l3;

    .line 613
    .line 614
    invoke-direct {v1, v4, v12}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    new-instance v1, Lx9/l3;

    .line 621
    .line 622
    const v4, 0x7f0801f5

    .line 623
    .line 624
    .line 625
    invoke-direct {v1, v4, v5}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    :goto_3
    if-eqz v2, :cond_f

    .line 632
    .line 633
    new-instance v1, Lx9/l3;

    .line 634
    .line 635
    const v2, 0x7f080132

    .line 636
    .line 637
    .line 638
    const-string v4, "\u76ee\u5f55"

    .line 639
    .line 640
    invoke-direct {v1, v2, v4}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    goto :goto_4

    .line 647
    :cond_f
    new-instance v1, Lx9/l3;

    .line 648
    .line 649
    const v2, 0x7f080307

    .line 650
    .line 651
    .line 652
    const-string v4, "\u5c5e\u6027"

    .line 653
    .line 654
    invoke-direct {v1, v2, v4}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    :goto_4
    invoke-virtual {v6}, Lc6/g;->b()I

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    rem-int/lit8 v1, v1, 0x3

    .line 665
    .line 666
    if-eqz v1, :cond_12

    .line 667
    .line 668
    const/4 v1, 0x0

    .line 669
    invoke-virtual {v6, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    check-cast v2, Lx9/l3;

    .line 674
    .line 675
    iget-object v2, v2, Lx9/l3;->b:Ljava/lang/String;

    .line 676
    .line 677
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-nez v2, :cond_11

    .line 682
    .line 683
    invoke-virtual {v6, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    check-cast v2, Lx9/l3;

    .line 688
    .line 689
    iget-object v1, v2, Lx9/l3;->b:Ljava/lang/String;

    .line 690
    .line 691
    const-string v2, "\u91cd\u88c5"

    .line 692
    .line 693
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    if-eqz v1, :cond_10

    .line 698
    .line 699
    goto :goto_5

    .line 700
    :cond_10
    new-instance v1, Lx9/l3;

    .line 701
    .line 702
    const v2, 0x7f0801d0

    .line 703
    .line 704
    .line 705
    const-string v4, "\u8fd4\u56de"

    .line 706
    .line 707
    invoke-direct {v1, v2, v4}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 711
    .line 712
    .line 713
    goto :goto_6

    .line 714
    :cond_11
    :goto_5
    new-instance v1, Lx9/l3;

    .line 715
    .line 716
    const v2, 0x7f0802a4

    .line 717
    .line 718
    .line 719
    invoke-direct {v1, v2, v8}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 723
    .line 724
    .line 725
    :cond_12
    :goto_6
    iget-object v1, v3, Lha/v5;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 726
    .line 727
    const/4 v2, 0x0

    .line 728
    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 729
    .line 730
    .line 731
    iget-object v1, v3, Lha/v5;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 732
    .line 733
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 734
    .line 735
    .line 736
    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lua/q8;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lua/q8;->B:Lx9/w3;

    .line 5
    .line 6
    iget-object v1, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Lx9/m5;

    .line 11
    .line 12
    invoke-direct {v2, v0, v1, p1}, Lx9/m5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lua/q8;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lua/q8;->E:Lx9/l5;

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lua/q8;->G:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    new-instance v0, Landroidx/activity/f;

    .line 29
    .line 30
    iget-object v1, p0, Lua/q8;->E:Lx9/l5;

    .line 31
    .line 32
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    const/4 v3, 0x3

    .line 39
    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/activity/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final F(Lx9/w3;)V
    .locals 6

    .line 1
    const-string v0, "/system"

    .line 2
    .line 3
    const-string v1, "\u5185\u90e8\u5b58\u50a8"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_7

    .line 14
    .line 15
    iget-object v4, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v5, "/Download"

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    iget-object v1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string v4, "U\u76d8"

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 38
    .line 39
    const-string v4, "/data"

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const-string v1, "\u6570\u636e\u5206\u533a"

    .line 48
    .line 49
    :goto_0
    move-object v0, v3

    .line 50
    goto :goto_4

    .line 51
    :cond_2
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const-string v4, "\u7cfb\u7edf\u5206\u533a"

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    move-object v0, v3

    .line 62
    :goto_1
    move-object v1, v4

    .line 63
    goto :goto_4

    .line 64
    :cond_3
    :try_start_1
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 65
    .line 66
    const-string v5, "/amapauto"

    .line 67
    .line 68
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    const-string v1, "\u5730\u56fe\u5206\u533a"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 78
    .line 79
    const-string v5, "/"

    .line 80
    .line 81
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 89
    .line 90
    const-string v0, "/vendor"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    const-string v1, "vendor\u5206\u533a"

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    :goto_2
    move-object v1, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_8

    .line 116
    .line 117
    const-string v0, "/sdcard"

    .line 118
    .line 119
    :cond_8
    :goto_4
    iget-object p1, p0, Lua/q8;->N:Landroid/widget/TextView;

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, "\uff1a"

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->k(Ljava/lang/String;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    long-to-double v3, v3

    .line 139
    invoke-static {v3, v4}, Lif/a;->D0(D)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, "   \u5269\u4f59\uff1a"

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->j(Ljava/lang/String;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    long-to-double v0, v0

    .line 156
    invoke-static {v0, v1}, Lif/a;->D0(D)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    .line 170
    :catch_0
    return-void
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;Lx9/w3;)V
    .locals 5

    .line 1
    iget-boolean v0, p3, Lx9/w3;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "/"

    .line 13
    .line 14
    invoke-static {p2, v1}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object p3, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    array-length v1, p3

    .line 39
    if-ge v0, v1, :cond_1

    .line 40
    .line 41
    new-instance v1, Lx9/w3;

    .line 42
    .line 43
    aget-object v2, p3, v0

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    aget-object v3, p3, v0

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    aget-object v4, p3, v0

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-direct {v1, v2, v3, v4}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, p2, v1}, Lua/q8;->G(Ljava/lang/String;Ljava/lang/String;Lx9/w3;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lja/g;

    .line 71
    .line 72
    iget-object v1, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p3, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v0, p1, v1, p3, p2}, Lja/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/16 p2, 0x3e8

    .line 84
    .line 85
    iput p2, p1, Landroid/os/Message;->what:I

    .line 86
    .line 87
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    .line 89
    iget-object p2, p0, Lua/q8;->X:Lcom/yunpan/appmanage/carsdk/u;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void
.end method

.method public final H()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    :try_start_0
    iget-object v2, p0, Lua/q8;->l:Lx9/g0;

    .line 5
    .line 6
    if-eqz v2, :cond_2

    .line 7
    .line 8
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-lez v2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lua/q8;->l:Lx9/g0;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lx9/w3;

    .line 22
    .line 23
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 24
    .line 25
    const-string v4, "U\u76d8"

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 34
    .line 35
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 38
    .line 39
    iget-object v4, p0, Lua/q8;->l:Lx9/g0;

    .line 40
    .line 41
    invoke-virtual {v4, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lx9/w3;

    .line 46
    .line 47
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_0

    .line 62
    .line 63
    iget-object v2, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    :cond_0
    iget-object v2, p0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v2, p0, Lua/q8;->l:Lx9/g0;

    .line 77
    .line 78
    new-instance v3, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Lc6/g;->E(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lua/q8;->n:Lx9/n;

    .line 92
    .line 93
    new-instance v3, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Lc6/g;->E(Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v3, Lx9/w3;

    .line 107
    .line 108
    const-string v4, "\u6587\u4ef6\u4e92\u4f20"

    .line 109
    .line 110
    invoke-direct {v3, v4, v1, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 117
    .line 118
    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_3

    .line 127
    .line 128
    new-instance v4, Lx9/w3;

    .line 129
    .line 130
    const-string v5, "\u5185\u90e8\u5b58\u50a8"

    .line 131
    .line 132
    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-direct {v4, v5, v6, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :cond_3
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 143
    .line 144
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 145
    .line 146
    iget-object v5, v4, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    new-instance v6, Lua/q5;

    .line 153
    .line 154
    invoke-direct {v6, v0, v2}, Lua/q5;-><init>(ILjava/util/ArrayList;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v5, v6}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-nez v5, :cond_4

    .line 169
    .line 170
    new-instance v5, Lx9/w3;

    .line 171
    .line 172
    const-string v6, "Download"

    .line 173
    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v3, "/Download"

    .line 187
    .line 188
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-direct {v5, v6, v3, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_4
    new-instance v3, Lx9/w3;

    .line 202
    .line 203
    const-string v5, "\u6587\u4ef6\u641c\u7d22"

    .line 204
    .line 205
    invoke-direct {v3, v5, v1, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 212
    .line 213
    invoke-virtual {v3}, Lcom/yunpan/appmanage/util/w;->d()Ljava/util/ArrayList;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-nez v3, :cond_5

    .line 222
    .line 223
    new-instance v3, Lx9/w3;

    .line 224
    .line 225
    const-string v5, "\u6536\u85cf\u680f"

    .line 226
    .line 227
    invoke-direct {v3, v5, v1, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    :cond_5
    new-instance v3, Lx9/w3;

    .line 234
    .line 235
    const-string v5, "\u6839"

    .line 236
    .line 237
    const-string v6, "/"

    .line 238
    .line 239
    invoke-direct {v3, v5, v6, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    iget-boolean v3, v4, Lcom/yunpan/appmanage/util/k;->c0:Z

    .line 246
    .line 247
    if-eqz v3, :cond_6

    .line 248
    .line 249
    new-instance v3, Lx9/w3;

    .line 250
    .line 251
    const-string v4, "\u626b\u63cf"

    .line 252
    .line 253
    invoke-direct {v3, v4, v1, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    :cond_6
    new-instance v3, Lx9/w3;

    .line 260
    .line 261
    const-string v4, "\u6e05\u7406"

    .line 262
    .line 263
    invoke-direct {v3, v4, v1, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    new-instance v3, Lx9/w3;

    .line 270
    .line 271
    const-string v4, "\u8bbe\u7f6e"

    .line 272
    .line 273
    invoke-direct {v3, v4, v1, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lua/q8;->i:Lx9/n4;

    .line 280
    .line 281
    invoke-virtual {v0, v2}, Lc6/g;->E(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .line 283
    .line 284
    :catch_0
    return-void
.end method

.method public final j()I
    .locals 1

    .line 1
    const v0, 0x7f0e0115

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public final k()V
    .locals 7

    .line 1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lkh/e;->e(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lua/q8;->G:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance v1, Lha/u9;

    .line 26
    .line 27
    iget-object v2, p0, Lda/h;->f:Landroid/app/Activity;

    .line 28
    .line 29
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lua/q8;->g:Lha/u9;

    .line 35
    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v2, 0x15

    .line 39
    .line 40
    const/4 v3, 0x5

    .line 41
    const/4 v4, 0x0

    .line 42
    if-lt v1, v2, :cond_1

    .line 43
    .line 44
    new-instance v1, Landroid/media/SoundPool$Builder;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 56
    .line 57
    .line 58
    const/16 v5, 0xd

    .line 59
    .line 60
    invoke-virtual {v2, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/4 v5, 0x4

    .line 65
    invoke-virtual {v2, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lua/q8;->P:Landroid/media/SoundPool;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Landroid/media/SoundPool;

    .line 89
    .line 90
    invoke-direct {v1, v3, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lua/q8;->P:Landroid/media/SoundPool;

    .line 94
    .line 95
    :goto_0
    iget-object v1, p0, Lua/q8;->P:Landroid/media/SoundPool;

    .line 96
    .line 97
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 98
    .line 99
    const v3, 0x7f12001d

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2, v3, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    iput v1, p0, Lua/q8;->R:I

    .line 107
    .line 108
    const v1, 0x7f0b040f

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Landroid/widget/TextView;

    .line 116
    .line 117
    iput-object v1, p0, Lua/q8;->H:Landroid/widget/TextView;

    .line 118
    .line 119
    const-string v2, "\u5982\u6709\u5efa\u8bae\u6216\u8005BUG\u8bf7\u5230QQ\u9891\u9053\u53cd\u9988"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    const v1, 0x7f0b05b7

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Landroid/widget/TextView;

    .line 132
    .line 133
    iput-object v1, p0, Lua/q8;->K:Landroid/widget/TextView;

    .line 134
    .line 135
    const/16 v2, 0x8

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    const v1, 0x7f0b047f

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Landroid/widget/LinearLayout;

    .line 148
    .line 149
    iput-object v1, p0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 155
    .line 156
    new-instance v3, Lua/a8;

    .line 157
    .line 158
    const/4 v5, 0x4

    .line 159
    invoke-direct {v3, p0, v5}, Lua/a8;-><init>(Lua/q8;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 166
    .line 167
    new-instance v3, Lua/e8;

    .line 168
    .line 169
    const/4 v5, 0x0

    .line 170
    invoke-direct {v3, v5, p0}, Lua/e8;-><init>(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 177
    .line 178
    new-instance v3, Lua/b8;

    .line 179
    .line 180
    const/4 v5, 0x3

    .line 181
    invoke-direct {v3, p0, v5}, Lua/b8;-><init>(Lua/q8;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    const v1, 0x7f0b047d

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Landroid/widget/TextView;

    .line 195
    .line 196
    iput-object v1, p0, Lua/q8;->N:Landroid/widget/TextView;

    .line 197
    .line 198
    const-string v3, ""

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    const v1, 0x7f0b0549

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Landroid/widget/LinearLayout;

    .line 211
    .line 212
    iput-object v1, p0, Lua/q8;->y:Landroid/widget/LinearLayout;

    .line 213
    .line 214
    const v1, 0x7f0b0546

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Landroid/widget/ImageView;

    .line 222
    .line 223
    iput-object v1, p0, Lua/q8;->z:Landroid/widget/ImageView;

    .line 224
    .line 225
    const v1, 0x7f0b054c

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    check-cast v1, Landroid/widget/TextView;

    .line 233
    .line 234
    iput-object v1, p0, Lua/q8;->A:Landroid/widget/TextView;

    .line 235
    .line 236
    iget-object v1, p0, Lua/q8;->y:Landroid/widget/LinearLayout;

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    const v1, 0x7f0b0544

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 249
    .line 250
    iput-object v1, p0, Lua/q8;->T:Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 251
    .line 252
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/view/HiveProgressView;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    const v1, 0x7f0b04d6

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Landroid/widget/LinearLayout;

    .line 263
    .line 264
    iput-object v1, p0, Lua/q8;->S:Landroid/widget/LinearLayout;

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    iget-object v1, p0, Lua/q8;->X:Lcom/yunpan/appmanage/carsdk/u;

    .line 270
    .line 271
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    .line 273
    .line 274
    const v1, 0x7f0b0488

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 282
    .line 283
    iput-object v1, p0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 284
    .line 285
    new-instance v5, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 286
    .line 287
    iget-object v6, p0, Lda/h;->e:Landroid/content/Context;

    .line 288
    .line 289
    invoke-direct {v5, v6, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 293
    .line 294
    .line 295
    new-instance v1, Lx9/n4;

    .line 296
    .line 297
    invoke-direct {v1}, Lx9/n4;-><init>()V

    .line 298
    .line 299
    .line 300
    iput-object v1, p0, Lua/q8;->i:Lx9/n4;

    .line 301
    .line 302
    iget-object v5, p0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 303
    .line 304
    invoke-virtual {v5, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 305
    .line 306
    .line 307
    const v1, 0x7f0b0487

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 315
    .line 316
    iput-object v1, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 317
    .line 318
    new-instance v5, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 319
    .line 320
    iget-object v6, p0, Lda/h;->e:Landroid/content/Context;

    .line 321
    .line 322
    invoke-direct {v5, v6, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 326
    .line 327
    .line 328
    new-instance v1, Lx9/g0;

    .line 329
    .line 330
    invoke-direct {v1}, Lx9/g0;-><init>()V

    .line 331
    .line 332
    .line 333
    iput-object v1, p0, Lua/q8;->l:Lx9/g0;

    .line 334
    .line 335
    iget-object v5, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 336
    .line 337
    invoke-virtual {v5, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 338
    .line 339
    .line 340
    const v1, 0x7f0b0481

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, v1}, Lda/h;->i(I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 348
    .line 349
    iput-object v1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 350
    .line 351
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 355
    .line 356
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->hasFixedSize()Z

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Lua/q8;->B()V

    .line 360
    .line 361
    .line 362
    new-instance v0, Lx9/n;

    .line 363
    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-direct {v0, v1}, Lx9/n;-><init>(Landroid/content/Context;)V

    .line 369
    .line 370
    .line 371
    iput-object v0, p0, Lua/q8;->n:Lx9/n;

    .line 372
    .line 373
    iget-object v1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 374
    .line 375
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 376
    .line 377
    .line 378
    const v0, 0x7f0b04e0

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 386
    .line 387
    iput-object v0, p0, Lua/q8;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 388
    .line 389
    const v0, 0x7f0b03d7

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Landroid/widget/LinearLayout;

    .line 397
    .line 398
    iput-object v0, p0, Lua/q8;->r:Landroid/widget/LinearLayout;

    .line 399
    .line 400
    new-instance v1, Lua/b8;

    .line 401
    .line 402
    const/4 v5, 0x2

    .line 403
    invoke-direct {v1, p0, v5}, Lua/b8;-><init>(Lua/q8;I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    .line 408
    .line 409
    const v0, 0x7f0b03d8

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    check-cast v0, Landroid/widget/TextView;

    .line 417
    .line 418
    iget-object v1, p0, Lua/q8;->r:Landroid/widget/LinearLayout;

    .line 419
    .line 420
    new-instance v5, Lua/z7;

    .line 421
    .line 422
    const/4 v6, 0x3

    .line 423
    invoke-direct {v5, v0, v6}, Lua/z7;-><init>(Landroid/widget/TextView;I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 427
    .line 428
    .line 429
    iget-object v0, p0, Lua/q8;->r:Landroid/widget/LinearLayout;

    .line 430
    .line 431
    new-instance v1, Lua/a8;

    .line 432
    .line 433
    const/4 v5, 0x3

    .line 434
    invoke-direct {v1, p0, v5}, Lua/a8;-><init>(Lua/q8;I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 438
    .line 439
    .line 440
    const v0, 0x7f0b0391

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    check-cast v0, Landroid/widget/LinearLayout;

    .line 448
    .line 449
    iput-object v0, p0, Lua/q8;->s:Landroid/widget/LinearLayout;

    .line 450
    .line 451
    new-instance v1, Lua/b8;

    .line 452
    .line 453
    const/4 v5, 0x4

    .line 454
    invoke-direct {v1, p0, v5}, Lua/b8;-><init>(Lua/q8;I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    .line 459
    .line 460
    const v0, 0x7f0b0392

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    check-cast v0, Landroid/widget/TextView;

    .line 468
    .line 469
    iget-object v1, p0, Lua/q8;->s:Landroid/widget/LinearLayout;

    .line 470
    .line 471
    new-instance v5, Lua/z7;

    .line 472
    .line 473
    const/4 v6, 0x4

    .line 474
    invoke-direct {v5, v0, v6}, Lua/z7;-><init>(Landroid/widget/TextView;I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 478
    .line 479
    .line 480
    iget-object v0, p0, Lua/q8;->s:Landroid/widget/LinearLayout;

    .line 481
    .line 482
    new-instance v1, Lua/a8;

    .line 483
    .line 484
    const/4 v5, 0x5

    .line 485
    invoke-direct {v1, p0, v5}, Lua/a8;-><init>(Lua/q8;I)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 489
    .line 490
    .line 491
    const v0, 0x7f0b0395

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    check-cast v0, Landroid/widget/LinearLayout;

    .line 499
    .line 500
    iput-object v0, p0, Lua/q8;->v:Landroid/widget/LinearLayout;

    .line 501
    .line 502
    new-instance v1, Lua/b8;

    .line 503
    .line 504
    invoke-direct {v1, p0, v5}, Lua/b8;-><init>(Lua/q8;I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    .line 509
    .line 510
    const v0, 0x7f0b0396

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    check-cast v0, Landroid/widget/TextView;

    .line 518
    .line 519
    iget-object v1, p0, Lua/q8;->v:Landroid/widget/LinearLayout;

    .line 520
    .line 521
    new-instance v5, Lua/z7;

    .line 522
    .line 523
    const/4 v6, 0x5

    .line 524
    invoke-direct {v5, v0, v6}, Lua/z7;-><init>(Landroid/widget/TextView;I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 528
    .line 529
    .line 530
    iget-object v0, p0, Lua/q8;->v:Landroid/widget/LinearLayout;

    .line 531
    .line 532
    new-instance v1, Lua/a8;

    .line 533
    .line 534
    const/4 v5, 0x6

    .line 535
    invoke-direct {v1, p0, v5}, Lua/a8;-><init>(Lua/q8;I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 539
    .line 540
    .line 541
    const v0, 0x7f0b0388

    .line 542
    .line 543
    .line 544
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    check-cast v0, Landroid/widget/LinearLayout;

    .line 549
    .line 550
    iput-object v0, p0, Lua/q8;->x:Landroid/widget/LinearLayout;

    .line 551
    .line 552
    new-instance v1, Lua/b8;

    .line 553
    .line 554
    invoke-direct {v1, p0, v5}, Lua/b8;-><init>(Lua/q8;I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    .line 559
    .line 560
    const v0, 0x7f0b0389

    .line 561
    .line 562
    .line 563
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Landroid/widget/TextView;

    .line 568
    .line 569
    iget-object v1, p0, Lua/q8;->x:Landroid/widget/LinearLayout;

    .line 570
    .line 571
    new-instance v5, Lua/z7;

    .line 572
    .line 573
    const/4 v6, 0x0

    .line 574
    invoke-direct {v5, v0, v6}, Lua/z7;-><init>(Landroid/widget/TextView;I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 578
    .line 579
    .line 580
    iget-object v0, p0, Lua/q8;->x:Landroid/widget/LinearLayout;

    .line 581
    .line 582
    new-instance v1, Lua/a8;

    .line 583
    .line 584
    const/4 v5, 0x0

    .line 585
    invoke-direct {v1, p0, v5}, Lua/a8;-><init>(Lua/q8;I)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 589
    .line 590
    .line 591
    const v0, 0x7f0b03a7

    .line 592
    .line 593
    .line 594
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    check-cast v0, Landroid/widget/LinearLayout;

    .line 599
    .line 600
    iput-object v0, p0, Lua/q8;->w:Landroid/widget/LinearLayout;

    .line 601
    .line 602
    new-instance v1, Lua/b8;

    .line 603
    .line 604
    invoke-direct {v1, p0, v5}, Lua/b8;-><init>(Lua/q8;I)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    .line 609
    .line 610
    const v0, 0x7f0b03a9

    .line 611
    .line 612
    .line 613
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    check-cast v0, Landroid/widget/TextView;

    .line 618
    .line 619
    iget-object v1, p0, Lua/q8;->w:Landroid/widget/LinearLayout;

    .line 620
    .line 621
    new-instance v5, Lua/z7;

    .line 622
    .line 623
    const/4 v6, 0x1

    .line 624
    invoke-direct {v5, v0, v6}, Lua/z7;-><init>(Landroid/widget/TextView;I)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 628
    .line 629
    .line 630
    iget-object v0, p0, Lua/q8;->w:Landroid/widget/LinearLayout;

    .line 631
    .line 632
    new-instance v1, Lua/a8;

    .line 633
    .line 634
    const/4 v5, 0x1

    .line 635
    invoke-direct {v1, p0, v5}, Lua/a8;-><init>(Lua/q8;I)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 639
    .line 640
    .line 641
    const v0, 0x7f0b036c

    .line 642
    .line 643
    .line 644
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    check-cast v0, Landroid/widget/LinearLayout;

    .line 649
    .line 650
    iput-object v0, p0, Lua/q8;->t:Landroid/widget/LinearLayout;

    .line 651
    .line 652
    const v0, 0x7f0b036d

    .line 653
    .line 654
    .line 655
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    check-cast v0, Landroid/widget/TextView;

    .line 660
    .line 661
    iget-object v1, p0, Lua/q8;->t:Landroid/widget/LinearLayout;

    .line 662
    .line 663
    new-instance v5, Lua/b8;

    .line 664
    .line 665
    invoke-direct {v5, p0, v6}, Lua/b8;-><init>(Lua/q8;I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    .line 670
    .line 671
    iget-object v1, p0, Lua/q8;->t:Landroid/widget/LinearLayout;

    .line 672
    .line 673
    new-instance v5, Lua/z7;

    .line 674
    .line 675
    const/4 v6, 0x2

    .line 676
    invoke-direct {v5, v0, v6}, Lua/z7;-><init>(Landroid/widget/TextView;I)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 680
    .line 681
    .line 682
    iget-object v0, p0, Lua/q8;->t:Landroid/widget/LinearLayout;

    .line 683
    .line 684
    new-instance v1, Lua/a8;

    .line 685
    .line 686
    const/4 v5, 0x2

    .line 687
    invoke-direct {v1, p0, v5}, Lua/a8;-><init>(Lua/q8;I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 691
    .line 692
    .line 693
    new-instance v0, Lx9/i3;

    .line 694
    .line 695
    invoke-direct {v0}, Lx9/i3;-><init>()V

    .line 696
    .line 697
    .line 698
    iput-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 699
    .line 700
    new-instance v1, Lx9/w3;

    .line 701
    .line 702
    const-string v5, "\u9000\u51fa\u591a\u9009"

    .line 703
    .line 704
    invoke-direct {v1, v5, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    iget-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 711
    .line 712
    new-instance v1, Lx9/w3;

    .line 713
    .line 714
    const-string v5, "\u5168\u9009"

    .line 715
    .line 716
    invoke-direct {v1, v5, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    iget-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 723
    .line 724
    new-instance v1, Lx9/w3;

    .line 725
    .line 726
    const-string v5, "\u4e0d\u9009"

    .line 727
    .line 728
    invoke-direct {v1, v5, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 732
    .line 733
    .line 734
    iget-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 735
    .line 736
    new-instance v1, Lx9/w3;

    .line 737
    .line 738
    const-string v5, "\u5220\u9664"

    .line 739
    .line 740
    invoke-direct {v1, v5, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 744
    .line 745
    .line 746
    iget-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 747
    .line 748
    new-instance v1, Lx9/w3;

    .line 749
    .line 750
    const-string v5, "\u590d\u5236"

    .line 751
    .line 752
    invoke-direct {v1, v5, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    iget-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 759
    .line 760
    new-instance v1, Lx9/w3;

    .line 761
    .line 762
    const-string v5, "\u526a\u5207"

    .line 763
    .line 764
    invoke-direct {v1, v5, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    iget-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 771
    .line 772
    new-instance v1, Lx9/w3;

    .line 773
    .line 774
    const-string v5, "\u5b89\u88c5"

    .line 775
    .line 776
    invoke-direct {v1, v5, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    iget-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 783
    .line 784
    new-instance v1, Lx9/w3;

    .line 785
    .line 786
    const-string v5, "\u538b\u7f29"

    .line 787
    .line 788
    invoke-direct {v1, v5, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 792
    .line 793
    .line 794
    iget-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 795
    .line 796
    new-instance v1, Lx9/w3;

    .line 797
    .line 798
    const-string v5, "\u6587\u4ef6"

    .line 799
    .line 800
    invoke-direct {v1, v5, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 804
    .line 805
    .line 806
    iget-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 807
    .line 808
    new-instance v1, Lx9/w3;

    .line 809
    .line 810
    const-string v5, "\u5e94\u7528"

    .line 811
    .line 812
    invoke-direct {v1, v5, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 816
    .line 817
    .line 818
    iget-object v0, p0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 819
    .line 820
    new-instance v1, Lua/p8;

    .line 821
    .line 822
    invoke-direct {v1}, Lua/p8;-><init>()V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 826
    .line 827
    .line 828
    iget-object v0, p0, Lua/q8;->j:Lx9/i3;

    .line 829
    .line 830
    new-instance v1, Lua/d8;

    .line 831
    .line 832
    const/4 v3, 0x0

    .line 833
    invoke-direct {v1, p0, v3}, Lua/d8;-><init>(Lua/q8;I)V

    .line 834
    .line 835
    .line 836
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 837
    .line 838
    iget-object v0, p0, Lua/q8;->i:Lx9/n4;

    .line 839
    .line 840
    new-instance v1, Lua/d8;

    .line 841
    .line 842
    const/4 v3, 0x1

    .line 843
    invoke-direct {v1, p0, v3}, Lua/d8;-><init>(Lua/q8;I)V

    .line 844
    .line 845
    .line 846
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 847
    .line 848
    iget-object v0, p0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 849
    .line 850
    new-instance v1, Lua/d8;

    .line 851
    .line 852
    const/4 v3, 0x2

    .line 853
    invoke-direct {v1, p0, v3}, Lua/d8;-><init>(Lua/q8;I)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 857
    .line 858
    .line 859
    iget-object v0, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 860
    .line 861
    new-instance v1, Lua/j8;

    .line 862
    .line 863
    invoke-direct {v1}, Lua/j8;-><init>()V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 867
    .line 868
    .line 869
    iget-object v0, p0, Lua/q8;->l:Lx9/g0;

    .line 870
    .line 871
    new-instance v1, Lua/d8;

    .line 872
    .line 873
    const/4 v3, 0x3

    .line 874
    invoke-direct {v1, p0, v3}, Lua/d8;-><init>(Lua/q8;I)V

    .line 875
    .line 876
    .line 877
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 878
    .line 879
    iget-object v0, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 880
    .line 881
    new-instance v1, Lua/d8;

    .line 882
    .line 883
    const/4 v3, 0x4

    .line 884
    invoke-direct {v1, p0, v3}, Lua/d8;-><init>(Lua/q8;I)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 888
    .line 889
    .line 890
    iget-object v0, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 891
    .line 892
    new-instance v1, Lua/k8;

    .line 893
    .line 894
    invoke-direct {v1, p0}, Lua/k8;-><init>(Lua/q8;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 898
    .line 899
    .line 900
    iget-object v0, p0, Lua/q8;->n:Lx9/n;

    .line 901
    .line 902
    new-instance v1, Lua/d8;

    .line 903
    .line 904
    const/4 v3, 0x5

    .line 905
    invoke-direct {v1, p0, v3}, Lua/d8;-><init>(Lua/q8;I)V

    .line 906
    .line 907
    .line 908
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 909
    .line 910
    new-instance v1, Lua/d8;

    .line 911
    .line 912
    const/4 v3, 0x6

    .line 913
    invoke-direct {v1, p0, v3}, Lua/d8;-><init>(Lua/q8;I)V

    .line 914
    .line 915
    .line 916
    iput-object v1, v0, Lc6/g;->f:Lc6/f;

    .line 917
    .line 918
    iget-object v0, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 919
    .line 920
    new-instance v1, Lua/d8;

    .line 921
    .line 922
    const/4 v3, 0x7

    .line 923
    invoke-direct {v1, p0, v3}, Lua/d8;-><init>(Lua/q8;I)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 927
    .line 928
    .line 929
    const v0, 0x7f0b058e

    .line 930
    .line 931
    .line 932
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 937
    .line 938
    iput-object v0, p0, Lua/q8;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 939
    .line 940
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 941
    .line 942
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 943
    .line 944
    invoke-direct {v1, v3, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 948
    .line 949
    .line 950
    new-instance v0, Lx9/l5;

    .line 951
    .line 952
    invoke-direct {v0}, Lx9/l5;-><init>()V

    .line 953
    .line 954
    .line 955
    iput-object v0, p0, Lua/q8;->E:Lx9/l5;

    .line 956
    .line 957
    iget-object v1, p0, Lua/q8;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 958
    .line 959
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 960
    .line 961
    .line 962
    iget-object v0, p0, Lua/q8;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 963
    .line 964
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 965
    .line 966
    .line 967
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lua/q8;->H()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lua/q8;->l:Lx9/g0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lua/q8;->l:Lx9/g0;

    .line 18
    .line 19
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int/2addr v3, v2

    .line 24
    invoke-virtual {v0, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lx9/w3;

    .line 29
    .line 30
    iget-object v2, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Lua/q8;->v(Lx9/w3;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 45
    .line 46
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    new-instance v3, Lx9/w3;

    .line 57
    .line 58
    const-string v4, "\u5185\u90e8\u5b58\u50a8"

    .line 59
    .line 60
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v3, v4, v0, v2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lua/q8;->l:Lx9/g0;

    .line 68
    .line 69
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lua/q8;->l:Lx9/g0;

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v3, v1}, Lua/q8;->v(Lx9/w3;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final o(Z)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    iget-object v2, p0, Lua/q8;->L:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lx9/w3;

    .line 18
    .line 19
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "/\u538b\u7f29\u5305"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lua/q8;->B:Lx9/w3;

    .line 42
    .line 43
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    new-instance v1, Lha/ke;

    .line 46
    .line 47
    iget-object v2, p0, Lda/h;->f:Landroid/app/Activity;

    .line 48
    .line 49
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 50
    .line 51
    new-instance v4, Lha/h2;

    .line 52
    .line 53
    const/16 v5, 0x8

    .line 54
    .line 55
    invoke-direct {v4, p0, p1, v5}, Lha/h2;-><init>(Ljava/lang/Object;ZI)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2, v3, v0, v4}, Lha/ke;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lha/je;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    const/16 p2, 0x3e9

    .line 10
    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 p2, 0x1e

    .line 16
    .line 17
    if-lt p1, p2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/j0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p1, p2}, Lm0/h;->n(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_1
    const/16 p2, 0x1f40

    .line 43
    .line 44
    if-ne p1, p2, :cond_3

    .line 45
    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 p2, 0x13

    .line 57
    .line 58
    if-lt p1, p2, :cond_3

    .line 59
    .line 60
    sget-object p1, Lcom/yunpan/appmanage/util/a0;->a:Lcom/yunpan/appmanage/util/b0;

    .line 61
    .line 62
    iget-object p2, p0, Lua/q8;->l:Lx9/g0;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lx9/w3;

    .line 70
    .line 71
    iget-object p2, p2, Lx9/w3;->b:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p1, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;

    .line 82
    .line 83
    invoke-virtual {v2, p2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :try_start_0
    new-instance p2, Ljava/io/FileWriter;

    .line 87
    .line 88
    iget-object v1, p1, Lcom/yunpan/appmanage/util/b0;->a:Ljava/io/File;

    .line 89
    .line 90
    invoke-direct {p2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Ljava/io/BufferedWriter;

    .line 94
    .line 95
    invoke-direct {v1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p1, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;

    .line 99
    .line 100
    invoke-virtual {p1}, Lz7/p;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    :goto_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lda/h;->e:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-static {p1, p2}, Lm0/h;->n(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Lx9/w3;

    .line 136
    .line 137
    iget-object v4, p0, Lda/h;->e:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    .line 153
    const/16 v1, 0x15

    .line 154
    .line 155
    const/4 v3, 0x0

    .line 156
    if-lt p3, v1, :cond_2

    .line 157
    .line 158
    new-instance p3, Lv3/f;

    .line 159
    .line 160
    invoke-static {p2}, Ld2/a;->m(Landroid/net/Uri;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {p2, v1}, Ld2/a;->i(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    const/16 v2, 0xd

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    move-object v1, p3

    .line 172
    invoke-direct/range {v1 .. v6}, Lv3/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 173
    .line 174
    .line 175
    move-object v3, p3

    .line 176
    :cond_2
    iget-object p2, p0, Lua/q8;->l:Lx9/g0;

    .line 177
    .line 178
    invoke-virtual {p2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    check-cast p2, Lx9/w3;

    .line 183
    .line 184
    iget-object p2, p2, Lx9/w3;->b:Ljava/lang/String;

    .line 185
    .line 186
    invoke-direct {p1, v3, p2}, Lx9/w3;-><init>(Lv3/f;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1, v0}, Lua/q8;->v(Lx9/w3;Z)V

    .line 190
    .line 191
    .line 192
    :cond_3
    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/q8;->P:Landroid/media/SoundPool;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lua/q8;->P:Landroid/media/SoundPool;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onReceiveEvent(Lja/c;)V
    .locals 13
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p1, Lja/c;->a:I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v1, v2, :cond_e

    .line 6
    .line 7
    if-eq v1, v0, :cond_e

    .line 8
    .line 9
    const/4 v3, -0x2

    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    const/16 v3, 0xc

    .line 15
    .line 16
    if-ne v1, v3, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lua/q8;->n:Lx9/n;

    .line 19
    .line 20
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-int/2addr p1, v2

    .line 25
    :goto_0
    if-ltz p1, :cond_10

    .line 26
    .line 27
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 28
    .line 29
    iget-object v2, p0, Lua/q8;->n:Lx9/n;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lx9/w3;

    .line 36
    .line 37
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lua/q8;->n:Lx9/n;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lc6/g;->C(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    :cond_1
    add-int/2addr p1, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/16 v3, 0x8

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    if-ne v1, v3, :cond_a

    .line 59
    .line 60
    new-instance v1, Ljava/io/File;

    .line 61
    .line 62
    iget-object p1, p1, Lja/c;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 83
    .line 84
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->M:Z

    .line 85
    .line 86
    if-eqz v5, :cond_3

    .line 87
    .line 88
    iget-object v6, p0, Lua/q8;->P:Landroid/media/SoundPool;

    .line 89
    .line 90
    iget v7, p0, Lua/q8;->R:I

    .line 91
    .line 92
    const/high16 v9, 0x3f800000    # 1.0f

    .line 93
    .line 94
    const/4 v10, 0x0

    .line 95
    const/high16 v8, 0x3f800000    # 1.0f

    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    const/high16 v12, 0x3f800000    # 1.0f

    .line 99
    .line 100
    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object v5, p0, Lua/q8;->l:Lx9/g0;

    .line 104
    .line 105
    invoke-virtual {v5}, Lc6/g;->b()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    const-string v6, "\u63a5\u5230\u6587\u4ef6\uff1a"

    .line 110
    .line 111
    if-ne v5, v2, :cond_6

    .line 112
    .line 113
    iget-object v5, p0, Lua/q8;->l:Lx9/g0;

    .line 114
    .line 115
    invoke-virtual {v5, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lx9/w3;

    .line 120
    .line 121
    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 122
    .line 123
    const-string v7, "\u641c\u7d22\u7ed3\u679c\uff1a\u5b89\u88c5\u5305"

    .line 124
    .line 125
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_6

    .line 130
    .line 131
    invoke-static {v3}, Lif/a;->X(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_6

    .line 136
    .line 137
    iget-object p1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lua/q8;->n:Lx9/n;

    .line 148
    .line 149
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    sub-int/2addr p1, v2

    .line 154
    :goto_1
    if-ltz p1, :cond_5

    .line 155
    .line 156
    iget-object v2, p0, Lua/q8;->n:Lx9/n;

    .line 157
    .line 158
    invoke-virtual {v2, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lx9/w3;

    .line 163
    .line 164
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_4

    .line 171
    .line 172
    iget-object v2, p0, Lua/q8;->n:Lx9/n;

    .line 173
    .line 174
    invoke-virtual {v2, p1}, Lc6/g;->C(I)V

    .line 175
    .line 176
    .line 177
    :cond_4
    add-int/2addr p1, v0

    .line 178
    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p1, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lua/q8;->n:Lx9/n;

    .line 187
    .line 188
    new-instance v0, Lx9/w3;

    .line 189
    .line 190
    invoke-direct {v0, v1}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v4, v0}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 202
    .line 203
    invoke-virtual {p1, v4}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_5

    .line 207
    .line 208
    :cond_6
    iget-object v5, p0, Lua/q8;->l:Lx9/g0;

    .line 209
    .line 210
    invoke-virtual {v5}, Lc6/g;->b()I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-lez v5, :cond_9

    .line 215
    .line 216
    iget-object v5, p0, Lua/q8;->l:Lx9/g0;

    .line 217
    .line 218
    invoke-static {v5, v2}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Lx9/w3;

    .line 223
    .line 224
    iget-object v5, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_9

    .line 231
    .line 232
    iget-object p1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 233
    .line 234
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lua/q8;->n:Lx9/n;

    .line 243
    .line 244
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    sub-int/2addr p1, v2

    .line 249
    :goto_2
    if-ltz p1, :cond_8

    .line 250
    .line 251
    iget-object v2, p0, Lua/q8;->n:Lx9/n;

    .line 252
    .line 253
    invoke-virtual {v2, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    check-cast v2, Lx9/w3;

    .line 258
    .line 259
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_7

    .line 266
    .line 267
    iget-object v2, p0, Lua/q8;->n:Lx9/n;

    .line 268
    .line 269
    invoke-virtual {v2, p1}, Lc6/g;->C(I)V

    .line 270
    .line 271
    .line 272
    :cond_7
    add-int/2addr p1, v0

    .line 273
    goto :goto_2

    .line 274
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-static {p1, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lua/q8;->n:Lx9/n;

    .line 290
    .line 291
    new-instance v0, Lx9/w3;

    .line 292
    .line 293
    invoke-direct {v0, v1}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v4, v0}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 300
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 305
    .line 306
    invoke-virtual {p1, v4}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_5

    .line 310
    .line 311
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v1, "\n\u4f20\u5230\u76ee\u5f55\uff1a"

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-static {p1, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_5

    .line 335
    .line 336
    :cond_a
    const/16 v0, 0x9

    .line 337
    .line 338
    if-ne v1, v0, :cond_c

    .line 339
    .line 340
    iget-object v0, p0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 346
    .line 347
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lua/q8;->T:Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 351
    .line 352
    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/view/HiveProgressView;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p1, Lja/c;->d:Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_b

    .line 362
    .line 363
    const v1, 0x7f08029f

    .line 364
    .line 365
    .line 366
    const-string v3, "\u65e0\u6587\u4ef6"

    .line 367
    .line 368
    invoke-virtual {p0, v3, v1, v2}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_b
    const/4 v1, 0x0

    .line 373
    invoke-virtual {p0, v1, v4, v4}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 374
    .line 375
    .line 376
    :goto_3
    iget-object v1, p0, Lua/q8;->l:Lx9/g0;

    .line 377
    .line 378
    iget-object p1, p1, Lja/c;->c:Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-virtual {v1, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 381
    .line 382
    .line 383
    iget-object p1, p0, Lua/q8;->n:Lx9/n;

    .line 384
    .line 385
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 386
    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_c
    const/16 p1, 0xa

    .line 390
    .line 391
    if-ne v1, p1, :cond_10

    .line 392
    .line 393
    iget-object p1, p0, Lua/q8;->l:Lx9/g0;

    .line 394
    .line 395
    invoke-static {p1, v2}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    check-cast p1, Lx9/w3;

    .line 400
    .line 401
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-nez p1, :cond_10

    .line 408
    .line 409
    iget-object p1, p0, Lua/q8;->l:Lx9/g0;

    .line 410
    .line 411
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    if-lez p1, :cond_d

    .line 416
    .line 417
    iget-object p1, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 418
    .line 419
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 420
    .line 421
    .line 422
    :cond_d
    iget-object p1, p0, Lua/q8;->l:Lx9/g0;

    .line 423
    .line 424
    invoke-static {p1, v2}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    check-cast p1, Lx9/w3;

    .line 429
    .line 430
    invoke-virtual {p0, p1, v4}, Lua/q8;->v(Lx9/w3;Z)V

    .line 431
    .line 432
    .line 433
    goto :goto_5

    .line 434
    :cond_e
    :goto_4
    if-ne v1, v2, :cond_f

    .line 435
    .line 436
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 437
    .line 438
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 443
    .line 444
    .line 445
    move-result p1

    .line 446
    if-eqz p1, :cond_f

    .line 447
    .line 448
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 449
    .line 450
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 451
    .line 452
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 453
    .line 454
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    if-eqz p1, :cond_f

    .line 459
    .line 460
    new-instance p1, Lha/z6;

    .line 461
    .line 462
    iget-object v2, p0, Lda/h;->f:Landroid/app/Activity;

    .line 463
    .line 464
    new-instance v7, Ls5/c;

    .line 465
    .line 466
    const/16 v0, 0x10

    .line 467
    .line 468
    invoke-direct {v7, v0}, Ls5/c;-><init>(I)V

    .line 469
    .line 470
    .line 471
    const-string v5, "\u77e5\u9053\u4e86"

    .line 472
    .line 473
    const-string v6, ""

    .line 474
    .line 475
    const-string v3, "\u6b64\u8bbe\u5907\u6ca1\u6709\u5185\u7f6eSD\u5361\uff0c\u4e5f\u6ca1\u6709\u63d2\u5165U\u76d8\u3001TF\u5361\n\u5c06\u65e0\u6cd5\u4f7f\u7528\u3010\u6587\u4ef6\u7ba1\u7406\u3011\u3010\u6587\u4ef6\u4e0b\u8f7d\u3011\u7b49\u529f\u80fd"

    .line 476
    .line 477
    const-string v4, ""

    .line 478
    .line 479
    move-object v0, p1

    .line 480
    move-object v1, v2

    .line 481
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 485
    .line 486
    .line 487
    :cond_f
    invoke-virtual {p0}, Lua/q8;->H()V

    .line 488
    .line 489
    .line 490
    :cond_10
    :goto_5
    return-void
.end method

.method public onReceiveMsg(Lja/e;)V
    .locals 5
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 4
    iget-object v0, p1, Lja/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {v3}, Lc6/g;->b()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 6
    iget-object v3, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {v3, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx9/w3;

    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    iget-object v4, p1, Lja/e;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {v3}, Lc6/g;->b()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 8
    iget-object v3, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 9
    :cond_0
    iget-object v3, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {v3, v0}, Lc6/g;->C(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p1, Lja/e;->b:Lx9/w3;

    if-eqz v0, :cond_3

    .line 11
    iget-object v3, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {v3, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iget-object v3, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {v3}, Lc6/g;->b()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 13
    iget-object v0, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {v0}, Lc6/g;->b()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 14
    iget-object v0, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 15
    :cond_3
    iget-object p1, p1, Lja/e;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    :goto_2
    iget-object v0, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {v0}, Lc6/g;->b()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 17
    iget-object v0, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx9/w3;

    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object p1, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public onReceiveMsg(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "\u653e\u5f00\u83dc\u5355\u952e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lua/q8;->M:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lua/q8;->n:Lx9/n;

    invoke-virtual {v0}, Lc6/g;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    iget p1, p0, Lua/q8;->M:I

    invoke-virtual {p0, p1}, Lua/q8;->D(I)V

    :cond_0
    return-void
.end method

.method public final p(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/q8;->n:Lx9/n;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1, v0, v0}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lx9/w3;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    const-string v2, "\u6536\u85cf\u680f"

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    invoke-direct {v0, v2, v3, v1}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lua/q8;->l:Lx9/g0;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lua/q8;->n:Lx9/n;

    .line 47
    .line 48
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->d()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lua/q8;->B:Lx9/w3;

    .line 4
    .line 5
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "."

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v5, -0x1

    .line 42
    if-ne v3, v5, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :goto_0
    invoke-static {v3, v2, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    const-string p1, "\u6587\u4ef6\u5939\u5df2\u5b58\u5728,\u8bf7\u5148\u5220\u9664\u76f8\u540c\u547d\u540d\u7684\u6587\u4ef6\u5939"

    .line 77
    .line 78
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    new-instance v2, Lgf/g;

    .line 83
    .line 84
    const/16 v3, 0xd

    .line 85
    .line 86
    invoke-direct {v2, v3}, Lgf/g;-><init>(I)V

    .line 87
    .line 88
    .line 89
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 90
    .line 91
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/w;->r0:Z

    .line 92
    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    new-instance v3, Lca/a;

    .line 96
    .line 97
    invoke-direct {v3, v0, v1, p1, v2}, Lca/a;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lgf/g;)V

    .line 98
    .line 99
    .line 100
    new-instance p1, Lmc/c;

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-direct {p1, v0, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    new-instance v2, Lca/a;

    .line 122
    .line 123
    invoke-direct {v2, v0, v1, p1}, Lca/a;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance p1, Lmc/c;

    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-direct {p1, v0, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    :goto_1
    new-instance v0, Lha/h3;

    .line 147
    .line 148
    const/16 v2, 0x11

    .line 149
    .line 150
    invoke-direct {v0, p0, v2, v1}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lua/q8;->L:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    check-cast v3, Lx9/w3;

    .line 11
    .line 12
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string p1, "\u6587\u4ef6\u672c\u8eab\u5c31\u5728\u5f53\u524d\u76ee\u5f55"

    .line 28
    .line 29
    invoke-static {p1, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lua/q8;->K:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v3, "\u5df2\u526a\u5207"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lx9/w3;

    .line 70
    .line 71
    iget-boolean v5, v4, Lx9/w3;->c:Z

    .line 72
    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    const-string p1, "\u62d2\u7edd\u6b64\u5371\u9669\u64cd\u4f5c"

    .line 84
    .line 85
    invoke-static {p1, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 95
    .line 96
    iget-object v4, p0, Lua/q8;->l:Lx9/g0;

    .line 97
    .line 98
    const/4 v5, 0x1

    .line 99
    invoke-static {v4, v5, v0}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 100
    .line 101
    .line 102
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 103
    .line 104
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->o0:Z

    .line 105
    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    iget-object v0, p0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 109
    .line 110
    const/16 v4, 0x8

    .line 111
    .line 112
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lua/q8;->K:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v0, p0, Lua/q8;->g:Lha/u9;

    .line 121
    .line 122
    const-string v4, "\u62f7\u8d1d\u4e2d"

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Lha/u9;->c(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 128
    .line 129
    invoke-direct {v0}, Lcom/yunpan/appmanage/bean/FileCopyBean;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object v4, p0, Lua/q8;->K:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    iput-boolean v3, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->isDelete:Z

    .line 151
    .line 152
    new-instance v3, Ljava/io/File;

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lx9/w3;

    .line 159
    .line 160
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 161
    .line 162
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 170
    .line 171
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    .line 172
    .line 173
    iput-object p1, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 174
    .line 175
    const-string v1, "/"

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_4

    .line 182
    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v2, v1, p1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 195
    .line 196
    :cond_4
    iget-object p1, p0, Lua/q8;->g:Lha/u9;

    .line 197
    .line 198
    const-string v1, "\u6bd4\u5bf9\u4e2d"

    .line 199
    .line 200
    invoke-virtual {p1, v1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    new-instance p1, Lcom/yunpan/appmanage/util/m;

    .line 204
    .line 205
    const/4 v1, 0x0

    .line 206
    invoke-direct {p1, v1}, Lcom/yunpan/appmanage/util/m;-><init>(I)V

    .line 207
    .line 208
    .line 209
    new-instance v1, Lua/f8;

    .line 210
    .line 211
    const/4 v2, 0x0

    .line 212
    invoke-direct {v1, p0, v0, v2}, Lua/f8;-><init>(Lua/q8;Lcom/yunpan/appmanage/bean/FileCopyBean;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v0, v1}, Lcom/yunpan/appmanage/util/m;->a(Lcom/yunpan/appmanage/bean/FileCopyBean;Lea/b;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public final s(Lcom/yunpan/appmanage/bean/FileCopyBean;)V
    .locals 3

    .line 1
    new-instance v0, Lha/s5;

    .line 2
    .line 3
    iget-object v1, p0, Lda/h;->f:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lha/s5;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v2, "\u5206\u6790\u4e2d"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v1, Lw/r3;

    .line 26
    .line 27
    invoke-direct {v1}, Lw/r3;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lua/o8;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0, p1}, Lua/o8;-><init>(Lua/q8;Lha/s5;Lcom/yunpan/appmanage/bean/FileCopyBean;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, v1, Lw/r3;->b:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance v0, La2/c0;

    .line 38
    .line 39
    const/16 v2, 0xf

    .line 40
    .line 41
    invoke-direct {v0, v1, v2, p1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v1, Lw/r3;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final t(Lcom/yunpan/appmanage/bean/FileCopyBean;)V
    .locals 3

    .line 1
    new-instance v0, Lha/s5;

    .line 2
    .line 3
    iget-object v1, p0, Lda/h;->f:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lha/s5;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v2, "\u5206\u6790\u4e2d"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lba/i;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, v2}, Lba/i;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lua/o8;

    .line 27
    .line 28
    invoke-direct {v2, p0, v0, p1}, Lua/o8;-><init>(Lua/q8;Lha/s5;Lcom/yunpan/appmanage/bean/FileCopyBean;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, v1, Lba/i;->a:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v0, La2/c0;

    .line 34
    .line 35
    const/16 v2, 0x10

    .line 36
    .line 37
    invoke-direct {v0, v1, v2, p1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, v1, Lba/i;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 43
    .line 44
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lua/q8;->n:Lx9/n;

    .line 8
    .line 9
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lua/q8;->n:Lx9/n;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lx9/w3;

    .line 22
    .line 23
    iget-boolean v3, v2, Lx9/w3;->c:Z

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iput v1, v2, Lx9/w3;->k:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const-string v0, "\u6ca1\u6709\u76ee\u5f55\u65e0\u9700\u7edf\u8ba1"

    .line 42
    .line 43
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object v1, p0, Lua/q8;->g:Lha/u9;

    .line 48
    .line 49
    const-string v2, "\u7edf\u8ba1\u4e2d"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lha/u9;->c(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lmc/c;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lua/t6;

    .line 61
    .line 62
    const/4 v2, 0x6

    .line 63
    invoke-direct {v0, v2}, Lua/t6;-><init>(I)V

    .line 64
    .line 65
    .line 66
    sget v2, Lec/a;->a:I

    .line 67
    .line 68
    const-string v3, "maxConcurrency"

    .line 69
    .line 70
    const v4, 0x7fffffff

    .line 71
    .line 72
    .line 73
    invoke-static {v4, v3}, Ljc/a;->b(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v3, "bufferSize"

    .line 77
    .line 78
    invoke-static {v2, v3}, Ljc/a;->b(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    instance-of v3, v1, Lkc/b;

    .line 82
    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    check-cast v1, Lkc/b;

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    sget-object v0, Lmc/d;->a:Lmc/d;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    new-instance v2, Lmc/n;

    .line 97
    .line 98
    invoke-direct {v2, v1, v0}, Lmc/n;-><init>(Ljava/lang/Object;Lua/t6;)V

    .line 99
    .line 100
    .line 101
    move-object v0, v2

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    new-instance v3, Lmc/g;

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-direct {v3, v1, v0, v2, v4}, Lmc/g;-><init>(Lec/b;Ljava/lang/Object;II)V

    .line 107
    .line 108
    .line 109
    move-object v0, v3

    .line 110
    :goto_1
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v1, Lua/h8;

    .line 125
    .line 126
    invoke-direct {v1, p0}, Lua/h8;-><init>(Lua/q8;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final v(Lx9/w3;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/q8;->n:Lx9/n;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lua/q8;->T:Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/view/HiveProgressView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, v1, v1}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v8, Lua/y7;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v2, v8

    .line 40
    move v3, p2

    .line 41
    move-object v4, p1

    .line 42
    move-object v5, v0

    .line 43
    move-object v6, v1

    .line 44
    invoke-direct/range {v2 .. v7}, Lua/y7;-><init>(ZLx9/w3;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lmc/c;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {p2, v2, v8}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 54
    .line 55
    invoke-virtual {p2, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p2, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    new-instance v8, Lua/q1;

    .line 68
    .line 69
    const/4 v7, 0x1

    .line 70
    move-object v2, v8

    .line 71
    move-object v3, p0

    .line 72
    move-object v4, p1

    .line 73
    move-object v5, v0

    .line 74
    move-object v6, v1

    .line 75
    invoke-direct/range {v2 .. v7}, Lua/q1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v8}, Lec/b;->b(Lec/e;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final x()V
    .locals 6

    .line 1
    iget-object v0, p0, Lua/q8;->E:Lx9/l5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-le v0, v3, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object v4, p0, Lua/q8;->E:Lx9/l5;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lx9/m5;

    .line 19
    .line 20
    iget-object v4, v4, Lx9/m5;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    const-string v5, "\u5b8c\u6210"

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    const-string v5, "\u5931\u8d25"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    return-void

    .line 43
    :cond_1
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lua/q8;->E:Lx9/l5;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lua/q8;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    const/16 v1, 0x8

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lua/q8;->p:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lua/q8;->n:Lx9/n;

    .line 6
    .line 7
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lua/q8;->n:Lx9/n;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lx9/w3;

    .line 20
    .line 21
    iget-boolean v3, v2, Lx9/w3;->i:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iput-boolean v0, v2, Lx9/w3;->i:Z

    .line 26
    .line 27
    iget-object v3, p0, Lua/q8;->n:Lx9/n;

    .line 28
    .line 29
    invoke-virtual {v3, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Lua/q8;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 46
    .line 47
    iget-object v1, p0, Lua/q8;->i:Lx9/n4;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lha/ud;

    .line 2
    .line 3
    iget-object v1, p0, Lda/h;->f:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lha/ud;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lua/i8;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2, p1}, Lua/i8;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lha/ud;->t:Lua/i8;

    .line 20
    .line 21
    iput-object p1, v0, Lha/ud;->i:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, v0, Lha/ud;->g:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v1, "\u4f20\u9001\u5230\u6307\u5b9a\u76ee\u5f55"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lx9/w3;

    .line 31
    .line 32
    const-string v1, "\u6839\u76ee\u5f55"

    .line 33
    .line 34
    const-string v2, ""

    .line 35
    .line 36
    invoke-direct {p1, v1, v2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lha/ud;->j:Lx9/g0;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lha/ud;->a()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
