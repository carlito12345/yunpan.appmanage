.class public final Landroidx/recyclerview/widget/u0;
.super Landroidx/recyclerview/widget/v1;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/a2;


# instance fields
.field public A:Landroidx/recyclerview/widget/q0;

.field public final B:Landroidx/recyclerview/widget/l0;

.field public C:Landroid/graphics/Rect;

.field public D:J

.field public final a:Ljava/util/ArrayList;

.field public final b:[F

.field public c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public final m:Ld6/a;

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:I

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public final s:Landroidx/recyclerview/widget/k0;

.field public t:Landroid/view/VelocityTracker;

.field public u:Ljava/util/ArrayList;

.field public v:Ljava/util/ArrayList;

.field public w:Landroidx/recyclerview/widget/c;

.field public x:Landroid/view/View;

.field public y:I

.field public z:Lw/i;


# direct methods
.method public constructor <init>(Ld6/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/v1;-><init>()V

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
    iput-object v0, p0, Landroidx/recyclerview/widget/u0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/u0;->b:[F

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Landroidx/recyclerview/widget/u0;->l:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput v2, p0, Landroidx/recyclerview/widget/u0;->n:I

    .line 24
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Landroidx/recyclerview/widget/u0;->p:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v2, Landroidx/recyclerview/widget/k0;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/k0;-><init>(Landroidx/recyclerview/widget/u0;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Landroidx/recyclerview/widget/u0;->s:Landroidx/recyclerview/widget/k0;

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/recyclerview/widget/u0;->w:Landroidx/recyclerview/widget/c;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/recyclerview/widget/u0;->x:Landroid/view/View;

    .line 42
    .line 43
    iput v1, p0, Landroidx/recyclerview/widget/u0;->y:I

    .line 44
    .line 45
    new-instance v0, Landroidx/recyclerview/widget/l0;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/u0;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Landroidx/recyclerview/widget/u0;->B:Landroidx/recyclerview/widget/l0;

    .line 51
    .line 52
    iput-object p1, p0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 53
    .line 54
    return-void
.end method

.method public static k(Landroid/view/View;FFFF)Z
    .locals 1

    .line 1
    cmpl-float v0, p1, p3

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    add-float/2addr p3, v0

    .line 11
    cmpg-float p1, p1, p3

    .line 12
    .line 13
    if-gtz p1, :cond_0

    .line 14
    .line 15
    cmpl-float p1, p2, p4

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    add-float/2addr p4, p0

    .line 25
    cmpg-float p0, p2, p4

    .line 26
    .line 27
    if-gtz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->m(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Ld6/a;->e(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(I)I
    .locals 8

    .line 1
    and-int/lit8 v0, p1, 0xc

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/u0;->h:F

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    cmpl-float v0, v0, v3

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x4

    .line 19
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/u0;->t:Landroid/view/VelocityTracker;

    .line 20
    .line 21
    iget-object v5, p0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    iget v6, p0, Landroidx/recyclerview/widget/u0;->l:I

    .line 26
    .line 27
    const/4 v7, -0x1

    .line 28
    if-le v6, v7, :cond_2

    .line 29
    .line 30
    iget v6, p0, Landroidx/recyclerview/widget/u0;->g:F

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/16 v7, 0x3e8

    .line 36
    .line 37
    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Landroidx/recyclerview/widget/u0;->t:Landroid/view/VelocityTracker;

    .line 41
    .line 42
    iget v6, p0, Landroidx/recyclerview/widget/u0;->l:I

    .line 43
    .line 44
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget-object v6, p0, Landroidx/recyclerview/widget/u0;->t:Landroid/view/VelocityTracker;

    .line 49
    .line 50
    iget v7, p0, Landroidx/recyclerview/widget/u0;->l:I

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    cmpl-float v3, v4, v3

    .line 57
    .line 58
    if-lez v3, :cond_1

    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    and-int v3, v1, p1

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    if-ne v0, v1, :cond_2

    .line 71
    .line 72
    iget v3, p0, Landroidx/recyclerview/widget/u0;->f:F

    .line 73
    .line 74
    cmpl-float v3, v2, v3

    .line 75
    .line 76
    if-ltz v3, :cond_2

    .line 77
    .line 78
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    cmpl-float v2, v2, v3

    .line 83
    .line 84
    if-lez v2, :cond_2

    .line 85
    .line 86
    return v1

    .line 87
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    int-to-float v1, v1

    .line 94
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const/high16 v2, 0x3f000000    # 0.5f

    .line 98
    .line 99
    mul-float v1, v1, v2

    .line 100
    .line 101
    and-int/2addr p1, v0

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    iget p1, p0, Landroidx/recyclerview/widget/u0;->h:F

    .line 105
    .line 106
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    cmpl-float p1, p1, v1

    .line 111
    .line 112
    if-lez p1, :cond_3

    .line 113
    .line 114
    return v0

    .line 115
    :cond_3
    const/4 p1, 0x0

    .line 116
    return p1
.end method

.method public final f(IILandroid/view/MotionEvent;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 3
    .line 4
    if-nez v1, :cond_f

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne p1, v1, :cond_f

    .line 8
    .line 9
    iget p1, p0, Landroidx/recyclerview/widget/u0;->n:I

    .line 10
    .line 11
    if-eq p1, v1, :cond_f

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 14
    .line 15
    iget-boolean v2, p1, Ld6/a;->g:Z

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne v2, v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget v3, p0, Landroidx/recyclerview/widget/u0;->l:I

    .line 37
    .line 38
    const/4 v4, -0x1

    .line 39
    const/4 v5, 0x0

    .line 40
    if-ne v3, v4, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iget v6, p0, Landroidx/recyclerview/widget/u0;->d:F

    .line 52
    .line 53
    sub-float/2addr v4, v6

    .line 54
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget v6, p0, Landroidx/recyclerview/widget/u0;->e:F

    .line 59
    .line 60
    sub-float/2addr v3, v6

    .line 61
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget v6, p0, Landroidx/recyclerview/widget/u0;->q:I

    .line 70
    .line 71
    int-to-float v6, v6

    .line 72
    cmpg-float v7, v4, v6

    .line 73
    .line 74
    if-gez v7, :cond_3

    .line 75
    .line 76
    cmpg-float v6, v3, v6

    .line 77
    .line 78
    if-gez v6, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    cmpl-float v6, v4, v3

    .line 82
    .line 83
    if-lez v6, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    cmpl-float v3, v3, v4

    .line 93
    .line 94
    if-lez v3, :cond_5

    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/u0;->i(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-nez v2, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    iget-object v3, p0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    .line 112
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    :goto_0
    if-nez v5, :cond_7

    .line 117
    .line 118
    return-void

    .line 119
    :cond_7
    iget-object v2, p0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    const-string v3, "recyclerView"

    .line 125
    .line 126
    invoke-static {v2, v3}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    instance-of v3, v5, Lh6/b;

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    if-eqz v3, :cond_8

    .line 133
    .line 134
    const/4 p1, 0x0

    .line 135
    goto :goto_1

    .line 136
    :cond_8
    iget p1, p1, Ld6/a;->h:I

    .line 137
    .line 138
    shl-int/lit8 v3, p1, 0x10

    .line 139
    .line 140
    or-int/2addr p1, v3

    .line 141
    :goto_1
    sget-object v3, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 142
    .line 143
    invoke-static {v2}, Lx0/k0;->d(Landroid/view/View;)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-static {p1, v2}, Landroidx/recyclerview/widget/p0;->a(II)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    const v2, 0xff00

    .line 152
    .line 153
    .line 154
    and-int/2addr p1, v2

    .line 155
    shr-int/lit8 p1, p1, 0x8

    .line 156
    .line 157
    if-nez p1, :cond_9

    .line 158
    .line 159
    return-void

    .line 160
    :cond_9
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    iget v3, p0, Landroidx/recyclerview/widget/u0;->d:F

    .line 169
    .line 170
    sub-float/2addr v2, v3

    .line 171
    iget v3, p0, Landroidx/recyclerview/widget/u0;->e:F

    .line 172
    .line 173
    sub-float/2addr p2, v3

    .line 174
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    iget v7, p0, Landroidx/recyclerview/widget/u0;->q:I

    .line 183
    .line 184
    int-to-float v7, v7

    .line 185
    cmpg-float v8, v3, v7

    .line 186
    .line 187
    if-gez v8, :cond_a

    .line 188
    .line 189
    cmpg-float v7, v6, v7

    .line 190
    .line 191
    if-gez v7, :cond_a

    .line 192
    .line 193
    return-void

    .line 194
    :cond_a
    const/4 v7, 0x0

    .line 195
    cmpl-float v3, v3, v6

    .line 196
    .line 197
    if-lez v3, :cond_c

    .line 198
    .line 199
    cmpg-float p2, v2, v7

    .line 200
    .line 201
    if-gez p2, :cond_b

    .line 202
    .line 203
    and-int/lit8 p2, p1, 0x4

    .line 204
    .line 205
    if-nez p2, :cond_b

    .line 206
    .line 207
    return-void

    .line 208
    :cond_b
    cmpl-float p2, v2, v7

    .line 209
    .line 210
    if-lez p2, :cond_e

    .line 211
    .line 212
    and-int/lit8 p1, p1, 0x8

    .line 213
    .line 214
    if-nez p1, :cond_e

    .line 215
    .line 216
    return-void

    .line 217
    :cond_c
    cmpg-float v2, p2, v7

    .line 218
    .line 219
    if-gez v2, :cond_d

    .line 220
    .line 221
    and-int/lit8 v2, p1, 0x1

    .line 222
    .line 223
    if-nez v2, :cond_d

    .line 224
    .line 225
    return-void

    .line 226
    :cond_d
    cmpl-float p2, p2, v7

    .line 227
    .line 228
    if-lez p2, :cond_e

    .line 229
    .line 230
    and-int/2addr p1, v1

    .line 231
    if-nez p1, :cond_e

    .line 232
    .line 233
    return-void

    .line 234
    :cond_e
    iput v7, p0, Landroidx/recyclerview/widget/u0;->i:F

    .line 235
    .line 236
    iput v7, p0, Landroidx/recyclerview/widget/u0;->h:F

    .line 237
    .line 238
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    iput p1, p0, Landroidx/recyclerview/widget/u0;->l:I

    .line 243
    .line 244
    invoke-virtual {p0, v5, v0}, Landroidx/recyclerview/widget/u0;->n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 245
    .line 246
    .line 247
    :cond_f
    :goto_2
    return-void
.end method

.method public final g(I)I
    .locals 8

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/u0;->i:F

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    cmpl-float v0, v0, v3

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/u0;->t:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    iget-object v5, p0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    iget v6, p0, Landroidx/recyclerview/widget/u0;->l:I

    .line 24
    .line 25
    const/4 v7, -0x1

    .line 26
    if-le v6, v7, :cond_2

    .line 27
    .line 28
    iget v6, p0, Landroidx/recyclerview/widget/u0;->g:F

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/16 v7, 0x3e8

    .line 34
    .line 35
    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Landroidx/recyclerview/widget/u0;->t:Landroid/view/VelocityTracker;

    .line 39
    .line 40
    iget v6, p0, Landroidx/recyclerview/widget/u0;->l:I

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget-object v6, p0, Landroidx/recyclerview/widget/u0;->t:Landroid/view/VelocityTracker;

    .line 47
    .line 48
    iget v7, p0, Landroidx/recyclerview/widget/u0;->l:I

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    cmpl-float v3, v6, v3

    .line 55
    .line 56
    if-lez v3, :cond_1

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    and-int v3, v1, p1

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    if-ne v1, v0, :cond_2

    .line 68
    .line 69
    iget v3, p0, Landroidx/recyclerview/widget/u0;->f:F

    .line 70
    .line 71
    cmpl-float v3, v2, v3

    .line 72
    .line 73
    if-ltz v3, :cond_2

    .line 74
    .line 75
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    cmpl-float v2, v2, v3

    .line 80
    .line 81
    if-lez v2, :cond_2

    .line 82
    .line 83
    return v1

    .line 84
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    int-to-float v1, v1

    .line 91
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const/high16 v2, 0x3f000000    # 0.5f

    .line 95
    .line 96
    mul-float v1, v1, v2

    .line 97
    .line 98
    and-int/2addr p1, v0

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget p1, p0, Landroidx/recyclerview/widget/u0;->i:F

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    cmpl-float p1, p1, v1

    .line 108
    .line 109
    if-lez p1, :cond_3

    .line 110
    .line 111
    return v0

    .line 112
    :cond_3
    const/4 p1, 0x0

    .line 113
    return p1
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/n2;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/recyclerview/widget/s0;

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/recyclerview/widget/s0;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    if-ne v3, p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, v2, Landroidx/recyclerview/widget/s0;->k:Z

    .line 22
    .line 23
    or-int/2addr p1, p2

    .line 24
    iput-boolean p1, v2, Landroidx/recyclerview/widget/s0;->k:Z

    .line 25
    .line 26
    iget-boolean p1, v2, Landroidx/recyclerview/widget/s0;->l:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, v2, Landroidx/recyclerview/widget/s0;->g:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public final i(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    iget v2, p0, Landroidx/recyclerview/widget/u0;->j:F

    .line 16
    .line 17
    iget v3, p0, Landroidx/recyclerview/widget/u0;->h:F

    .line 18
    .line 19
    add-float/2addr v2, v3

    .line 20
    iget v3, p0, Landroidx/recyclerview/widget/u0;->k:F

    .line 21
    .line 22
    iget v4, p0, Landroidx/recyclerview/widget/u0;->i:F

    .line 23
    .line 24
    add-float/2addr v3, v4

    .line 25
    invoke-static {v1, v0, p1, v2, v3}, Landroidx/recyclerview/widget/u0;->k(Landroid/view/View;FFFF)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->p:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    :goto_0
    if-ltz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroidx/recyclerview/widget/s0;

    .line 47
    .line 48
    iget-object v4, v3, Landroidx/recyclerview/widget/s0;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    .line 50
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    .line 52
    iget v5, v3, Landroidx/recyclerview/widget/s0;->i:F

    .line 53
    .line 54
    iget v3, v3, Landroidx/recyclerview/widget/s0;->j:F

    .line 55
    .line 56
    invoke-static {v4, v0, p1, v5, v3}, Landroidx/recyclerview/widget/u0;->k(Landroid/view/View;FFFF)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    return-object v4

    .line 63
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public final j([F)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/u0;->o:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xc

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Landroidx/recyclerview/widget/u0;->j:F

    .line 9
    .line 10
    iget v2, p0, Landroidx/recyclerview/widget/u0;->h:F

    .line 11
    .line 12
    add-float/2addr v0, v2

    .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    .line 15
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    sub-float/2addr v0, v2

    .line 23
    aput v0, p1, v1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    aput v0, p1, v1

    .line 35
    .line 36
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/u0;->o:I

    .line 37
    .line 38
    and-int/lit8 v0, v0, 0x3

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget v0, p0, Landroidx/recyclerview/widget/u0;->k:F

    .line 44
    .line 45
    iget v2, p0, Landroidx/recyclerview/widget/u0;->i:F

    .line 46
    .line 47
    add-float/2addr v0, v2

    .line 48
    iget-object v2, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    .line 50
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    sub-float/2addr v0, v2

    .line 58
    aput v0, p1, v1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 62
    .line 63
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    aput v0, p1, v1

    .line 70
    .line 71
    :goto_1
    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v2, v0, Landroidx/recyclerview/widget/u0;->n:I

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v2, v0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget v4, v0, Landroidx/recyclerview/widget/u0;->j:F

    .line 26
    .line 27
    iget v5, v0, Landroidx/recyclerview/widget/u0;->h:F

    .line 28
    .line 29
    add-float/2addr v4, v5

    .line 30
    float-to-int v4, v4

    .line 31
    iget v5, v0, Landroidx/recyclerview/widget/u0;->k:F

    .line 32
    .line 33
    iget v6, v0, Landroidx/recyclerview/widget/u0;->i:F

    .line 34
    .line 35
    add-float/2addr v5, v6

    .line 36
    float-to-int v5, v5

    .line 37
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    sub-int v6, v5, v6

    .line 44
    .line 45
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    int-to-float v6, v6

    .line 50
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    int-to-float v7, v7

    .line 57
    const/high16 v8, 0x3f000000    # 0.5f

    .line 58
    .line 59
    mul-float v7, v7, v8

    .line 60
    .line 61
    cmpg-float v6, v6, v7

    .line 62
    .line 63
    if-gez v6, :cond_2

    .line 64
    .line 65
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    sub-int v6, v4, v6

    .line 72
    .line 73
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    int-to-float v6, v6

    .line 78
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    int-to-float v7, v7

    .line 85
    mul-float v7, v7, v8

    .line 86
    .line 87
    cmpg-float v6, v6, v7

    .line 88
    .line 89
    if-gez v6, :cond_2

    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    iget-object v6, v0, Landroidx/recyclerview/widget/u0;->u:Ljava/util/ArrayList;

    .line 93
    .line 94
    if-nez v6, :cond_3

    .line 95
    .line 96
    new-instance v6, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v6, v0, Landroidx/recyclerview/widget/u0;->u:Ljava/util/ArrayList;

    .line 102
    .line 103
    new-instance v6, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v6, v0, Landroidx/recyclerview/widget/u0;->v:Ljava/util/ArrayList;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 112
    .line 113
    .line 114
    iget-object v6, v0, Landroidx/recyclerview/widget/u0;->v:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 117
    .line 118
    .line 119
    :goto_0
    iget v6, v0, Landroidx/recyclerview/widget/u0;->j:F

    .line 120
    .line 121
    iget v7, v0, Landroidx/recyclerview/widget/u0;->h:F

    .line 122
    .line 123
    add-float/2addr v6, v7

    .line 124
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iget v7, v0, Landroidx/recyclerview/widget/u0;->k:F

    .line 129
    .line 130
    iget v8, v0, Landroidx/recyclerview/widget/u0;->i:F

    .line 131
    .line 132
    add-float/2addr v7, v8

    .line 133
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    add-int/2addr v8, v6

    .line 144
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    add-int/2addr v9, v7

    .line 151
    add-int v10, v6, v8

    .line 152
    .line 153
    div-int/2addr v10, v3

    .line 154
    add-int v11, v7, v9

    .line 155
    .line 156
    div-int/2addr v11, v3

    .line 157
    iget-object v12, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    .line 159
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    const/4 v15, 0x0

    .line 168
    :goto_1
    if-ge v15, v13, :cond_8

    .line 169
    .line 170
    invoke-virtual {v12, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 175
    .line 176
    if-ne v14, v3, :cond_5

    .line 177
    .line 178
    :cond_4
    :goto_2
    move/from16 v17, v6

    .line 179
    .line 180
    move/from16 v18, v7

    .line 181
    .line 182
    move/from16 v19, v8

    .line 183
    .line 184
    const/16 v16, 0x2

    .line 185
    .line 186
    goto/16 :goto_4

    .line 187
    .line 188
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-lt v3, v7, :cond_4

    .line 193
    .line 194
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-gt v3, v9, :cond_4

    .line 199
    .line 200
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-lt v3, v6, :cond_4

    .line 205
    .line 206
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-le v3, v8, :cond_6

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_6
    iget-object v3, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 214
    .line 215
    invoke-virtual {v3, v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 220
    .line 221
    .line 222
    move-result v17

    .line 223
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 224
    .line 225
    .line 226
    move-result v18

    .line 227
    add-int v18, v18, v17

    .line 228
    .line 229
    const/16 v16, 0x2

    .line 230
    .line 231
    div-int/lit8 v18, v18, 0x2

    .line 232
    .line 233
    sub-int v17, v10, v18

    .line 234
    .line 235
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    .line 236
    .line 237
    .line 238
    move-result v17

    .line 239
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 240
    .line 241
    .line 242
    move-result v18

    .line 243
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    add-int v14, v14, v18

    .line 248
    .line 249
    div-int/lit8 v14, v14, 0x2

    .line 250
    .line 251
    sub-int v14, v11, v14

    .line 252
    .line 253
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    .line 254
    .line 255
    .line 256
    move-result v14

    .line 257
    mul-int v17, v17, v17

    .line 258
    .line 259
    mul-int v14, v14, v14

    .line 260
    .line 261
    add-int v14, v14, v17

    .line 262
    .line 263
    move/from16 v17, v6

    .line 264
    .line 265
    iget-object v6, v0, Landroidx/recyclerview/widget/u0;->u:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    move/from16 v18, v7

    .line 272
    .line 273
    move/from16 v19, v8

    .line 274
    .line 275
    const/4 v7, 0x0

    .line 276
    const/4 v8, 0x0

    .line 277
    :goto_3
    if-ge v7, v6, :cond_7

    .line 278
    .line 279
    move/from16 v20, v6

    .line 280
    .line 281
    iget-object v6, v0, Landroidx/recyclerview/widget/u0;->v:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    check-cast v6, Ljava/lang/Integer;

    .line 288
    .line 289
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    if-le v14, v6, :cond_7

    .line 294
    .line 295
    add-int/lit8 v8, v8, 0x1

    .line 296
    .line 297
    add-int/lit8 v7, v7, 0x1

    .line 298
    .line 299
    move/from16 v6, v20

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_7
    iget-object v6, v0, Landroidx/recyclerview/widget/u0;->u:Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-virtual {v6, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    iget-object v3, v0, Landroidx/recyclerview/widget/u0;->v:Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    invoke-virtual {v3, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 317
    .line 318
    move/from16 v6, v17

    .line 319
    .line 320
    move/from16 v7, v18

    .line 321
    .line 322
    move/from16 v8, v19

    .line 323
    .line 324
    const/4 v3, 0x2

    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :cond_8
    iget-object v3, v0, Landroidx/recyclerview/widget/u0;->u:Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    if-nez v6, :cond_9

    .line 334
    .line 335
    return-void

    .line 336
    :cond_9
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 337
    .line 338
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    add-int/2addr v6, v4

    .line 343
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 344
    .line 345
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    add-int/2addr v7, v5

    .line 350
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 351
    .line 352
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    sub-int v8, v4, v8

    .line 357
    .line 358
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 359
    .line 360
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 361
    .line 362
    .line 363
    move-result v9

    .line 364
    sub-int v9, v5, v9

    .line 365
    .line 366
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    const/4 v12, 0x0

    .line 371
    const/4 v13, -0x1

    .line 372
    const/4 v14, 0x0

    .line 373
    :goto_5
    if-ge v14, v10, :cond_f

    .line 374
    .line 375
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v15

    .line 379
    check-cast v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 380
    .line 381
    if-lez v8, :cond_a

    .line 382
    .line 383
    iget-object v11, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 384
    .line 385
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    .line 386
    .line 387
    .line 388
    move-result v11

    .line 389
    sub-int/2addr v11, v6

    .line 390
    if-gez v11, :cond_a

    .line 391
    .line 392
    move-object/from16 v16, v3

    .line 393
    .line 394
    iget-object v3, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 395
    .line 396
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    move/from16 v17, v6

    .line 401
    .line 402
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 403
    .line 404
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    if-le v3, v6, :cond_b

    .line 409
    .line 410
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-le v3, v13, :cond_b

    .line 415
    .line 416
    move v13, v3

    .line 417
    move-object v12, v15

    .line 418
    goto :goto_6

    .line 419
    :cond_a
    move-object/from16 v16, v3

    .line 420
    .line 421
    move/from16 v17, v6

    .line 422
    .line 423
    :cond_b
    :goto_6
    if-gez v8, :cond_c

    .line 424
    .line 425
    iget-object v3, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 426
    .line 427
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    sub-int/2addr v3, v4

    .line 432
    if-lez v3, :cond_c

    .line 433
    .line 434
    iget-object v6, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 435
    .line 436
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 441
    .line 442
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 443
    .line 444
    .line 445
    move-result v11

    .line 446
    if-ge v6, v11, :cond_c

    .line 447
    .line 448
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-le v3, v13, :cond_c

    .line 453
    .line 454
    move v13, v3

    .line 455
    move-object v12, v15

    .line 456
    :cond_c
    if-gez v9, :cond_d

    .line 457
    .line 458
    iget-object v3, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 459
    .line 460
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    sub-int/2addr v3, v5

    .line 465
    if-lez v3, :cond_d

    .line 466
    .line 467
    iget-object v6, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 468
    .line 469
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 474
    .line 475
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 476
    .line 477
    .line 478
    move-result v11

    .line 479
    if-ge v6, v11, :cond_d

    .line 480
    .line 481
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-le v3, v13, :cond_d

    .line 486
    .line 487
    move v13, v3

    .line 488
    move-object v12, v15

    .line 489
    :cond_d
    if-lez v9, :cond_e

    .line 490
    .line 491
    iget-object v3, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 492
    .line 493
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    sub-int/2addr v3, v7

    .line 498
    if-gez v3, :cond_e

    .line 499
    .line 500
    iget-object v6, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 501
    .line 502
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 507
    .line 508
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    .line 509
    .line 510
    .line 511
    move-result v11

    .line 512
    if-le v6, v11, :cond_e

    .line 513
    .line 514
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    if-le v3, v13, :cond_e

    .line 519
    .line 520
    move v13, v3

    .line 521
    move-object v12, v15

    .line 522
    :cond_e
    add-int/lit8 v14, v14, 0x1

    .line 523
    .line 524
    move-object/from16 v3, v16

    .line 525
    .line 526
    move/from16 v6, v17

    .line 527
    .line 528
    goto/16 :goto_5

    .line 529
    .line 530
    :cond_f
    if-nez v12, :cond_10

    .line 531
    .line 532
    iget-object v1, v0, Landroidx/recyclerview/widget/u0;->u:Ljava/util/ArrayList;

    .line 533
    .line 534
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 535
    .line 536
    .line 537
    iget-object v1, v0, Landroidx/recyclerview/widget/u0;->v:Ljava/util/ArrayList;

    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :cond_10
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 548
    .line 549
    .line 550
    iget-object v6, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 551
    .line 552
    const-string v7, "recyclerView"

    .line 553
    .line 554
    invoke-static {v6, v7}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 562
    .line 563
    .line 564
    move-result v8

    .line 565
    if-ne v6, v8, :cond_18

    .line 566
    .line 567
    iget-object v6, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 568
    .line 569
    invoke-static {v6, v7}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 573
    .line 574
    .line 575
    move-result-object v7

    .line 576
    instance-of v8, v7, Landroidx/recyclerview/widget/t0;

    .line 577
    .line 578
    if-eqz v8, :cond_11

    .line 579
    .line 580
    check-cast v7, Landroidx/recyclerview/widget/t0;

    .line 581
    .line 582
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 583
    .line 584
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 585
    .line 586
    invoke-interface {v7, v3, v6, v4, v5}, Landroidx/recyclerview/widget/t0;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 587
    .line 588
    .line 589
    goto :goto_7

    .line 590
    :cond_11
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    if-eqz v4, :cond_13

    .line 595
    .line 596
    iget-object v4, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 597
    .line 598
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    .line 603
    .line 604
    .line 605
    move-result v5

    .line 606
    if-gt v4, v5, :cond_12

    .line 607
    .line 608
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 609
    .line 610
    .line 611
    :cond_12
    iget-object v4, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 612
    .line 613
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    .line 622
    .line 623
    .line 624
    move-result v8

    .line 625
    sub-int/2addr v5, v8

    .line 626
    if-lt v4, v5, :cond_13

    .line 627
    .line 628
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 629
    .line 630
    .line 631
    :cond_13
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    if-eqz v4, :cond_15

    .line 636
    .line 637
    iget-object v4, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 638
    .line 639
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    .line 644
    .line 645
    .line 646
    move-result v5

    .line 647
    if-gt v4, v5, :cond_14

    .line 648
    .line 649
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 650
    .line 651
    .line 652
    :cond_14
    iget-object v4, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 653
    .line 654
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 659
    .line 660
    .line 661
    move-result v5

    .line 662
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    .line 663
    .line 664
    .line 665
    move-result v7

    .line 666
    sub-int/2addr v5, v7

    .line 667
    if-lt v4, v5, :cond_15

    .line 668
    .line 669
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 670
    .line 671
    .line 672
    :cond_15
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    const/4 v4, -0x1

    .line 681
    if-eq v1, v4, :cond_18

    .line 682
    .line 683
    if-ne v3, v4, :cond_16

    .line 684
    .line 685
    goto :goto_8

    .line 686
    :cond_16
    iget-object v4, v2, Ld6/a;->j:Le6/a;

    .line 687
    .line 688
    if-eqz v4, :cond_17

    .line 689
    .line 690
    invoke-interface {v4, v1, v3}, Le6/a;->a(II)V

    .line 691
    .line 692
    .line 693
    :cond_17
    iget-object v2, v2, Ld6/a;->i:Le6/b;

    .line 694
    .line 695
    if-eqz v2, :cond_18

    .line 696
    .line 697
    invoke-interface {v2, v1, v3}, Le6/b;->b(II)V

    .line 698
    .line 699
    .line 700
    :cond_18
    :goto_8
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->x:Landroid/view/View;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/u0;->x:Landroid/view/View;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->w:Landroidx/recyclerview/widget/c;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/p1;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 25

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move/from16 v13, p2

    .line 6
    .line 7
    const/16 v14, 0x8

    .line 8
    .line 9
    const/16 v15, 0x10

    .line 10
    .line 11
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12
    .line 13
    if-ne v12, v0, :cond_0

    .line 14
    .line 15
    iget v0, v11, Landroidx/recyclerview/widget/u0;->n:I

    .line 16
    .line 17
    if-ne v13, v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    .line 22
    iput-wide v0, v11, Landroidx/recyclerview/widget/u0;->D:J

    .line 23
    .line 24
    iget v4, v11, Landroidx/recyclerview/widget/u0;->n:I

    .line 25
    .line 26
    const/4 v10, 0x1

    .line 27
    invoke-virtual {v11, v12, v10}, Landroidx/recyclerview/widget/u0;->h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 28
    .line 29
    .line 30
    iput v13, v11, Landroidx/recyclerview/widget/u0;->n:I

    .line 31
    .line 32
    const/4 v9, 0x2

    .line 33
    if-ne v13, v9, :cond_4

    .line 34
    .line 35
    if-eqz v12, :cond_3

    .line 36
    .line 37
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    .line 39
    iput-object v0, v11, Landroidx/recyclerview/widget/u0;->x:Landroid/view/View;

    .line 40
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v1, 0x15

    .line 44
    .line 45
    if-lt v0, v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->w:Landroidx/recyclerview/widget/c;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Landroidx/recyclerview/widget/c;

    .line 53
    .line 54
    invoke-direct {v0, v11}, Landroidx/recyclerview/widget/c;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, v11, Landroidx/recyclerview/widget/u0;->w:Landroidx/recyclerview/widget/c;

    .line 58
    .line 59
    :cond_2
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    iget-object v1, v11, Landroidx/recyclerview/widget/u0;->w:Landroidx/recyclerview/widget/c;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/p1;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string v1, "Must pass a ViewHolder when dragging"

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_4
    :goto_0
    mul-int/lit8 v0, v13, 0x8

    .line 76
    .line 77
    add-int/2addr v0, v14

    .line 78
    shl-int v0, v10, v0

    .line 79
    .line 80
    add-int/lit8 v16, v0, -0x1

    .line 81
    .line 82
    iget-object v8, v11, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 83
    .line 84
    iget-object v7, v11, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 85
    .line 86
    const-string v6, "recyclerView"

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    if-eqz v8, :cond_16

    .line 90
    .line 91
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v3, 0x0

    .line 98
    if-eqz v0, :cond_15

    .line 99
    .line 100
    if-ne v4, v9, :cond_5

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_5
    iget v0, v11, Landroidx/recyclerview/widget/u0;->n:I

    .line 106
    .line 107
    if-ne v0, v9, :cond_7

    .line 108
    .line 109
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 110
    goto :goto_3

    .line 111
    :cond_7
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v6}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    instance-of v0, v8, Lh6/b;

    .line 120
    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    goto :goto_2

    .line 125
    :cond_8
    iget v0, v7, Ld6/a;->h:I

    .line 126
    .line 127
    shl-int/lit8 v1, v0, 0x10

    .line 128
    .line 129
    or-int/2addr v0, v1

    .line 130
    :goto_2
    iget-object v1, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    .line 132
    sget-object v2, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 133
    .line 134
    invoke-static {v1}, Lx0/k0;->d(Landroid/view/View;)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/p0;->a(II)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const v1, 0xff00

    .line 143
    .line 144
    .line 145
    and-int/2addr v0, v1

    .line 146
    shr-int/2addr v0, v14

    .line 147
    if-nez v0, :cond_9

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_9
    iget v1, v11, Landroidx/recyclerview/widget/u0;->h:F

    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    iget v2, v11, Landroidx/recyclerview/widget/u0;->i:F

    .line 157
    .line 158
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    cmpl-float v1, v1, v2

    .line 163
    .line 164
    if-lez v1, :cond_b

    .line 165
    .line 166
    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/u0;->e(I)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-lez v1, :cond_a

    .line 171
    .line 172
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    .line 174
    invoke-static {v0}, Lx0/k0;->d(Landroid/view/View;)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/p0;->b(II)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    goto :goto_3

    .line 183
    :cond_a
    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/u0;->g(I)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-lez v0, :cond_6

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_b
    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/u0;->g(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-lez v1, :cond_c

    .line 195
    .line 196
    move v0, v1

    .line 197
    goto :goto_3

    .line 198
    :cond_c
    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/u0;->e(I)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-lez v0, :cond_6

    .line 203
    .line 204
    iget-object v1, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 205
    .line 206
    invoke-static {v1}, Lx0/k0;->d(Landroid/view/View;)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/p0;->b(II)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    :goto_3
    move v2, v0

    .line 215
    :goto_4
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->t:Landroid/view/VelocityTracker;

    .line 216
    .line 217
    if-eqz v0, :cond_d

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 220
    .line 221
    .line 222
    iput-object v3, v11, Landroidx/recyclerview/widget/u0;->t:Landroid/view/VelocityTracker;

    .line 223
    .line 224
    :cond_d
    const/4 v0, 0x4

    .line 225
    if-eq v2, v10, :cond_f

    .line 226
    .line 227
    if-eq v2, v9, :cond_f

    .line 228
    .line 229
    if-eq v2, v0, :cond_e

    .line 230
    .line 231
    if-eq v2, v14, :cond_e

    .line 232
    .line 233
    if-eq v2, v15, :cond_e

    .line 234
    .line 235
    const/16 v0, 0x20

    .line 236
    .line 237
    if-eq v2, v0, :cond_e

    .line 238
    .line 239
    const/16 v18, 0x0

    .line 240
    .line 241
    :goto_5
    const/16 v19, 0x0

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_e
    iget v0, v11, Landroidx/recyclerview/widget/u0;->h:F

    .line 245
    .line 246
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    iget-object v1, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    int-to-float v1, v1

    .line 257
    mul-float v0, v0, v1

    .line 258
    .line 259
    move/from16 v18, v0

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_f
    iget v0, v11, Landroidx/recyclerview/widget/u0;->i:F

    .line 263
    .line 264
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    iget-object v1, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 269
    .line 270
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    int-to-float v1, v1

    .line 275
    mul-float v0, v0, v1

    .line 276
    .line 277
    move/from16 v19, v0

    .line 278
    .line 279
    const/16 v18, 0x0

    .line 280
    .line 281
    :goto_6
    if-ne v4, v9, :cond_10

    .line 282
    .line 283
    const/16 v1, 0x8

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_10
    if-lez v2, :cond_11

    .line 287
    .line 288
    const/4 v1, 0x2

    .line 289
    goto :goto_7

    .line 290
    :cond_11
    const/4 v1, 0x4

    .line 291
    :goto_7
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->b:[F

    .line 292
    .line 293
    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/u0;->j([F)V

    .line 294
    .line 295
    .line 296
    aget v17, v0, v5

    .line 297
    .line 298
    aget v20, v0, v10

    .line 299
    .line 300
    new-instance v0, Landroidx/recyclerview/widget/m0;

    .line 301
    .line 302
    move-object/from16 v21, v0

    .line 303
    .line 304
    move/from16 v22, v1

    .line 305
    .line 306
    move-object/from16 v1, p0

    .line 307
    .line 308
    move/from16 v23, v2

    .line 309
    .line 310
    move-object v2, v8

    .line 311
    move-object v15, v3

    .line 312
    move/from16 v3, v22

    .line 313
    .line 314
    const/4 v15, 0x0

    .line 315
    move/from16 v5, v17

    .line 316
    .line 317
    move-object/from16 v24, v6

    .line 318
    .line 319
    move/from16 v6, v20

    .line 320
    .line 321
    move-object/from16 v17, v7

    .line 322
    .line 323
    move/from16 v7, v18

    .line 324
    .line 325
    move-object/from16 v18, v8

    .line 326
    .line 327
    move/from16 v8, v19

    .line 328
    .line 329
    move/from16 v9, v23

    .line 330
    .line 331
    move-object/from16 v10, v18

    .line 332
    .line 333
    invoke-direct/range {v0 .. v10}, Landroidx/recyclerview/widget/m0;-><init>(Landroidx/recyclerview/widget/u0;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 334
    .line 335
    .line 336
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 337
    .line 338
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/t1;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    if-nez v0, :cond_13

    .line 346
    .line 347
    move/from16 v9, v22

    .line 348
    .line 349
    if-ne v9, v14, :cond_12

    .line 350
    .line 351
    const-wide/16 v0, 0xc8

    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_12
    const-wide/16 v0, 0xfa

    .line 355
    .line 356
    :goto_8
    move-object/from16 v2, v21

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_13
    move/from16 v9, v22

    .line 360
    .line 361
    if-ne v9, v14, :cond_14

    .line 362
    .line 363
    iget-wide v0, v0, Landroidx/recyclerview/widget/t1;->e:J

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_14
    iget-wide v0, v0, Landroidx/recyclerview/widget/t1;->d:J

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :goto_9
    iget-object v3, v2, Landroidx/recyclerview/widget/s0;->g:Landroid/animation/ValueAnimator;

    .line 370
    .line 371
    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 372
    .line 373
    .line 374
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->p:Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-object/from16 v0, v18

    .line 380
    .line 381
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 385
    .line 386
    .line 387
    move-object/from16 v2, v17

    .line 388
    .line 389
    const/4 v0, 0x0

    .line 390
    const/4 v10, 0x1

    .line 391
    goto :goto_a

    .line 392
    :cond_15
    move-object/from16 v24, v6

    .line 393
    .line 394
    move-object/from16 v17, v7

    .line 395
    .line 396
    move-object v0, v8

    .line 397
    const/4 v15, 0x0

    .line 398
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 399
    .line 400
    invoke-virtual {v11, v1}, Landroidx/recyclerview/widget/u0;->m(Landroid/view/View;)V

    .line 401
    .line 402
    .line 403
    iget-object v1, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 404
    .line 405
    move-object/from16 v2, v17

    .line 406
    .line 407
    invoke-virtual {v2, v1, v0}, Ld6/a;->e(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 408
    .line 409
    .line 410
    const/4 v0, 0x0

    .line 411
    const/4 v10, 0x0

    .line 412
    :goto_a
    iput-object v0, v11, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 413
    .line 414
    move v5, v10

    .line 415
    goto :goto_b

    .line 416
    :cond_16
    move-object/from16 v24, v6

    .line 417
    .line 418
    move-object v2, v7

    .line 419
    const/4 v15, 0x0

    .line 420
    const/4 v5, 0x0

    .line 421
    :goto_b
    if-eqz v12, :cond_18

    .line 422
    .line 423
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 424
    .line 425
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    move-object/from16 v1, v24

    .line 429
    .line 430
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    instance-of v1, v12, Lh6/b;

    .line 434
    .line 435
    if-eqz v1, :cond_17

    .line 436
    .line 437
    const/4 v1, 0x0

    .line 438
    goto :goto_c

    .line 439
    :cond_17
    iget v1, v2, Ld6/a;->h:I

    .line 440
    .line 441
    const/16 v3, 0x10

    .line 442
    .line 443
    shl-int/lit8 v3, v1, 0x10

    .line 444
    .line 445
    or-int/2addr v1, v3

    .line 446
    :goto_c
    sget-object v3, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 447
    .line 448
    invoke-static {v0}, Lx0/k0;->d(Landroid/view/View;)I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/p0;->a(II)I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    and-int v0, v0, v16

    .line 457
    .line 458
    iget v1, v11, Landroidx/recyclerview/widget/u0;->n:I

    .line 459
    .line 460
    mul-int/lit8 v1, v1, 0x8

    .line 461
    .line 462
    shr-int/2addr v0, v1

    .line 463
    iput v0, v11, Landroidx/recyclerview/widget/u0;->o:I

    .line 464
    .line 465
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 466
    .line 467
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    int-to-float v0, v0

    .line 472
    iput v0, v11, Landroidx/recyclerview/widget/u0;->j:F

    .line 473
    .line 474
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 475
    .line 476
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    int-to-float v0, v0

    .line 481
    iput v0, v11, Landroidx/recyclerview/widget/u0;->k:F

    .line 482
    .line 483
    iput-object v12, v11, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 484
    .line 485
    const/4 v0, 0x2

    .line 486
    if-ne v13, v0, :cond_19

    .line 487
    .line 488
    iget-object v1, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 489
    .line 490
    invoke-virtual {v1, v15}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 491
    .line 492
    .line 493
    goto :goto_d

    .line 494
    :cond_18
    const/4 v0, 0x2

    .line 495
    :cond_19
    :goto_d
    iget-object v1, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 496
    .line 497
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    if-eqz v1, :cond_1b

    .line 502
    .line 503
    iget-object v3, v11, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 504
    .line 505
    if-eqz v3, :cond_1a

    .line 506
    .line 507
    const/4 v10, 0x1

    .line 508
    goto :goto_e

    .line 509
    :cond_1a
    const/4 v10, 0x0

    .line 510
    :goto_e
    invoke-interface {v1, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 511
    .line 512
    .line 513
    :cond_1b
    if-nez v5, :cond_1c

    .line 514
    .line 515
    iget-object v1, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 516
    .line 517
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 522
    .line 523
    .line 524
    :cond_1c
    iget-object v1, v11, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 525
    .line 526
    iget v3, v11, Landroidx/recyclerview/widget/u0;->n:I

    .line 527
    .line 528
    const/4 v4, 0x1

    .line 529
    if-eq v3, v4, :cond_1f

    .line 530
    .line 531
    if-eq v3, v0, :cond_1d

    .line 532
    .line 533
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    goto :goto_10

    .line 537
    :cond_1d
    iput-boolean v4, v2, Ld6/a;->k:Z

    .line 538
    .line 539
    iget-object v0, v2, Ld6/a;->i:Le6/b;

    .line 540
    .line 541
    if-eqz v0, :cond_20

    .line 542
    .line 543
    if-eqz v1, :cond_1e

    .line 544
    .line 545
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    goto :goto_f

    .line 550
    :cond_1e
    const/4 v1, -0x1

    .line 551
    :goto_f
    invoke-interface {v0, v1}, Le6/b;->c(I)V

    .line 552
    .line 553
    .line 554
    goto :goto_10

    .line 555
    :cond_1f
    iput-boolean v4, v2, Ld6/a;->l:Z

    .line 556
    .line 557
    :cond_20
    :goto_10
    iget-object v0, v11, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 558
    .line 559
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 560
    .line 561
    .line 562
    return-void
.end method

.method public final o(IILandroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget p3, p0, Landroidx/recyclerview/widget/u0;->d:F

    .line 10
    .line 11
    sub-float/2addr v0, p3

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/u0;->h:F

    .line 13
    .line 14
    iget p3, p0, Landroidx/recyclerview/widget/u0;->e:F

    .line 15
    .line 16
    sub-float/2addr p2, p3

    .line 17
    iput p2, p0, Landroidx/recyclerview/widget/u0;->i:F

    .line 18
    .line 19
    and-int/lit8 p2, p1, 0x4

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iput p2, p0, Landroidx/recyclerview/widget/u0;->h:F

    .line 29
    .line 30
    :cond_0
    and-int/lit8 p2, p1, 0x8

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    iget p2, p0, Landroidx/recyclerview/widget/u0;->h:F

    .line 35
    .line 36
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p0, Landroidx/recyclerview/widget/u0;->h:F

    .line 41
    .line 42
    :cond_1
    and-int/lit8 p2, p1, 0x1

    .line 43
    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    iget p2, p0, Landroidx/recyclerview/widget/u0;->i:F

    .line 47
    .line 48
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iput p2, p0, Landroidx/recyclerview/widget/u0;->i:F

    .line 53
    .line 54
    :cond_2
    and-int/lit8 p1, p1, 0x2

    .line 55
    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    iget p1, p0, Landroidx/recyclerview/widget/u0;->i:F

    .line 59
    .line 60
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Landroidx/recyclerview/widget/u0;->i:F

    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/n2;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    iput v1, v0, Landroidx/recyclerview/widget/u0;->y:I

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/u0;->b:[F

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/u0;->j([F)V

    .line 16
    .line 17
    .line 18
    aget v3, v1, v2

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    aget v1, v1, v4

    .line 22
    .line 23
    move v10, v1

    .line 24
    move v9, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x0

    .line 29
    :goto_0
    iget-object v11, v0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 30
    .line 31
    iget-object v12, v0, Landroidx/recyclerview/widget/u0;->p:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v13, v0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 34
    .line 35
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v14

    .line 42
    const/4 v15, 0x0

    .line 43
    :goto_1
    if-ge v15, v14, :cond_3

    .line 44
    .line 45
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroidx/recyclerview/widget/s0;

    .line 50
    .line 51
    iget-object v2, v1, Landroidx/recyclerview/widget/s0;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 52
    .line 53
    iget v3, v1, Landroidx/recyclerview/widget/s0;->a:F

    .line 54
    .line 55
    iget v4, v1, Landroidx/recyclerview/widget/s0;->c:F

    .line 56
    .line 57
    cmpl-float v5, v3, v4

    .line 58
    .line 59
    if-nez v5, :cond_1

    .line 60
    .line 61
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iput v3, v1, Landroidx/recyclerview/widget/s0;->i:F

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    iget v5, v1, Landroidx/recyclerview/widget/s0;->m:F

    .line 71
    .line 72
    invoke-static {v4, v3, v5, v3}, Lg/b;->b(FFFF)F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput v3, v1, Landroidx/recyclerview/widget/s0;->i:F

    .line 77
    .line 78
    :goto_2
    iget v3, v1, Landroidx/recyclerview/widget/s0;->b:F

    .line 79
    .line 80
    iget v4, v1, Landroidx/recyclerview/widget/s0;->d:F

    .line 81
    .line 82
    cmpl-float v5, v3, v4

    .line 83
    .line 84
    if-nez v5, :cond_2

    .line 85
    .line 86
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iput v2, v1, Landroidx/recyclerview/widget/s0;->j:F

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_2
    iget v2, v1, Landroidx/recyclerview/widget/s0;->m:F

    .line 96
    .line 97
    invoke-static {v4, v3, v2, v3}, Lg/b;->b(FFFF)F

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iput v2, v1, Landroidx/recyclerview/widget/s0;->j:F

    .line 102
    .line 103
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    iget v5, v1, Landroidx/recyclerview/widget/s0;->i:F

    .line 108
    .line 109
    iget v6, v1, Landroidx/recyclerview/widget/s0;->j:F

    .line 110
    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    iget-object v4, v1, Landroidx/recyclerview/widget/s0;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 114
    .line 115
    move-object v1, v13

    .line 116
    move-object/from16 v2, p1

    .line 117
    .line 118
    move-object/from16 v3, p2

    .line 119
    .line 120
    move v0, v7

    .line 121
    move/from16 v7, v16

    .line 122
    .line 123
    invoke-virtual/range {v1 .. v7}, Ld6/a;->f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v15, v15, 0x1

    .line 130
    .line 131
    move-object/from16 v0, p0

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    if-eqz v11, :cond_4

    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    const/4 v7, 0x1

    .line 141
    move-object v1, v13

    .line 142
    move-object/from16 v2, p1

    .line 143
    .line 144
    move-object/from16 v3, p2

    .line 145
    .line 146
    move-object v4, v11

    .line 147
    move v5, v9

    .line 148
    move v6, v10

    .line 149
    invoke-virtual/range {v1 .. v7}, Ld6/a;->f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 153
    .line 154
    .line 155
    :cond_4
    return-void
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/n2;)V
    .locals 7

    .line 1
    iget-object p3, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget-object p3, p0, Landroidx/recyclerview/widget/u0;->b:[F

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/u0;->j([F)V

    .line 10
    .line 11
    .line 12
    aget v2, p3, v0

    .line 13
    .line 14
    aget p3, p3, v1

    .line 15
    .line 16
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/recyclerview/widget/u0;->p:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-ge v4, v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroidx/recyclerview/widget/s0;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    iget-object v5, v5, Landroidx/recyclerview/widget/s0;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 43
    .line 44
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-eqz p3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    sub-int/2addr v3, v1

    .line 62
    :goto_1
    if-ltz v3, :cond_5

    .line 63
    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroidx/recyclerview/widget/s0;

    .line 69
    .line 70
    iget-boolean p3, p1, Landroidx/recyclerview/widget/s0;->l:Z

    .line 71
    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    iget-boolean p1, p1, Landroidx/recyclerview/widget/s0;->h:Z

    .line 75
    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    if-nez p3, :cond_4

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 91
    .line 92
    .line 93
    :cond_6
    return-void
.end method
