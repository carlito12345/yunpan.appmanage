.class public final Ld6/a;
.super Landroidx/recyclerview/widget/p0;
.source "SourceFile"


# instance fields
.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Landroidx/recyclerview/widget/u0;

.field public final f:Z

.field public g:Z

.field public h:I

.field public i:Le6/b;

.field public j:Le6/a;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/p0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/recyclerview/widget/u0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/u0;-><init>(Ld6/a;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld6/a;->e:Landroidx/recyclerview/widget/u0;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Ld6/a;->f:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Ld6/a;->g:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld6/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lue/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iput-object p1, p0, Ld6/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    iget-object v0, p0, Ld6/a;->e:Landroidx/recyclerview/widget/u0;

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    if-ne v1, p1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_1
    iget-object v2, v0, Landroidx/recyclerview/widget/u0;->B:Landroidx/recyclerview/widget/l0;

    .line 26
    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/v1;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/c2;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/a2;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Landroidx/recyclerview/widget/u0;->p:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    add-int/lit8 v3, v3, -0x1

    .line 49
    .line 50
    :goto_0
    const/4 v4, 0x0

    .line 51
    if-ltz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroidx/recyclerview/widget/s0;

    .line 58
    .line 59
    iget-object v5, v4, Landroidx/recyclerview/widget/s0;->g:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 62
    .line 63
    .line 64
    iget-object v5, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    iget-object v4, v4, Landroidx/recyclerview/widget/s0;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 67
    .line 68
    iget-object v6, v0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 69
    .line 70
    invoke-virtual {v6, v5, v4}, Ld6/a;->e(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v3, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    iput-object v1, v0, Landroidx/recyclerview/widget/u0;->x:Landroid/view/View;

    .line 81
    .line 82
    const/4 v3, -0x1

    .line 83
    iput v3, v0, Landroidx/recyclerview/widget/u0;->y:I

    .line 84
    .line 85
    iget-object v3, v0, Landroidx/recyclerview/widget/u0;->t:Landroid/view/VelocityTracker;

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 90
    .line 91
    .line 92
    iput-object v1, v0, Landroidx/recyclerview/widget/u0;->t:Landroid/view/VelocityTracker;

    .line 93
    .line 94
    :cond_3
    iget-object v3, v0, Landroidx/recyclerview/widget/u0;->A:Landroidx/recyclerview/widget/q0;

    .line 95
    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    iput-boolean v4, v3, Landroidx/recyclerview/widget/q0;->a:Z

    .line 99
    .line 100
    iput-object v1, v0, Landroidx/recyclerview/widget/u0;->A:Landroidx/recyclerview/widget/q0;

    .line 101
    .line 102
    :cond_4
    iget-object v3, v0, Landroidx/recyclerview/widget/u0;->z:Lw/i;

    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    iput-object v1, v0, Landroidx/recyclerview/widget/u0;->z:Lw/i;

    .line 107
    .line 108
    :cond_5
    iput-object p1, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const v1, 0x7f070268

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    iput v1, v0, Landroidx/recyclerview/widget/u0;->f:F

    .line 122
    .line 123
    const v1, 0x7f070267

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iput p1, v0, Landroidx/recyclerview/widget/u0;->g:F

    .line 131
    .line 132
    iget-object p1, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput p1, v0, Landroidx/recyclerview/widget/u0;->q:I

    .line 147
    .line 148
    iget-object p1, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/v1;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/c2;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/a2;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Landroidx/recyclerview/widget/q0;

    .line 164
    .line 165
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/q0;-><init>(Landroidx/recyclerview/widget/u0;)V

    .line 166
    .line 167
    .line 168
    iput-object p1, v0, Landroidx/recyclerview/widget/u0;->A:Landroidx/recyclerview/widget/q0;

    .line 169
    .line 170
    new-instance p1, Lw/i;

    .line 171
    .line 172
    iget-object v1, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iget-object v2, v0, Landroidx/recyclerview/widget/u0;->A:Landroidx/recyclerview/widget/q0;

    .line 179
    .line 180
    const/4 v3, 0x5

    .line 181
    invoke-direct {p1, v1, v2, v3}, Lw/i;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/q0;I)V

    .line 182
    .line 183
    .line 184
    iput-object p1, v0, Landroidx/recyclerview/widget/u0;->z:Lw/i;

    .line 185
    .line 186
    :goto_1
    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "viewHolder"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x15

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    const v2, 0x7f0b019b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    instance-of v4, v3, Ljava/lang/Float;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    check-cast v3, Ljava/lang/Float;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    sget-object v4, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    if-lt v0, v1, :cond_0

    .line 39
    .line 40
    invoke-static {p1, v3}, Lx0/p0;->s(Landroid/view/View;F)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 52
    .line 53
    .line 54
    iget-boolean p1, p0, Ld6/a;->l:Z

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iput-boolean v0, p0, Ld6/a;->l:Z

    .line 60
    .line 61
    :cond_2
    iget-boolean p1, p0, Ld6/a;->k:Z

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iput-boolean v0, p0, Ld6/a;->k:Z

    .line 66
    .line 67
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget-object p2, p0, Ld6/a;->i:Le6/b;

    .line 72
    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    invoke-interface {p2, p1}, Le6/b;->a(I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V
    .locals 6

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "recyclerView"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "viewHolder"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 17
    .line 18
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v0, 0x15

    .line 21
    .line 22
    if-lt p3, v0, :cond_4

    .line 23
    .line 24
    if-eqz p6, :cond_4

    .line 25
    .line 26
    const p3, 0x7f0b019b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p6

    .line 33
    if-nez p6, :cond_4

    .line 34
    .line 35
    invoke-static {p1}, Lx0/b1;->g(Landroid/view/View;)F

    .line 36
    .line 37
    .line 38
    move-result p6

    .line 39
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object p6

    .line 43
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_0
    if-ge v3, v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-ne v4, p1, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-static {v4}, Lx0/b1;->g(Landroid/view/View;)F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    cmpl-float v5, v4, v2

    .line 63
    .line 64
    if-lez v5, :cond_1

    .line 65
    .line 66
    move v2, v4

    .line 67
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 71
    .line 72
    add-float/2addr v2, p2

    .line 73
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    if-lt p2, v0, :cond_3

    .line 76
    .line 77
    invoke-static {p1, v2}, Lx0/p0;->s(Landroid/view/View;F)V

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {p1, p3, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final g(Le6/a;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ld6/a;->j:Le6/a;

    .line 7
    .line 8
    return-void
.end method
