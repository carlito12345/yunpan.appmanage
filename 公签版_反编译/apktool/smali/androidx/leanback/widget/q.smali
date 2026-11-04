.class public final Landroidx/leanback/widget/q;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"


# static fields
.field public static final N:Landroid/graphics/Rect;

.field public static final O:[I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Landroidx/leanback/widget/j;

.field public E:I

.field public final F:La2/w0;

.field public final G:Lv3/f;

.field public H:I

.field public I:I

.field public final J:[I

.field public final K:La0/h;

.field public final L:Landroidx/activity/h;

.field public final M:Landroidx/leanback/widget/k;

.field public final a:I

.field public final b:Landroidx/leanback/widget/f;

.field public c:I

.field public d:Landroidx/recyclerview/widget/f1;

.field public e:Landroidx/recyclerview/widget/n2;

.field public f:I

.field public g:I

.field public final h:Landroid/util/SparseIntArray;

.field public i:[I

.field public j:Landroidx/recyclerview/widget/g2;

.field public k:I

.field public l:Ljava/util/ArrayList;

.field public m:I

.field public n:Landroidx/leanback/widget/m;

.field public o:Landroidx/leanback/widget/o;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:[I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/leanback/widget/q;->N:Landroid/graphics/Rect;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    sput-object v0, Landroidx/leanback/widget/q;->O:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/f;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Landroidx/leanback/widget/q;->a:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/leanback/widget/q;->c:I

    .line 10
    .line 11
    new-instance v1, Landroidx/recyclerview/widget/d1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/d1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 17
    .line 18
    new-instance v1, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Landroidx/leanback/widget/q;->h:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    const v1, 0x36200

    .line 26
    .line 27
    .line 28
    iput v1, p0, Landroidx/leanback/widget/q;->k:I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Landroidx/leanback/widget/q;->l:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    iput v1, p0, Landroidx/leanback/widget/q;->m:I

    .line 35
    .line 36
    iput v0, p0, Landroidx/leanback/widget/q;->p:I

    .line 37
    .line 38
    const v2, 0x800033

    .line 39
    .line 40
    .line 41
    iput v2, p0, Landroidx/leanback/widget/q;->A:I

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    iput v2, p0, Landroidx/leanback/widget/q;->C:I

    .line 45
    .line 46
    iput v0, p0, Landroidx/leanback/widget/q;->E:I

    .line 47
    .line 48
    new-instance v2, La2/w0;

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    invoke-direct {v2, v3}, La2/w0;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 55
    .line 56
    new-instance v2, Lv3/f;

    .line 57
    .line 58
    const/4 v3, 0x4

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-direct {v2, v4, v3}, Lv3/f;-><init>(BI)V

    .line 61
    .line 62
    .line 63
    iput-object v2, p0, Landroidx/leanback/widget/q;->G:Lv3/f;

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    new-array v2, v2, [I

    .line 67
    .line 68
    iput-object v2, p0, Landroidx/leanback/widget/q;->J:[I

    .line 69
    .line 70
    new-instance v2, La0/h;

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    invoke-direct {v2, v3}, La0/h;-><init>(I)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Landroidx/leanback/widget/q;->K:La0/h;

    .line 77
    .line 78
    new-instance v2, Landroidx/activity/h;

    .line 79
    .line 80
    invoke-direct {v2, v3, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Landroidx/leanback/widget/q;->L:Landroidx/activity/h;

    .line 84
    .line 85
    new-instance v2, Landroidx/leanback/widget/k;

    .line 86
    .line 87
    invoke-direct {v2, p0}, Landroidx/leanback/widget/k;-><init>(Landroidx/leanback/widget/q;)V

    .line 88
    .line 89
    .line 90
    iput-object v2, p0, Landroidx/leanback/widget/q;->M:Landroidx/leanback/widget/k;

    .line 91
    .line 92
    iput-object p1, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 93
    .line 94
    iput v1, p0, Landroidx/leanback/widget/q;->q:I

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setItemPrefetchEnabled(Z)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final A(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    neg-int v1, p1

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    iget v3, p0, Landroidx/leanback/widget/q;->c:I

    .line 11
    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    :goto_0
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/q;->r:I

    .line 39
    .line 40
    add-int/2addr v0, p1

    .line 41
    iput v0, p0, Landroidx/leanback/widget/q;->r:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->L()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 49
    .line 50
    .line 51
    return p1
.end method

.method public final B(IZ)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/leanback/widget/q;->e(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ne v3, p1, :cond_0

    .line 26
    .line 27
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 28
    .line 29
    or-int/lit8 p1, p1, 0x20

    .line 30
    .line 31
    iput p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 32
    .line 33
    invoke-virtual {p0, v0, p2}, Landroidx/leanback/widget/q;->D(Landroid/view/View;Z)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 37
    .line 38
    and-int/lit8 p1, p1, -0x21

    .line 39
    .line 40
    iput p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_0
    iget v3, p0, Landroidx/leanback/widget/q;->k:I

    .line 45
    .line 46
    and-int/lit16 v4, v3, 0x200

    .line 47
    .line 48
    const/high16 v5, -0x80000000

    .line 49
    .line 50
    if-eqz v4, :cond_8

    .line 51
    .line 52
    and-int/lit8 v3, v3, 0x40

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    if-eqz p2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    iput p1, p0, Landroidx/leanback/widget/q;->m:I

    .line 66
    .line 67
    iput v5, p0, Landroidx/leanback/widget/q;->p:I

    .line 68
    .line 69
    iget-object p2, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    new-instance p2, Landroidx/leanback/widget/l;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Landroidx/leanback/widget/l;-><init>(Landroidx/leanback/widget/q;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/m2;->setTargetPosition(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->startSmoothScroll(Landroidx/recyclerview/widget/m2;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Landroidx/recyclerview/widget/m2;->getTargetPosition()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget p2, p0, Landroidx/leanback/widget/q;->m:I

    .line 89
    .line 90
    if-eq p1, p2, :cond_7

    .line 91
    .line 92
    iput p1, p0, Landroidx/leanback/widget/q;->m:I

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    if-eqz v1, :cond_5

    .line 100
    .line 101
    iget-object v1, p0, Landroidx/leanback/widget/q;->n:Landroidx/leanback/widget/m;

    .line 102
    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    const/4 v3, 0x1

    .line 106
    iput-boolean v3, v1, Landroidx/leanback/widget/m;->a:Z

    .line 107
    .line 108
    :cond_4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_6

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-static {v0}, Landroidx/leanback/widget/q;->e(Landroid/view/View;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-ne v1, p1, :cond_6

    .line 124
    .line 125
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 126
    .line 127
    or-int/lit8 p1, p1, 0x20

    .line 128
    .line 129
    iput p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 130
    .line 131
    invoke-virtual {p0, v0, p2}, Landroidx/leanback/widget/q;->D(Landroid/view/View;Z)V

    .line 132
    .line 133
    .line 134
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 135
    .line 136
    and-int/lit8 p1, p1, -0x21

    .line 137
    .line 138
    iput p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    iput p1, p0, Landroidx/leanback/widget/q;->m:I

    .line 142
    .line 143
    iput v5, p0, Landroidx/leanback/widget/q;->p:I

    .line 144
    .line 145
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 146
    .line 147
    or-int/lit16 p1, p1, 0x100

    .line 148
    .line 149
    iput p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 152
    .line 153
    .line 154
    :cond_7
    :goto_0
    return-void

    .line 155
    :cond_8
    :goto_1
    iput p1, p0, Landroidx/leanback/widget/q;->m:I

    .line 156
    .line 157
    iput v5, p0, Landroidx/leanback/widget/q;->p:I

    .line 158
    .line 159
    return-void
.end method

.method public final C(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Landroidx/leanback/widget/q;->e(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/leanback/widget/n;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/q;->m:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    iget-object v4, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 31
    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iput v0, p0, Landroidx/leanback/widget/q;->m:I

    .line 36
    .line 37
    iput v3, p0, Landroidx/leanback/widget/q;->p:I

    .line 38
    .line 39
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 40
    .line 41
    and-int/lit8 v0, v0, 0x3

    .line 42
    .line 43
    if-eq v0, v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->b()V

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-virtual {v4}, Landroidx/leanback/widget/f;->h()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 55
    .line 56
    .line 57
    :cond_5
    :goto_1
    if-nez p1, :cond_6

    .line 58
    .line 59
    return-void

    .line 60
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_7

    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 73
    .line 74
    .line 75
    :cond_7
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 76
    .line 77
    const/high16 v1, 0x20000

    .line 78
    .line 79
    and-int/2addr v0, v1

    .line 80
    if-nez v0, :cond_8

    .line 81
    .line 82
    if-eqz p3, :cond_8

    .line 83
    .line 84
    return-void

    .line 85
    :cond_8
    sget-object v0, Landroidx/leanback/widget/q;->O:[I

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/q;->k(Landroid/view/View;Landroid/view/View;[I)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_9

    .line 92
    .line 93
    if-nez p4, :cond_9

    .line 94
    .line 95
    if-eqz p5, :cond_d

    .line 96
    .line 97
    :cond_9
    aget p1, v0, v3

    .line 98
    .line 99
    add-int/2addr p1, p4

    .line 100
    aget p2, v0, v2

    .line 101
    .line 102
    add-int/2addr p2, p5

    .line 103
    iget p4, p0, Landroidx/leanback/widget/q;->k:I

    .line 104
    .line 105
    and-int/lit8 p4, p4, 0x3

    .line 106
    .line 107
    if-ne p4, v2, :cond_a

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->z(I)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->A(I)I

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_a
    iget p4, p0, Landroidx/leanback/widget/q;->c:I

    .line 117
    .line 118
    if-nez p4, :cond_b

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_b
    move v5, p2

    .line 122
    move p2, p1

    .line 123
    move p1, v5

    .line 124
    :goto_2
    if-eqz p3, :cond_c

    .line 125
    .line 126
    invoke-virtual {v4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_c
    invoke-virtual {v4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->c()V

    .line 134
    .line 135
    .line 136
    :cond_d
    :goto_3
    return-void
.end method

.method public final D(Landroid/view/View;Z)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v3, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->C(Landroid/view/View;Landroid/view/View;ZII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final E(I)V
    .locals 2

    .line 1
    if-gez p1, :cond_1

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "Invalid row height: "

    .line 10
    .line 11
    invoke-static {p1, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/q;->s:I

    .line 20
    .line 21
    return-void
.end method

.method public final F(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->m:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->B(IZ)V

    .line 10
    .line 11
    .line 12
    :cond_1
    :goto_0
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/q;->H(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method public final H(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/leanback/widget/q;->G:Lv3/f;

    .line 11
    .line 12
    iget-object v2, v1, Lv3/f;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroidx/leanback/widget/u;

    .line 15
    .line 16
    iget v3, v2, Landroidx/leanback/widget/u;->e:I

    .line 17
    .line 18
    invoke-static {p1, v2, v3}, Landroidx/leanback/widget/v;->a(Landroid/view/View;Landroidx/leanback/widget/u;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput v2, v0, Landroidx/leanback/widget/n;->e:I

    .line 23
    .line 24
    iget-object v1, v1, Lv3/f;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroidx/leanback/widget/u;

    .line 27
    .line 28
    iget v2, v1, Landroidx/leanback/widget/u;->e:I

    .line 29
    .line 30
    invoke-static {p1, v1, v2}, Landroidx/leanback/widget/v;->a(Landroid/view/View;Landroidx/leanback/widget/u;I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, v0, Landroidx/leanback/widget/n;->f:I

    .line 35
    .line 36
    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/leanback/widget/n;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 19
    .line 20
    iget v1, v1, Landroidx/leanback/widget/j;->f:I

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sub-int/2addr v1, v0

    .line 27
    iput v1, p0, Landroidx/leanback/widget/q;->f:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput v1, p0, Landroidx/leanback/widget/q;->f:I

    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final J()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/q;->u(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0x400

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x400

    .line 15
    .line 16
    :cond_0
    or-int/2addr v0, v1

    .line 17
    iput v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 18
    .line 19
    and-int/2addr v0, v3

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/leanback/widget/q;->L:Landroidx/activity/h;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lx0/j0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final K()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/n2;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 11
    .line 12
    const/high16 v1, 0x40000

    .line 13
    .line 14
    and-int/2addr v0, v1

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 20
    .line 21
    iget v0, v0, Landroidx/leanback/widget/j;->g:I

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/n2;->b()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    sub-int/2addr v3, v2

    .line 30
    iget-object v4, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 31
    .line 32
    iget v4, v4, Landroidx/leanback/widget/j;->f:I

    .line 33
    .line 34
    move v5, v4

    .line 35
    move v4, v3

    .line 36
    const/4 v3, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 39
    .line 40
    iget v3, v0, Landroidx/leanback/widget/j;->f:I

    .line 41
    .line 42
    iget v4, v0, Landroidx/leanback/widget/j;->g:I

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/recyclerview/widget/n2;->b()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sub-int/2addr v0, v2

    .line 51
    move v5, v4

    .line 52
    const/4 v4, 0x0

    .line 53
    move v11, v3

    .line 54
    move v3, v0

    .line 55
    move v0, v11

    .line 56
    :goto_0
    if-ltz v0, :cond_a

    .line 57
    .line 58
    if-gez v5, :cond_2

    .line 59
    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :cond_2
    if-ne v0, v4, :cond_3

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v0, 0x0

    .line 67
    :goto_1
    if-ne v5, v3, :cond_4

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/4 v3, 0x0

    .line 72
    :goto_2
    const/high16 v4, -0x80000000

    .line 73
    .line 74
    const v5, 0x7fffffff

    .line 75
    .line 76
    .line 77
    iget-object v6, p0, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 78
    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    iget-object v7, v6, La2/w0;->d:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v7, Landroidx/leanback/widget/x0;

    .line 84
    .line 85
    iget v8, v7, Landroidx/leanback/widget/x0;->a:I

    .line 86
    .line 87
    if-ne v8, v5, :cond_5

    .line 88
    .line 89
    if-nez v3, :cond_5

    .line 90
    .line 91
    iget v7, v7, Landroidx/leanback/widget/x0;->b:I

    .line 92
    .line 93
    if-ne v7, v4, :cond_5

    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    sget-object v7, Landroidx/leanback/widget/q;->O:[I

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 101
    .line 102
    invoke-virtual {v0, v2, v7}, Landroidx/leanback/widget/j;->g(Z[I)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    aget v0, v7, v2

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget v8, p0, Landroidx/leanback/widget/q;->c:I

    .line 113
    .line 114
    if-nez v8, :cond_6

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    check-cast v8, Landroidx/leanback/widget/n;

    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    iget v10, v8, Landroidx/leanback/widget/n;->a:I

    .line 130
    .line 131
    add-int/2addr v9, v10

    .line 132
    iget v8, v8, Landroidx/leanback/widget/n;->e:I

    .line 133
    .line 134
    :goto_3
    add-int/2addr v9, v8

    .line 135
    goto :goto_4

    .line 136
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    check-cast v8, Landroidx/leanback/widget/n;

    .line 141
    .line 142
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    iget v10, v8, Landroidx/leanback/widget/n;->b:I

    .line 150
    .line 151
    add-int/2addr v9, v10

    .line 152
    iget v8, v8, Landroidx/leanback/widget/n;->f:I

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Landroidx/leanback/widget/n;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_7
    const v9, 0x7fffffff

    .line 166
    .line 167
    .line 168
    :goto_5
    if-eqz v3, :cond_9

    .line 169
    .line 170
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 171
    .line 172
    invoke-virtual {v0, v1, v7}, Landroidx/leanback/widget/j;->i(Z[I)I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    aget v0, v7, v2

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget v1, p0, Landroidx/leanback/widget/q;->c:I

    .line 183
    .line 184
    if-nez v1, :cond_8

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Landroidx/leanback/widget/n;

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iget v2, v1, Landroidx/leanback/widget/n;->a:I

    .line 200
    .line 201
    add-int/2addr v0, v2

    .line 202
    iget v1, v1, Landroidx/leanback/widget/n;->e:I

    .line 203
    .line 204
    :goto_6
    add-int/2addr v0, v1

    .line 205
    goto :goto_7

    .line 206
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Landroidx/leanback/widget/n;

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iget v2, v1, Landroidx/leanback/widget/n;->b:I

    .line 220
    .line 221
    add-int/2addr v0, v2

    .line 222
    iget v1, v1, Landroidx/leanback/widget/n;->f:I

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_9
    const/high16 v0, -0x80000000

    .line 226
    .line 227
    :goto_7
    iget-object v1, v6, La2/w0;->d:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v1, Landroidx/leanback/widget/x0;

    .line 230
    .line 231
    invoke-virtual {v1, v4, v5, v0, v9}, Landroidx/leanback/widget/x0;->c(IIII)V

    .line 232
    .line 233
    .line 234
    :cond_a
    :goto_8
    return-void
.end method

.method public final L()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 2
    .line 3
    iget-object v0, v0, La2/w0;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/leanback/widget/x0;

    .line 6
    .line 7
    iget v1, v0, Landroidx/leanback/widget/x0;->j:I

    .line 8
    .line 9
    iget v2, p0, Landroidx/leanback/widget/q;->r:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->l()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v1

    .line 17
    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/leanback/widget/x0;->c(IIII)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 2
    .line 3
    iget v1, p0, Landroidx/leanback/widget/q;->k:I

    .line 4
    .line 5
    const/high16 v2, 0x40000

    .line 6
    .line 7
    and-int/2addr v1, v2

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroidx/leanback/widget/q;->I:I

    .line 11
    .line 12
    neg-int v1, v1

    .line 13
    iget v2, p0, Landroidx/leanback/widget/q;->g:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/q;->H:I

    .line 18
    .line 19
    iget v2, p0, Landroidx/leanback/widget/q;->I:I

    .line 20
    .line 21
    add-int/2addr v1, v2

    .line 22
    iget v2, p0, Landroidx/leanback/widget/q;->g:I

    .line 23
    .line 24
    add-int/2addr v1, v2

    .line 25
    :goto_0
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/j;->b(IZ)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/q;->l:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_3

    .line 11
    .line 12
    iget v1, p0, Landroidx/leanback/widget/q;->m:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, -0x1

    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    move-object v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    iget-object v4, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Landroidx/leanback/widget/q;->m:I

    .line 33
    .line 34
    invoke-virtual {p0, v4, v1, v2}, Landroidx/leanback/widget/q;->d(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, v4, v2, v3}, Landroidx/leanback/widget/q;->d(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 39
    .line 40
    .line 41
    :goto_1
    iget v1, p0, Landroidx/leanback/widget/q;->k:I

    .line 42
    .line 43
    and-int/lit8 v1, v1, 0x3

    .line 44
    .line 45
    if-eq v1, v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x0

    .line 58
    :goto_2
    if-ge v2, v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/leanback/widget/q;->L:Landroidx/activity/h;

    .line 73
    .line 74
    invoke-static {v4, v0}, Lx0/j0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_2
    add-int/2addr v2, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_4

    .line 10
    .line 11
    iget v0, p0, Landroidx/leanback/widget/q;->m:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/leanback/widget/q;->l:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    :goto_1
    if-ltz v0, :cond_4

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/leanback/widget/q;->l:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroidx/leanback/widget/z;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/q;->l:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/lit8 v0, v0, -0x1

    .line 66
    .line 67
    :goto_2
    if-ltz v0, :cond_4

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/leanback/widget/q;->l:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/leanback/widget/z;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, v0, -0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_3
    return-void
.end method

.method public final canScrollHorizontally()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :cond_1
    :goto_0
    return v1
.end method

.method public final canScrollVertically()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :cond_1
    :goto_0
    return v1
.end method

.method public final collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/n2;Landroidx/recyclerview/widget/y1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p3}, Landroidx/leanback/widget/q;->y(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 3
    .line 4
    .line 5
    iget p3, p0, Landroidx/leanback/widget/q;->c:I

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, p2

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_3

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    if-gez p1, :cond_2

    .line 21
    .line 22
    iget p2, p0, Landroidx/leanback/widget/q;->I:I

    .line 23
    .line 24
    neg-int p2, p2

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_3

    .line 28
    :cond_2
    iget p2, p0, Landroidx/leanback/widget/q;->H:I

    .line 29
    .line 30
    iget p3, p0, Landroidx/leanback/widget/q;->I:I

    .line 31
    .line 32
    add-int/2addr p2, p3

    .line 33
    :goto_1
    iget-object p3, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 34
    .line 35
    invoke-virtual {p3, p2, p1, p4}, Landroidx/leanback/widget/j;->e(IILandroidx/recyclerview/widget/y1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->q()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->q()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->q()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/y1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 2
    .line 3
    iget v0, v0, Landroidx/leanback/widget/f;->f:I

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Landroidx/leanback/widget/q;->m:I

    .line 10
    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 12
    .line 13
    div-int/lit8 v2, v2, 0x2

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    sub-int v2, p1, v0

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ge v3, p1, :cond_0

    .line 29
    .line 30
    add-int v4, v1, v0

    .line 31
    .line 32
    if-ge v3, v4, :cond_0

    .line 33
    .line 34
    move-object v4, p2

    .line 35
    check-cast v4, Landroidx/recyclerview/widget/e0;

    .line 36
    .line 37
    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/e0;->a(II)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    :goto_0
    if-ltz v0, :cond_8

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/leanback/widget/q;->l:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroidx/leanback/widget/z;

    .line 21
    .line 22
    check-cast v2, Lo1/a;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lo1/b;

    .line 32
    .line 33
    iget-object v2, v2, Lo1/a;->a:Lo1/d;

    .line 34
    .line 35
    iget-object v3, v2, Lo1/d;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v3}, Lo1/d;->d(I)V

    .line 42
    .line 43
    .line 44
    if-eqz p2, :cond_7

    .line 45
    .line 46
    iget-object v4, v2, Lo1/d;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lo1/e;

    .line 53
    .line 54
    iget v4, v4, Lo1/e;->b:I

    .line 55
    .line 56
    add-int/2addr v4, p3

    .line 57
    check-cast v2, Landroidx/leanback/widget/picker/DatePicker;

    .line 58
    .line 59
    iget-object v5, v2, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 60
    .line 61
    iget-object v6, v2, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 68
    .line 69
    .line 70
    iget-object v5, v2, Lo1/d;->c:Ljava/util/ArrayList;

    .line 71
    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lo1/e;

    .line 81
    .line 82
    :goto_1
    iget v5, v5, Lo1/e;->a:I

    .line 83
    .line 84
    iget v6, v2, Landroidx/leanback/widget/picker/DatePicker;->w:I

    .line 85
    .line 86
    const/4 v7, 0x2

    .line 87
    const/4 v8, 0x5

    .line 88
    if-ne v3, v6, :cond_2

    .line 89
    .line 90
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 91
    .line 92
    sub-int/2addr v4, v5

    .line 93
    invoke-virtual {v3, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    iget v6, v2, Landroidx/leanback/widget/picker/DatePicker;->v:I

    .line 98
    .line 99
    if-ne v3, v6, :cond_3

    .line 100
    .line 101
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 102
    .line 103
    sub-int/2addr v4, v5

    .line 104
    invoke-virtual {v3, v7, v4}, Ljava/util/Calendar;->add(II)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    iget v6, v2, Landroidx/leanback/widget/picker/DatePicker;->x:I

    .line 109
    .line 110
    if-ne v3, v6, :cond_6

    .line 111
    .line 112
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 113
    .line 114
    sub-int/2addr v4, v5

    .line 115
    invoke-virtual {v3, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 116
    .line 117
    .line 118
    :goto_2
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 119
    .line 120
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 125
    .line 126
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    iget-object v5, v2, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 131
    .line 132
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    iget-object v6, v2, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 137
    .line 138
    invoke-virtual {v6, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 139
    .line 140
    .line 141
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 142
    .line 143
    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_4

    .line 150
    .line 151
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 152
    .line 153
    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 164
    .line 165
    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_5

    .line 172
    .line 173
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 174
    .line 175
    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_3
    new-instance v3, Landroidx/activity/h;

    .line 185
    .line 186
    const/16 v4, 0xd

    .line 187
    .line 188
    invoke-direct {v3, v4, v2}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 196
    .line 197
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_8
    return-void
.end method

.method public final f(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/n;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    .line 13
    add-int/2addr p1, v1

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 15
    .line 16
    add-int/2addr p1, v0

    .line 17
    return p1
.end method

.method public final g(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/n;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    .line 13
    add-int/2addr p1, v1

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    .line 16
    add-int/2addr p1, v0

    .line 17
    return p1
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/leanback/widget/n;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/leanback/widget/n;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/leanback/widget/n;

    invoke-direct {v0, p1, p2}, Landroidx/leanback/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 2
    instance-of v0, p1, Landroidx/leanback/widget/n;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroidx/leanback/widget/n;

    check-cast p1, Landroidx/leanback/widget/n;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/n;-><init>(Landroidx/leanback/widget/n;)V

    return-object v0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Landroidx/leanback/widget/n;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 6
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Landroidx/leanback/widget/n;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/n;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Landroidx/leanback/widget/n;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/n;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getColumnCountForAccessibility(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget p1, v0, Landroidx/leanback/widget/j;->e:I

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final getDecoratedBottom(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/n;->d:I

    .line 12
    .line 13
    sub-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public final getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/leanback/widget/n;

    .line 9
    .line 10
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 11
    .line 12
    iget v1, p1, Landroidx/leanback/widget/n;->a:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iget v1, p1, Landroidx/leanback/widget/n;->b:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    iget v1, p1, Landroidx/leanback/widget/n;->c:I

    .line 27
    .line 28
    sub-int/2addr v0, v1

    .line 29
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    iget p1, p1, Landroidx/leanback/widget/n;->d:I

    .line 34
    .line 35
    sub-int/2addr v0, p1

    .line 36
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    return-void
.end method

.method public final getDecoratedLeft(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/n;->a:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public final getDecoratedRight(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/n;->c:I

    .line 12
    .line 13
    sub-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public final getDecoratedTop(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    iget p1, p1, Landroidx/leanback/widget/n;->b:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public final getRowCountForAccessibility(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p1, v0, Landroidx/leanback/widget/j;->e:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final h(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->c:I

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    const/16 v2, 0x42

    .line 6
    .line 7
    const/16 v3, 0x21

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x1

    .line 13
    const/16 v8, 0x11

    .line 14
    .line 15
    if-nez v0, :cond_6

    .line 16
    .line 17
    const/high16 v0, 0x40000

    .line 18
    .line 19
    if-eq p1, v8, :cond_4

    .line 20
    .line 21
    if-eq p1, v3, :cond_5

    .line 22
    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    if-eq p1, v1, :cond_0

    .line 26
    .line 27
    const/16 v4, 0x11

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    const/4 v4, 0x3

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 33
    .line 34
    and-int/2addr p1, v0

    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    :cond_2
    const/4 v4, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_4
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 42
    .line 43
    and-int/2addr p1, v0

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_5
    :goto_2
    move v5, v4

    .line 48
    goto :goto_4

    .line 49
    :cond_6
    if-ne v0, v7, :cond_a

    .line 50
    .line 51
    const/high16 v0, 0x80000

    .line 52
    .line 53
    if-eq p1, v8, :cond_9

    .line 54
    .line 55
    if-eq p1, v3, :cond_b

    .line 56
    .line 57
    if-eq p1, v2, :cond_8

    .line 58
    .line 59
    if-eq p1, v1, :cond_7

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_7
    const/4 v5, 0x1

    .line 63
    goto :goto_4

    .line 64
    :cond_8
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 65
    .line 66
    and-int/2addr p1, v0

    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_9
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 71
    .line 72
    and-int/2addr p1, v0

    .line 73
    if-nez p1, :cond_0

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_a
    :goto_3
    const/16 v5, 0x11

    .line 77
    .line 78
    :cond_b
    :goto_4
    return v5
.end method

.method public final i(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->t:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/q;->u:[I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_1
    aget p1, v0, p1

    .line 13
    .line 14
    return p1
.end method

.method public final j(I)I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    if-le v0, p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->i(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, p0, Landroidx/leanback/widget/q;->z:I

    .line 20
    .line 21
    add-int/2addr v2, v3

    .line 22
    add-int/2addr v1, v2

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_1
    if-ge v1, p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/q;->i(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget v3, p0, Landroidx/leanback/widget/q;->z:I

    .line 34
    .line 35
    add-int/2addr v2, v3

    .line 36
    add-int/2addr v0, v2

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v1, v0

    .line 41
    :cond_2
    return v1
.end method

.method public final k(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 12

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->E:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eq v0, v4, :cond_5

    .line 9
    .line 10
    if-eq v0, v3, :cond_5

    .line 11
    .line 12
    iget-object v0, v1, La2/w0;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/leanback/widget/x0;

    .line 15
    .line 16
    iget v3, p0, Landroidx/leanback/widget/q;->c:I

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroidx/leanback/widget/n;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    iget v6, v3, Landroidx/leanback/widget/n;->a:I

    .line 34
    .line 35
    add-int/2addr v5, v6

    .line 36
    iget v3, v3, Landroidx/leanback/widget/n;->e:I

    .line 37
    .line 38
    :goto_0
    add-int/2addr v5, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroidx/leanback/widget/n;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    iget v6, v3, Landroidx/leanback/widget/n;->b:I

    .line 54
    .line 55
    add-int/2addr v5, v6

    .line 56
    iget v3, v3, Landroidx/leanback/widget/n;->f:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/x0;->b(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Landroidx/leanback/widget/n;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    :cond_1
    iget p2, p0, Landroidx/leanback/widget/q;->c:I

    .line 75
    .line 76
    if-nez p2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroidx/leanback/widget/n;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iget v3, p2, Landroidx/leanback/widget/n;->b:I

    .line 92
    .line 93
    add-int/2addr p1, v3

    .line 94
    iget p2, p2, Landroidx/leanback/widget/n;->f:I

    .line 95
    .line 96
    :goto_2
    add-int/2addr p1, p2

    .line 97
    goto :goto_3

    .line 98
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Landroidx/leanback/widget/n;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iget v3, p2, Landroidx/leanback/widget/n;->a:I

    .line 112
    .line 113
    add-int/2addr p1, v3

    .line 114
    iget p2, p2, Landroidx/leanback/widget/n;->e:I

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :goto_3
    iget-object p2, v1, La2/w0;->e:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p2, Landroidx/leanback/widget/x0;

    .line 120
    .line 121
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/x0;->b(I)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_3
    aput v2, p3, v2

    .line 131
    .line 132
    aput v2, p3, v4

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_4
    :goto_4
    aput v0, p3, v2

    .line 136
    .line 137
    aput p1, p3, v4

    .line 138
    .line 139
    const/4 v2, 0x1

    .line 140
    :goto_5
    return v2

    .line 141
    :cond_5
    invoke-static {p1}, Landroidx/leanback/widget/q;->e(Landroid/view/View;)I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    iget-object v0, p0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f1;->e(Landroid/view/View;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iget-object v5, p0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 152
    .line 153
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/f1;->b(Landroid/view/View;)I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    iget-object v6, v1, La2/w0;->d:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v6, Landroidx/leanback/widget/x0;

    .line 160
    .line 161
    iget v7, v6, Landroidx/leanback/widget/x0;->j:I

    .line 162
    .line 163
    iget v8, v6, Landroidx/leanback/widget/x0;->i:I

    .line 164
    .line 165
    sub-int/2addr v8, v7

    .line 166
    iget v6, v6, Landroidx/leanback/widget/x0;->k:I

    .line 167
    .line 168
    sub-int/2addr v8, v6

    .line 169
    iget-object v6, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 170
    .line 171
    invoke-virtual {v6, p2}, Landroidx/leanback/widget/j;->k(I)Landroidx/leanback/widget/i;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    if-nez v6, :cond_6

    .line 176
    .line 177
    const/4 v6, -0x1

    .line 178
    goto :goto_6

    .line 179
    :cond_6
    iget v6, v6, Landroidx/leanback/widget/i;->b:I

    .line 180
    .line 181
    :goto_6
    const/4 v9, 0x0

    .line 182
    if-ge v0, v7, :cond_d

    .line 183
    .line 184
    iget v0, p0, Landroidx/leanback/widget/q;->E:I

    .line 185
    .line 186
    if-ne v0, v3, :cond_b

    .line 187
    .line 188
    move-object v0, p1

    .line 189
    :goto_7
    iget-object v10, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 190
    .line 191
    iget-boolean v11, v10, Landroidx/leanback/widget/j;->c:Z

    .line 192
    .line 193
    if-eqz v11, :cond_7

    .line 194
    .line 195
    const/high16 v11, -0x80000000

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_7
    const v11, 0x7fffffff

    .line 199
    .line 200
    .line 201
    :goto_8
    invoke-virtual {v10, v11, v4}, Landroidx/leanback/widget/j;->m(IZ)Z

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-eqz v10, :cond_a

    .line 206
    .line 207
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 208
    .line 209
    iget v10, v0, Landroidx/leanback/widget/j;->f:I

    .line 210
    .line 211
    invoke-virtual {v0, v10, p2}, Landroidx/leanback/widget/j;->j(II)[La0/h;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    aget-object v0, v0, v6

    .line 216
    .line 217
    invoke-virtual {v0, v2}, La0/h;->k(I)I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    iget-object v11, p0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 226
    .line 227
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/f1;->e(Landroid/view/View;)I

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    sub-int v11, v5, v11

    .line 232
    .line 233
    if-le v11, v8, :cond_9

    .line 234
    .line 235
    iget p2, v0, La0/h;->b:I

    .line 236
    .line 237
    iget v5, v0, La0/h;->c:I

    .line 238
    .line 239
    and-int/2addr p2, v5

    .line 240
    if-le p2, v3, :cond_8

    .line 241
    .line 242
    invoke-virtual {v0, v3}, La0/h;->k(I)I

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    move-object v3, v9

    .line 251
    move-object v9, p2

    .line 252
    goto :goto_a

    .line 253
    :cond_8
    move-object v3, v9

    .line 254
    move-object v9, v10

    .line 255
    goto :goto_a

    .line 256
    :cond_9
    move-object v0, v10

    .line 257
    goto :goto_7

    .line 258
    :cond_a
    move-object v3, v9

    .line 259
    move-object v9, v0

    .line 260
    goto :goto_a

    .line 261
    :cond_b
    move-object v3, v9

    .line 262
    :cond_c
    move-object v9, p1

    .line 263
    goto :goto_a

    .line 264
    :cond_d
    add-int v10, v8, v7

    .line 265
    .line 266
    if-le v5, v10, :cond_11

    .line 267
    .line 268
    iget v5, p0, Landroidx/leanback/widget/q;->E:I

    .line 269
    .line 270
    if-ne v5, v3, :cond_10

    .line 271
    .line 272
    :cond_e
    iget-object v3, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 273
    .line 274
    iget v5, v3, Landroidx/leanback/widget/j;->g:I

    .line 275
    .line 276
    invoke-virtual {v3, p2, v5}, Landroidx/leanback/widget/j;->j(II)[La0/h;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    aget-object v3, v3, v6

    .line 281
    .line 282
    iget v5, v3, La0/h;->b:I

    .line 283
    .line 284
    iget v10, v3, La0/h;->c:I

    .line 285
    .line 286
    and-int/2addr v5, v10

    .line 287
    sub-int/2addr v5, v4

    .line 288
    invoke-virtual {v3, v5}, La0/h;->k(I)I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    iget-object v5, p0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 297
    .line 298
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/f1;->b(Landroid/view/View;)I

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    sub-int/2addr v5, v0

    .line 303
    if-le v5, v8, :cond_f

    .line 304
    .line 305
    move-object v3, v9

    .line 306
    goto :goto_9

    .line 307
    :cond_f
    iget-object v5, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 308
    .line 309
    invoke-virtual {v5}, Landroidx/leanback/widget/j;->a()Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-nez v5, :cond_e

    .line 314
    .line 315
    :goto_9
    if-eqz v3, :cond_c

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_10
    move-object v3, p1

    .line 319
    goto :goto_a

    .line 320
    :cond_11
    move-object v3, v9

    .line 321
    :goto_a
    if-eqz v9, :cond_12

    .line 322
    .line 323
    iget-object p2, p0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 324
    .line 325
    invoke-virtual {p2, v9}, Landroidx/recyclerview/widget/f1;->e(Landroid/view/View;)I

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    :goto_b
    sub-int/2addr p2, v7

    .line 330
    goto :goto_c

    .line 331
    :cond_12
    if-eqz v3, :cond_13

    .line 332
    .line 333
    iget-object p2, p0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 334
    .line 335
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/f1;->b(Landroid/view/View;)I

    .line 336
    .line 337
    .line 338
    move-result p2

    .line 339
    add-int/2addr v7, v8

    .line 340
    goto :goto_b

    .line 341
    :cond_13
    const/4 p2, 0x0

    .line 342
    :goto_c
    if-eqz v9, :cond_14

    .line 343
    .line 344
    move-object p1, v9

    .line 345
    goto :goto_d

    .line 346
    :cond_14
    if-eqz v3, :cond_15

    .line 347
    .line 348
    move-object p1, v3

    .line 349
    :cond_15
    :goto_d
    iget v0, p0, Landroidx/leanback/widget/q;->c:I

    .line 350
    .line 351
    if-nez v0, :cond_16

    .line 352
    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Landroidx/leanback/widget/n;

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    iget v3, v0, Landroidx/leanback/widget/n;->b:I

    .line 367
    .line 368
    add-int/2addr p1, v3

    .line 369
    iget v0, v0, Landroidx/leanback/widget/n;->f:I

    .line 370
    .line 371
    :goto_e
    add-int/2addr p1, v0

    .line 372
    goto :goto_f

    .line 373
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Landroidx/leanback/widget/n;

    .line 378
    .line 379
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    iget v3, v0, Landroidx/leanback/widget/n;->a:I

    .line 387
    .line 388
    add-int/2addr p1, v3

    .line 389
    iget v0, v0, Landroidx/leanback/widget/n;->e:I

    .line 390
    .line 391
    goto :goto_e

    .line 392
    :goto_f
    iget-object v0, v1, La2/w0;->e:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v0, Landroidx/leanback/widget/x0;

    .line 395
    .line 396
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/x0;->b(I)I

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    if-nez p2, :cond_17

    .line 401
    .line 402
    if-eqz p1, :cond_18

    .line 403
    .line 404
    :cond_17
    aput p2, p3, v2

    .line 405
    .line 406
    aput p1, p3, v4

    .line 407
    .line 408
    const/4 v2, 0x1

    .line 409
    :cond_18
    return v2
.end method

.method public final l()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/q;->B:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->j(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->i(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    :cond_1
    return v1
.end method

.method public final n()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :cond_1
    :goto_0
    return v1
.end method

.method public final o(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ltz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-gt v2, v3, :cond_1

    .line 30
    .line 31
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ltz v2, :cond_1

    .line 38
    .line 39
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-gt p1, v0, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_1
    return v1
.end method

.method public final onAdapterChanged(Landroidx/recyclerview/widget/m1;Landroidx/recyclerview/widget/m1;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/leanback/widget/q;->u:[I

    .line 7
    .line 8
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 9
    .line 10
    and-int/lit16 v0, v0, -0x401

    .line 11
    .line 12
    iput v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Landroidx/leanback/widget/q;->m:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Landroidx/leanback/widget/q;->p:I

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/leanback/widget/q;->K:La0/h;

    .line 21
    .line 22
    iget-object v1, v1, La0/h;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, La0/m;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, v0}, La0/m;->f(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/m1;Landroidx/recyclerview/widget/m1;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    iget v4, v0, Landroidx/leanback/widget/q;->k:I

    .line 10
    .line 11
    const v5, 0x8000

    .line 12
    .line 13
    .line 14
    and-int/2addr v4, v5

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    return v5

    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1d

    .line 24
    .line 25
    iget-object v4, v0, Landroidx/leanback/widget/q;->o:Landroidx/leanback/widget/o;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    return v5

    .line 30
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/q;->h(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const/4 v8, -0x1

    .line 39
    iget-object v9, v0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 40
    .line 41
    if-eqz v9, :cond_3

    .line 42
    .line 43
    if-eq v7, v9, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    if-eqz v7, :cond_3

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    const/4 v10, 0x0

    .line 56
    :goto_0
    if-ge v10, v9, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    if-ne v11, v7, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v10, -0x1

    .line 69
    :goto_1
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v7}, Landroidx/leanback/widget/q;->e(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-ne v7, v8, :cond_4

    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    :goto_2
    if-eqz v9, :cond_5

    .line 86
    .line 87
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v11, v0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 91
    .line 92
    if-eqz v11, :cond_1c

    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-nez v11, :cond_6

    .line 99
    .line 100
    goto/16 :goto_c

    .line 101
    .line 102
    :cond_6
    const/4 v11, 0x2

    .line 103
    const/4 v12, 0x3

    .line 104
    if-eq v4, v12, :cond_7

    .line 105
    .line 106
    if-ne v4, v11, :cond_8

    .line 107
    .line 108
    :cond_7
    iget-object v13, v0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 109
    .line 110
    iget v13, v13, Landroidx/leanback/widget/j;->e:I

    .line 111
    .line 112
    if-gt v13, v5, :cond_8

    .line 113
    .line 114
    return v5

    .line 115
    :cond_8
    iget-object v13, v0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 116
    .line 117
    if-eqz v13, :cond_9

    .line 118
    .line 119
    if-eqz v9, :cond_9

    .line 120
    .line 121
    invoke-virtual {v13, v7}, Landroidx/leanback/widget/j;->k(I)Landroidx/leanback/widget/i;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    iget v13, v13, Landroidx/leanback/widget/i;->b:I

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_9
    const/4 v13, -0x1

    .line 129
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    if-eq v4, v5, :cond_b

    .line 134
    .line 135
    if-ne v4, v12, :cond_a

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_a
    const/4 v15, -0x1

    .line 139
    goto :goto_5

    .line 140
    :cond_b
    :goto_4
    const/4 v15, 0x1

    .line 141
    :goto_5
    if-lez v15, :cond_c

    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 144
    .line 145
    .line 146
    move-result v16

    .line 147
    add-int/lit8 v16, v16, -0x1

    .line 148
    .line 149
    move/from16 v6, v16

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_c
    const/4 v6, 0x0

    .line 153
    :goto_6
    if-ne v10, v8, :cond_e

    .line 154
    .line 155
    if-lez v15, :cond_d

    .line 156
    .line 157
    const/16 v16, 0x0

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    sub-int/2addr v8, v5

    .line 165
    move/from16 v16, v8

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_e
    add-int v16, v10, v15

    .line 169
    .line 170
    :goto_7
    move/from16 v8, v16

    .line 171
    .line 172
    :goto_8
    if-lez v15, :cond_f

    .line 173
    .line 174
    if-gt v8, v6, :cond_24

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_f
    if-lt v8, v6, :cond_24

    .line 178
    .line 179
    :goto_9
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 184
    .line 185
    .line 186
    move-result v16

    .line 187
    if-nez v16, :cond_1b

    .line 188
    .line 189
    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    .line 190
    .line 191
    .line 192
    move-result v16

    .line 193
    if-nez v16, :cond_10

    .line 194
    .line 195
    goto :goto_b

    .line 196
    :cond_10
    if-nez v9, :cond_11

    .line 197
    .line 198
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-le v10, v14, :cond_1b

    .line 206
    .line 207
    goto/16 :goto_f

    .line 208
    .line 209
    :cond_11
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v16

    .line 213
    invoke-static/range {v16 .. v16}, Landroidx/leanback/widget/q;->e(Landroid/view/View;)I

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    iget-object v12, v0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 218
    .line 219
    invoke-virtual {v12, v11}, Landroidx/leanback/widget/j;->k(I)Landroidx/leanback/widget/i;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    if-nez v12, :cond_13

    .line 224
    .line 225
    :cond_12
    :goto_a
    const/4 v11, 0x2

    .line 226
    goto :goto_b

    .line 227
    :cond_13
    iget v12, v12, Landroidx/leanback/widget/i;->b:I

    .line 228
    .line 229
    if-ne v4, v5, :cond_14

    .line 230
    .line 231
    if-ne v12, v13, :cond_12

    .line 232
    .line 233
    if-le v11, v7, :cond_12

    .line 234
    .line 235
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    if-le v10, v14, :cond_12

    .line 243
    .line 244
    goto/16 :goto_f

    .line 245
    .line 246
    :cond_14
    if-nez v4, :cond_15

    .line 247
    .line 248
    if-ne v12, v13, :cond_12

    .line 249
    .line 250
    if-ge v11, v7, :cond_12

    .line 251
    .line 252
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 253
    .line 254
    .line 255
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    if-le v10, v14, :cond_12

    .line 260
    .line 261
    goto/16 :goto_f

    .line 262
    .line 263
    :cond_15
    const/4 v11, 0x3

    .line 264
    if-ne v4, v11, :cond_18

    .line 265
    .line 266
    if-ne v12, v13, :cond_16

    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_16
    if-ge v12, v13, :cond_17

    .line 270
    .line 271
    goto/16 :goto_f

    .line 272
    .line 273
    :cond_17
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 274
    .line 275
    .line 276
    goto :goto_a

    .line 277
    :cond_18
    const/4 v11, 0x2

    .line 278
    if-ne v4, v11, :cond_1b

    .line 279
    .line 280
    if-ne v12, v13, :cond_19

    .line 281
    .line 282
    goto :goto_b

    .line 283
    :cond_19
    if-le v12, v13, :cond_1a

    .line 284
    .line 285
    goto/16 :goto_f

    .line 286
    .line 287
    :cond_1a
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 288
    .line 289
    .line 290
    :cond_1b
    :goto_b
    add-int/2addr v8, v15

    .line 291
    const/4 v12, 0x3

    .line 292
    goto :goto_8

    .line 293
    :cond_1c
    :goto_c
    return v5

    .line 294
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    iget v6, v0, Landroidx/leanback/widget/q;->E:I

    .line 299
    .line 300
    if-eqz v6, :cond_21

    .line 301
    .line 302
    iget-object v6, v0, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 303
    .line 304
    iget-object v6, v6, La2/w0;->d:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v6, Landroidx/leanback/widget/x0;

    .line 307
    .line 308
    iget v7, v6, Landroidx/leanback/widget/x0;->j:I

    .line 309
    .line 310
    iget v8, v6, Landroidx/leanback/widget/x0;->i:I

    .line 311
    .line 312
    sub-int/2addr v8, v7

    .line 313
    iget v6, v6, Landroidx/leanback/widget/x0;->k:I

    .line 314
    .line 315
    sub-int/2addr v8, v6

    .line 316
    add-int/2addr v8, v7

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    const/4 v9, 0x0

    .line 322
    :goto_d
    if-ge v9, v6, :cond_1f

    .line 323
    .line 324
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    if-nez v11, :cond_1e

    .line 333
    .line 334
    iget-object v11, v0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 335
    .line 336
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/f1;->e(Landroid/view/View;)I

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    if-lt v11, v7, :cond_1e

    .line 341
    .line 342
    iget-object v11, v0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 343
    .line 344
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/f1;->b(Landroid/view/View;)I

    .line 345
    .line 346
    .line 347
    move-result v11

    .line 348
    if-gt v11, v8, :cond_1e

    .line 349
    .line 350
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 351
    .line 352
    .line 353
    :cond_1e
    add-int/lit8 v9, v9, 0x1

    .line 354
    .line 355
    goto :goto_d

    .line 356
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    if-ne v6, v4, :cond_22

    .line 361
    .line 362
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    const/4 v7, 0x0

    .line 367
    :goto_e
    if-ge v7, v6, :cond_22

    .line 368
    .line 369
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    if-nez v9, :cond_20

    .line 378
    .line 379
    invoke-virtual {v8, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 380
    .line 381
    .line 382
    :cond_20
    add-int/lit8 v7, v7, 0x1

    .line 383
    .line 384
    goto :goto_e

    .line 385
    :cond_21
    iget v6, v0, Landroidx/leanback/widget/q;->m:I

    .line 386
    .line 387
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    if-eqz v6, :cond_22

    .line 392
    .line 393
    invoke-virtual {v6, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 394
    .line 395
    .line 396
    :cond_22
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-eq v2, v4, :cond_23

    .line 401
    .line 402
    return v5

    .line 403
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isFocusable()Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-eqz v2, :cond_24

    .line 408
    .line 409
    move-object/from16 v2, p1

    .line 410
    .line 411
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    :cond_24
    :goto_f
    return v5
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;Ly0/n;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->y(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/n2;->b()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Landroidx/leanback/widget/q;->k:I

    .line 9
    .line 10
    const/high16 v2, 0x40000

    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    const/16 v4, 0x17

    .line 21
    .line 22
    if-le v0, v3, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/q;->o(I)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_4

    .line 29
    .line 30
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    if-lt v2, v4, :cond_3

    .line 33
    .line 34
    iget v2, p0, Landroidx/leanback/widget/q;->c:I

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    sget-object v2, Ly0/f;->n:Ly0/f;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget-object v2, Ly0/f;->l:Ly0/f;

    .line 44
    .line 45
    :goto_1
    invoke-virtual {p3, v2}, Ly0/n;->b(Ly0/f;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    sget-object v2, Ly0/f;->k:Ly0/f;

    .line 50
    .line 51
    invoke-virtual {p3, v2}, Ly0/n;->b(Ly0/f;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const/16 v2, 0x2000

    .line 56
    .line 57
    invoke-virtual {p3, v2}, Ly0/n;->a(I)V

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-virtual {p3, v3}, Ly0/n;->n(Z)V

    .line 61
    .line 62
    .line 63
    :cond_4
    if-le v0, v3, :cond_8

    .line 64
    .line 65
    sub-int/2addr v0, v3

    .line 66
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->o(I)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_8

    .line 71
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    if-lt v0, v4, :cond_7

    .line 75
    .line 76
    iget v0, p0, Landroidx/leanback/widget/q;->c:I

    .line 77
    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    sget-object v0, Ly0/f;->l:Ly0/f;

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    sget-object v0, Ly0/f;->n:Ly0/f;

    .line 86
    .line 87
    :goto_3
    invoke-virtual {p3, v0}, Ly0/n;->b(Ly0/f;)V

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_6
    sget-object v0, Ly0/f;->m:Ly0/f;

    .line 92
    .line 93
    invoke-virtual {p3, v0}, Ly0/n;->b(Ly0/f;)V

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_7
    const/16 v0, 0x1000

    .line 98
    .line 99
    invoke-virtual {p3, v0}, Ly0/n;->a(I)V

    .line 100
    .line 101
    .line 102
    :goto_4
    invoke-virtual {p3, v3}, Ly0/n;->n(Z)V

    .line 103
    .line 104
    .line 105
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->getRowCountForAccessibility(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-static {v0, v1, p1, v2}, Lkh/h;->b(IIIZ)Lkh/h;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p3, p1}, Ly0/n;->k(Lkh/h;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->q()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;Landroid/view/View;Ly0/n;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 6
    .line 7
    if-eqz p2, :cond_5

    .line 8
    .line 9
    instance-of p2, p1, Landroidx/leanback/widget/n;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    check-cast p1, Landroidx/leanback/widget/n;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p2, -0x1

    .line 21
    if-ltz p1, :cond_2

    .line 22
    .line 23
    iget-object p3, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 24
    .line 25
    invoke-virtual {p3, p1}, Landroidx/leanback/widget/j;->k(I)Landroidx/leanback/widget/i;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    if-nez p3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget p2, p3, Landroidx/leanback/widget/i;->b:I

    .line 33
    .line 34
    :cond_2
    :goto_0
    if-gez p2, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    iget-object p3, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 38
    .line 39
    iget p3, p3, Landroidx/leanback/widget/j;->e:I

    .line 40
    .line 41
    div-int/2addr p1, p3

    .line 42
    iget p3, p0, Landroidx/leanback/widget/q;->c:I

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-nez p3, :cond_4

    .line 47
    .line 48
    invoke-static {p2, v1, p1, v1, v0}, Ly0/m;->a(IIIIZ)Ly0/m;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p4, p1}, Ly0/n;->l(Ly0/m;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    invoke-static {p1, v1, p2, v1, v0}, Ly0/m;->a(IIIIZ)Ly0/m;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p4, p1}, Ly0/n;->l(Ly0/m;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_1
    return-void
.end method

.method public final onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x1

    .line 17
    iget-object v4, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 18
    .line 19
    if-eq p2, v2, :cond_2

    .line 20
    .line 21
    if-ne p2, v3, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0, v4, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_6

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->canScrollVertically()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_4

    .line 34
    .line 35
    if-ne p2, v2, :cond_3

    .line 36
    .line 37
    const/16 v5, 0x82

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/16 v5, 0x21

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, v4, p1, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const/4 v5, 0x0

    .line 48
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->canScrollHorizontally()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_8

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-ne v5, v3, :cond_5

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_5
    const/4 v5, 0x0

    .line 63
    :goto_3
    if-ne p2, v2, :cond_6

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    goto :goto_4

    .line 67
    :cond_6
    const/4 v6, 0x0

    .line 68
    :goto_4
    xor-int/2addr v5, v6

    .line 69
    if-eqz v5, :cond_7

    .line 70
    .line 71
    const/16 v5, 0x42

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_7
    const/16 v5, 0x11

    .line 75
    .line 76
    :goto_5
    invoke-virtual {v0, v4, p1, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_6

    .line 81
    :cond_8
    move-object v0, v5

    .line 82
    :goto_6
    if-eqz v0, :cond_9

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_9
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    const/high16 v6, 0x60000

    .line 90
    .line 91
    if-ne v5, v6, :cond_a

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_a
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->h(I)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_b

    .line 111
    .line 112
    const/4 v6, 0x1

    .line 113
    goto :goto_7

    .line 114
    :cond_b
    const/4 v6, 0x0

    .line 115
    :goto_7
    const/high16 v7, 0x20000

    .line 116
    .line 117
    if-ne v5, v3, :cond_e

    .line 118
    .line 119
    if-nez v6, :cond_c

    .line 120
    .line 121
    iget v1, p0, Landroidx/leanback/widget/q;->k:I

    .line 122
    .line 123
    and-int/lit16 v1, v1, 0x1000

    .line 124
    .line 125
    if-nez v1, :cond_d

    .line 126
    .line 127
    :cond_c
    move-object v0, p1

    .line 128
    :cond_d
    iget v1, p0, Landroidx/leanback/widget/q;->k:I

    .line 129
    .line 130
    and-int/2addr v1, v7

    .line 131
    if-eqz v1, :cond_14

    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->n()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_14

    .line 138
    .line 139
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/q;->t(Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_e
    if-nez v5, :cond_11

    .line 144
    .line 145
    if-nez v6, :cond_f

    .line 146
    .line 147
    iget v2, p0, Landroidx/leanback/widget/q;->k:I

    .line 148
    .line 149
    and-int/lit16 v2, v2, 0x800

    .line 150
    .line 151
    if-nez v2, :cond_10

    .line 152
    .line 153
    :cond_f
    move-object v0, p1

    .line 154
    :cond_10
    iget v2, p0, Landroidx/leanback/widget/q;->k:I

    .line 155
    .line 156
    and-int/2addr v2, v7

    .line 157
    if-eqz v2, :cond_14

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->m()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_14

    .line 164
    .line 165
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/q;->t(Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_11
    const/4 v1, 0x3

    .line 170
    if-ne v5, v1, :cond_12

    .line 171
    .line 172
    if-nez v6, :cond_13

    .line 173
    .line 174
    iget v1, p0, Landroidx/leanback/widget/q;->k:I

    .line 175
    .line 176
    and-int/lit16 v1, v1, 0x4000

    .line 177
    .line 178
    if-nez v1, :cond_14

    .line 179
    .line 180
    goto :goto_8

    .line 181
    :cond_12
    if-ne v5, v2, :cond_14

    .line 182
    .line 183
    if-nez v6, :cond_13

    .line 184
    .line 185
    iget v1, p0, Landroidx/leanback/widget/q;->k:I

    .line 186
    .line 187
    and-int/lit16 v1, v1, 0x2000

    .line 188
    .line 189
    if-nez v1, :cond_14

    .line 190
    .line 191
    :cond_13
    :goto_8
    move-object v0, p1

    .line 192
    :cond_14
    if-eqz v0, :cond_15

    .line 193
    .line 194
    return-object v0

    .line 195
    :cond_15
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    if-eqz p2, :cond_16

    .line 204
    .line 205
    return-object p2

    .line 206
    :cond_16
    if-eqz p1, :cond_17

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_17
    move-object p1, v4

    .line 210
    :goto_9
    return-object p1
.end method

.method public final onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    iget p1, p0, Landroidx/leanback/widget/q;->m:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, v1, Landroidx/leanback/widget/j;->f:I

    .line 11
    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    iget v1, p0, Landroidx/leanback/widget/q;->p:I

    .line 15
    .line 16
    const/high16 v2, -0x80000000

    .line 17
    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    add-int/2addr p1, v1

    .line 21
    if-gt p2, p1, :cond_0

    .line 22
    .line 23
    add-int/2addr v1, p3

    .line 24
    iput v1, p0, Landroidx/leanback/widget/q;->p:I

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/q;->K:La0/h;

    .line 27
    .line 28
    iget-object p1, p1, La0/h;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, La0/m;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v0}, La0/m;->f(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/leanback/widget/q;->p:I

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/leanback/widget/q;->K:La0/h;

    .line 5
    .line 6
    iget-object p1, p1, La0/h;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, La0/m;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    invoke-virtual {p1, v0}, La0/m;->f(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 3

    .line 1
    iget p1, p0, Landroidx/leanback/widget/q;->m:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    iget v1, p0, Landroidx/leanback/widget/q;->p:I

    .line 7
    .line 8
    const/high16 v2, -0x80000000

    .line 9
    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    add-int/2addr p1, v1

    .line 13
    if-gt p2, p1, :cond_0

    .line 14
    .line 15
    add-int v2, p2, p4

    .line 16
    .line 17
    if-ge p1, v2, :cond_0

    .line 18
    .line 19
    sub-int/2addr p3, p2

    .line 20
    add-int/2addr p3, v1

    .line 21
    iput p3, p0, Landroidx/leanback/widget/q;->p:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ge p2, p1, :cond_1

    .line 25
    .line 26
    sub-int v2, p1, p4

    .line 27
    .line 28
    if-le p3, v2, :cond_1

    .line 29
    .line 30
    sub-int/2addr v1, p4

    .line 31
    iput v1, p0, Landroidx/leanback/widget/q;->p:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-le p2, p1, :cond_2

    .line 35
    .line 36
    if-ge p3, p1, :cond_2

    .line 37
    .line 38
    add-int/2addr v1, p4

    .line 39
    iput v1, p0, Landroidx/leanback/widget/q;->p:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/q;->K:La0/h;

    .line 42
    .line 43
    iget-object p1, p1, La0/h;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, La0/m;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v0}, La0/m;->f(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public final onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 1
    iget p1, p0, Landroidx/leanback/widget/q;->m:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget v1, v1, Landroidx/leanback/widget/j;->f:I

    .line 11
    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Landroidx/leanback/widget/q;->p:I

    .line 15
    .line 16
    const/high16 v2, -0x80000000

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    add-int v3, p1, v1

    .line 21
    .line 22
    if-gt p2, v3, :cond_1

    .line 23
    .line 24
    add-int v4, p2, p3

    .line 25
    .line 26
    if-le v4, v3, :cond_0

    .line 27
    .line 28
    sub-int/2addr p2, v3

    .line 29
    add-int/2addr p2, v1

    .line 30
    add-int/2addr p2, p1

    .line 31
    iput p2, p0, Landroidx/leanback/widget/q;->m:I

    .line 32
    .line 33
    iput v2, p0, Landroidx/leanback/widget/q;->p:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sub-int/2addr v1, p3

    .line 37
    iput v1, p0, Landroidx/leanback/widget/q;->p:I

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/q;->K:La0/h;

    .line 40
    .line 41
    iget-object p1, p1, La0/h;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, La0/m;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, v0}, La0/m;->f(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    add-int/2addr p3, p2

    .line 2
    :goto_0
    if-ge p2, p3, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/leanback/widget/q;->K:La0/h;

    .line 5
    .line 6
    iget-object v0, p1, La0/h;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, La0/m;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, La0/m;->e()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, La0/h;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, La0/m;

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, La0/m;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 26

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    iget v0, v6, Landroidx/leanback/widget/q;->B:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/n2;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 18
    .line 19
    and-int/lit8 v0, v0, 0x40

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    iget v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 30
    .line 31
    or-int/lit16 v0, v0, 0x80

    .line 32
    .line 33
    iput v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 37
    .line 38
    and-int/lit16 v1, v0, 0x200

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-object v1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 44
    .line 45
    iput-object v1, v6, Landroidx/leanback/widget/q;->u:[I

    .line 46
    .line 47
    and-int/lit16 v0, v0, -0x401

    .line 48
    .line 49
    iput v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/q;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/g2;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    and-int/lit8 v0, v0, -0x4

    .line 56
    .line 57
    const/4 v8, 0x1

    .line 58
    or-int/2addr v0, v8

    .line 59
    iput v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 60
    .line 61
    invoke-virtual/range {p0 .. p2}, Landroidx/leanback/widget/q;->y(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 62
    .line 63
    .line 64
    iget-boolean v0, v7, Landroidx/recyclerview/widget/n2;->g:Z

    .line 65
    .line 66
    const/high16 v1, -0x80000000

    .line 67
    .line 68
    iget-object v9, v6, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    if-eqz v0, :cond_b

    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->I()V

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget-object v3, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 81
    .line 82
    if-eqz v3, :cond_a

    .line 83
    .line 84
    if-lez v0, :cond_a

    .line 85
    .line 86
    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    add-int/lit8 v4, v0, -0x1

    .line 99
    .line 100
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const v2, 0x7fffffff

    .line 113
    .line 114
    .line 115
    :goto_0
    if-ge v10, v0, :cond_8

    .line 116
    .line 117
    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Landroidx/leanback/widget/n;

    .line 126
    .line 127
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-nez v11, :cond_6

    .line 136
    .line 137
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    if-nez v11, :cond_6

    .line 142
    .line 143
    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-nez v11, :cond_6

    .line 148
    .line 149
    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-nez v11, :cond_4

    .line 154
    .line 155
    iget v11, v6, Landroidx/leanback/widget/q;->m:I

    .line 156
    .line 157
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-eq v11, v12, :cond_6

    .line 162
    .line 163
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    if-eqz v11, :cond_5

    .line 168
    .line 169
    iget v11, v6, Landroidx/leanback/widget/q;->m:I

    .line 170
    .line 171
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-ne v11, v7, :cond_6

    .line 176
    .line 177
    :cond_5
    if-lt v8, v3, :cond_6

    .line 178
    .line 179
    if-le v8, v4, :cond_7

    .line 180
    .line 181
    :cond_6
    iget-object v7, v6, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 182
    .line 183
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/f1;->e(Landroid/view/View;)I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    iget-object v7, v6, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 192
    .line 193
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/f1;->b(Landroid/view/View;)I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_8
    if-le v1, v2, :cond_9

    .line 205
    .line 206
    sub-int/2addr v1, v2

    .line 207
    iput v1, v6, Landroidx/leanback/widget/q;->g:I

    .line 208
    .line 209
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->a()V

    .line 210
    .line 211
    .line 212
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->s()V

    .line 213
    .line 214
    .line 215
    :cond_a
    iget v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 216
    .line 217
    and-int/lit8 v0, v0, -0x4

    .line 218
    .line 219
    iput v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 220
    .line 221
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->q()V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_b
    iget-boolean v0, v7, Landroidx/recyclerview/widget/n2;->k:Z

    .line 226
    .line 227
    iget-object v11, v6, Landroidx/leanback/widget/q;->h:Landroid/util/SparseIntArray;

    .line 228
    .line 229
    if-eqz v0, :cond_d

    .line 230
    .line 231
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->clear()V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    const/4 v3, 0x0

    .line 239
    :goto_1
    if-ge v3, v0, :cond_d

    .line 240
    .line 241
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-ltz v4, :cond_c

    .line 254
    .line 255
    iget-object v5, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 256
    .line 257
    invoke-virtual {v5, v4}, Landroidx/leanback/widget/j;->k(I)Landroidx/leanback/widget/i;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    if-eqz v5, :cond_c

    .line 262
    .line 263
    iget v5, v5, Landroidx/leanback/widget/i;->b:I

    .line 264
    .line 265
    invoke-virtual {v11, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    .line 267
    .line 268
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_e

    .line 276
    .line 277
    iget v0, v6, Landroidx/leanback/widget/q;->E:I

    .line 278
    .line 279
    if-nez v0, :cond_e

    .line 280
    .line 281
    const/4 v12, 0x1

    .line 282
    goto :goto_2

    .line 283
    :cond_e
    const/4 v12, 0x0

    .line 284
    :goto_2
    iget v0, v6, Landroidx/leanback/widget/q;->m:I

    .line 285
    .line 286
    const/4 v3, -0x1

    .line 287
    if-eq v0, v3, :cond_f

    .line 288
    .line 289
    iget v4, v6, Landroidx/leanback/widget/q;->p:I

    .line 290
    .line 291
    if-eq v4, v1, :cond_f

    .line 292
    .line 293
    add-int/2addr v0, v4

    .line 294
    iput v0, v6, Landroidx/leanback/widget/q;->m:I

    .line 295
    .line 296
    :cond_f
    iput v10, v6, Landroidx/leanback/widget/q;->p:I

    .line 297
    .line 298
    iget v0, v6, Landroidx/leanback/widget/q;->m:I

    .line 299
    .line 300
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v13

    .line 304
    iget v14, v6, Landroidx/leanback/widget/q;->m:I

    .line 305
    .line 306
    invoke-virtual {v9}, Landroid/view/View;->hasFocus()Z

    .line 307
    .line 308
    .line 309
    move-result v15

    .line 310
    iget-object v0, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 311
    .line 312
    if-eqz v0, :cond_10

    .line 313
    .line 314
    iget v4, v0, Landroidx/leanback/widget/j;->f:I

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_10
    const/4 v4, -0x1

    .line 318
    :goto_3
    if-eqz v0, :cond_11

    .line 319
    .line 320
    iget v0, v0, Landroidx/leanback/widget/j;->g:I

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_11
    const/4 v0, -0x1

    .line 324
    :goto_4
    iget v5, v6, Landroidx/leanback/widget/q;->c:I

    .line 325
    .line 326
    if-nez v5, :cond_12

    .line 327
    .line 328
    iget v5, v7, Landroidx/recyclerview/widget/n2;->o:I

    .line 329
    .line 330
    iget v2, v7, Landroidx/recyclerview/widget/n2;->p:I

    .line 331
    .line 332
    :goto_5
    move/from16 v25, v5

    .line 333
    .line 334
    move v5, v2

    .line 335
    move/from16 v2, v25

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_12
    iget v2, v7, Landroidx/recyclerview/widget/n2;->o:I

    .line 339
    .line 340
    iget v5, v7, Landroidx/recyclerview/widget/n2;->p:I

    .line 341
    .line 342
    goto :goto_5

    .line 343
    :goto_6
    iget-object v1, v6, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 344
    .line 345
    invoke-virtual {v1}, Landroidx/recyclerview/widget/n2;->b()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_13

    .line 350
    .line 351
    iput v3, v6, Landroidx/leanback/widget/q;->m:I

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_13
    iget v10, v6, Landroidx/leanback/widget/q;->m:I

    .line 355
    .line 356
    if-lt v10, v1, :cond_14

    .line 357
    .line 358
    sub-int/2addr v1, v8

    .line 359
    iput v1, v6, Landroidx/leanback/widget/q;->m:I

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_14
    if-ne v10, v3, :cond_15

    .line 363
    .line 364
    if-lez v1, :cond_15

    .line 365
    .line 366
    const/4 v1, 0x0

    .line 367
    iput v1, v6, Landroidx/leanback/widget/q;->m:I

    .line 368
    .line 369
    :cond_15
    :goto_7
    iget-object v1, v6, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 370
    .line 371
    iget-boolean v1, v1, Landroidx/recyclerview/widget/n2;->f:Z

    .line 372
    .line 373
    iget-object v10, v6, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 374
    .line 375
    if-nez v1, :cond_20

    .line 376
    .line 377
    iget-object v1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 378
    .line 379
    if-eqz v1, :cond_20

    .line 380
    .line 381
    iget v8, v1, Landroidx/leanback/widget/j;->f:I

    .line 382
    .line 383
    if-ltz v8, :cond_20

    .line 384
    .line 385
    iget v8, v6, Landroidx/leanback/widget/q;->k:I

    .line 386
    .line 387
    and-int/lit16 v8, v8, 0x100

    .line 388
    .line 389
    if-nez v8, :cond_20

    .line 390
    .line 391
    iget v1, v1, Landroidx/leanback/widget/j;->e:I

    .line 392
    .line 393
    iget v8, v6, Landroidx/leanback/widget/q;->B:I

    .line 394
    .line 395
    if-ne v1, v8, :cond_20

    .line 396
    .line 397
    iget-object v0, v10, La2/w0;->c:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v0, Landroidx/leanback/widget/x0;

    .line 400
    .line 401
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    iput v1, v0, Landroidx/leanback/widget/x0;->i:I

    .line 406
    .line 407
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    iget-object v1, v10, La2/w0;->b:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v1, Landroidx/leanback/widget/x0;

    .line 414
    .line 415
    iput v0, v1, Landroidx/leanback/widget/x0;->i:I

    .line 416
    .line 417
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    iget-object v4, v10, La2/w0;->c:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v4, Landroidx/leanback/widget/x0;

    .line 428
    .line 429
    iput v0, v4, Landroidx/leanback/widget/x0;->j:I

    .line 430
    .line 431
    iput v3, v4, Landroidx/leanback/widget/x0;->k:I

    .line 432
    .line 433
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    iput v0, v1, Landroidx/leanback/widget/x0;->j:I

    .line 442
    .line 443
    iput v3, v1, Landroidx/leanback/widget/x0;->k:I

    .line 444
    .line 445
    iget-object v0, v10, La2/w0;->d:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v0, Landroidx/leanback/widget/x0;

    .line 448
    .line 449
    iget v0, v0, Landroidx/leanback/widget/x0;->i:I

    .line 450
    .line 451
    iput v0, v6, Landroidx/leanback/widget/q;->H:I

    .line 452
    .line 453
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->L()V

    .line 454
    .line 455
    .line 456
    iget-object v0, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 457
    .line 458
    iget v1, v6, Landroidx/leanback/widget/q;->y:I

    .line 459
    .line 460
    iput v1, v0, Landroidx/leanback/widget/j;->d:I

    .line 461
    .line 462
    iget v1, v6, Landroidx/leanback/widget/q;->k:I

    .line 463
    .line 464
    or-int/lit8 v1, v1, 0x4

    .line 465
    .line 466
    iput v1, v6, Landroidx/leanback/widget/q;->k:I

    .line 467
    .line 468
    iget v1, v6, Landroidx/leanback/widget/q;->m:I

    .line 469
    .line 470
    iput v1, v0, Landroidx/leanback/widget/j;->i:I

    .line 471
    .line 472
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    iget-object v0, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 477
    .line 478
    iget v0, v0, Landroidx/leanback/widget/j;->f:I

    .line 479
    .line 480
    iget v1, v6, Landroidx/leanback/widget/q;->k:I

    .line 481
    .line 482
    and-int/lit8 v1, v1, -0x9

    .line 483
    .line 484
    iput v1, v6, Landroidx/leanback/widget/q;->k:I

    .line 485
    .line 486
    move v4, v0

    .line 487
    const/4 v3, 0x0

    .line 488
    :goto_8
    if-ge v3, v8, :cond_1e

    .line 489
    .line 490
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-static {v0}, Landroidx/leanback/widget/q;->e(Landroid/view/View;)I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    if-eq v4, v1, :cond_16

    .line 499
    .line 500
    :goto_9
    move v7, v3

    .line 501
    move/from16 v24, v5

    .line 502
    .line 503
    move-object/from16 v17, v9

    .line 504
    .line 505
    move-object/from16 v23, v11

    .line 506
    .line 507
    move-object/from16 v19, v13

    .line 508
    .line 509
    move/from16 v21, v14

    .line 510
    .line 511
    move v11, v2

    .line 512
    move v9, v4

    .line 513
    goto/16 :goto_e

    .line 514
    .line 515
    :cond_16
    iget-object v1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 516
    .line 517
    invoke-virtual {v1, v4}, Landroidx/leanback/widget/j;->k(I)Landroidx/leanback/widget/i;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    if-nez v1, :cond_17

    .line 522
    .line 523
    goto :goto_9

    .line 524
    :cond_17
    move/from16 v17, v2

    .line 525
    .line 526
    iget v2, v1, Landroidx/leanback/widget/i;->b:I

    .line 527
    .line 528
    invoke-virtual {v6, v2}, Landroidx/leanback/widget/q;->j(I)I

    .line 529
    .line 530
    .line 531
    move-result v2

    .line 532
    move/from16 v18, v5

    .line 533
    .line 534
    iget-object v5, v10, La2/w0;->e:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v5, Landroidx/leanback/widget/x0;

    .line 537
    .line 538
    iget v5, v5, Landroidx/leanback/widget/x0;->j:I

    .line 539
    .line 540
    add-int/2addr v2, v5

    .line 541
    iget v5, v6, Landroidx/leanback/widget/q;->r:I

    .line 542
    .line 543
    sub-int v5, v2, v5

    .line 544
    .line 545
    iget-object v2, v6, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 546
    .line 547
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/f1;->e(Landroid/view/View;)I

    .line 548
    .line 549
    .line 550
    move-result v16

    .line 551
    sget-object v2, Landroidx/leanback/widget/q;->N:Landroid/graphics/Rect;

    .line 552
    .line 553
    invoke-virtual {v6, v0, v2}, Landroidx/leanback/widget/q;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 554
    .line 555
    .line 556
    move-object/from16 v19, v13

    .line 557
    .line 558
    iget v13, v6, Landroidx/leanback/widget/q;->c:I

    .line 559
    .line 560
    if-nez v13, :cond_18

    .line 561
    .line 562
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    :goto_a
    move v13, v2

    .line 567
    goto :goto_b

    .line 568
    :cond_18
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    goto :goto_a

    .line 573
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    check-cast v2, Landroidx/leanback/widget/n;

    .line 578
    .line 579
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->viewNeedsUpdate()Z

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    if-eqz v2, :cond_19

    .line 584
    .line 585
    iget v2, v6, Landroidx/leanback/widget/q;->k:I

    .line 586
    .line 587
    or-int/lit8 v2, v2, 0x8

    .line 588
    .line 589
    iput v2, v6, Landroidx/leanback/widget/q;->k:I

    .line 590
    .line 591
    iget-object v2, v6, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 592
    .line 593
    invoke-virtual {v6, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/g2;)V

    .line 594
    .line 595
    .line 596
    iget-object v0, v6, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 597
    .line 598
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/g2;->d(I)Landroid/view/View;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v6, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 603
    .line 604
    .line 605
    :cond_19
    move-object v2, v0

    .line 606
    invoke-virtual {v6, v2}, Landroidx/leanback/widget/q;->r(Landroid/view/View;)V

    .line 607
    .line 608
    .line 609
    iget v0, v6, Landroidx/leanback/widget/q;->c:I

    .line 610
    .line 611
    if-nez v0, :cond_1a

    .line 612
    .line 613
    invoke-virtual {v6, v2}, Landroidx/leanback/widget/q;->g(Landroid/view/View;)I

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    :goto_c
    add-int v20, v16, v0

    .line 618
    .line 619
    goto :goto_d

    .line 620
    :cond_1a
    invoke-virtual {v6, v2}, Landroidx/leanback/widget/q;->f(Landroid/view/View;)I

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    goto :goto_c

    .line 625
    :goto_d
    iget v1, v1, Landroidx/leanback/widget/i;->b:I

    .line 626
    .line 627
    move/from16 v21, v14

    .line 628
    .line 629
    move v14, v0

    .line 630
    move-object/from16 v0, p0

    .line 631
    .line 632
    move/from16 v22, v1

    .line 633
    .line 634
    move-object v1, v2

    .line 635
    move-object/from16 v23, v11

    .line 636
    .line 637
    move/from16 v11, v17

    .line 638
    .line 639
    move/from16 v2, v22

    .line 640
    .line 641
    move v7, v3

    .line 642
    move/from16 v3, v16

    .line 643
    .line 644
    move-object/from16 v17, v9

    .line 645
    .line 646
    move v9, v4

    .line 647
    move/from16 v4, v20

    .line 648
    .line 649
    move/from16 v24, v18

    .line 650
    .line 651
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->p(Landroid/view/View;IIII)V

    .line 652
    .line 653
    .line 654
    if-eq v13, v14, :cond_1d

    .line 655
    .line 656
    :goto_e
    iget-object v0, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 657
    .line 658
    iget v0, v0, Landroidx/leanback/widget/j;->g:I

    .line 659
    .line 660
    const/4 v1, 0x1

    .line 661
    sub-int/2addr v8, v1

    .line 662
    :goto_f
    if-lt v8, v7, :cond_1b

    .line 663
    .line 664
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    iget-object v2, v6, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 669
    .line 670
    invoke-virtual {v6, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/g2;)V

    .line 671
    .line 672
    .line 673
    add-int/lit8 v8, v8, -0x1

    .line 674
    .line 675
    goto :goto_f

    .line 676
    :cond_1b
    iget-object v1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 677
    .line 678
    invoke-virtual {v1, v9}, Landroidx/leanback/widget/j;->l(I)V

    .line 679
    .line 680
    .line 681
    iget v1, v6, Landroidx/leanback/widget/q;->k:I

    .line 682
    .line 683
    const/high16 v2, 0x10000

    .line 684
    .line 685
    and-int/2addr v1, v2

    .line 686
    if-eqz v1, :cond_1c

    .line 687
    .line 688
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->a()V

    .line 689
    .line 690
    .line 691
    iget v1, v6, Landroidx/leanback/widget/q;->m:I

    .line 692
    .line 693
    if-ltz v1, :cond_1f

    .line 694
    .line 695
    if-gt v1, v0, :cond_1f

    .line 696
    .line 697
    :goto_10
    iget-object v0, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 698
    .line 699
    iget v1, v0, Landroidx/leanback/widget/j;->g:I

    .line 700
    .line 701
    iget v2, v6, Landroidx/leanback/widget/q;->m:I

    .line 702
    .line 703
    if-ge v1, v2, :cond_1f

    .line 704
    .line 705
    invoke-virtual {v0}, Landroidx/leanback/widget/j;->a()Z

    .line 706
    .line 707
    .line 708
    goto :goto_10

    .line 709
    :cond_1c
    :goto_11
    iget-object v1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 710
    .line 711
    invoke-virtual {v1}, Landroidx/leanback/widget/j;->a()Z

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    if-eqz v1, :cond_1f

    .line 716
    .line 717
    iget-object v1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 718
    .line 719
    iget v1, v1, Landroidx/leanback/widget/j;->g:I

    .line 720
    .line 721
    if-ge v1, v0, :cond_1f

    .line 722
    .line 723
    goto :goto_11

    .line 724
    :cond_1d
    add-int/lit8 v3, v7, 0x1

    .line 725
    .line 726
    add-int/lit8 v4, v9, 0x1

    .line 727
    .line 728
    move-object/from16 v7, p2

    .line 729
    .line 730
    move v2, v11

    .line 731
    move-object/from16 v9, v17

    .line 732
    .line 733
    move-object/from16 v13, v19

    .line 734
    .line 735
    move/from16 v14, v21

    .line 736
    .line 737
    move-object/from16 v11, v23

    .line 738
    .line 739
    move/from16 v5, v24

    .line 740
    .line 741
    goto/16 :goto_8

    .line 742
    .line 743
    :cond_1e
    move/from16 v24, v5

    .line 744
    .line 745
    move-object/from16 v17, v9

    .line 746
    .line 747
    move-object/from16 v23, v11

    .line 748
    .line 749
    move-object/from16 v19, v13

    .line 750
    .line 751
    move/from16 v21, v14

    .line 752
    .line 753
    move v11, v2

    .line 754
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->K()V

    .line 755
    .line 756
    .line 757
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->L()V

    .line 758
    .line 759
    .line 760
    goto/16 :goto_17

    .line 761
    .line 762
    :cond_20
    move/from16 v24, v5

    .line 763
    .line 764
    move-object/from16 v17, v9

    .line 765
    .line 766
    move-object/from16 v23, v11

    .line 767
    .line 768
    move-object/from16 v19, v13

    .line 769
    .line 770
    move/from16 v21, v14

    .line 771
    .line 772
    move v11, v2

    .line 773
    iget v1, v6, Landroidx/leanback/widget/q;->k:I

    .line 774
    .line 775
    and-int/lit16 v2, v1, -0x101

    .line 776
    .line 777
    iput v2, v6, Landroidx/leanback/widget/q;->k:I

    .line 778
    .line 779
    iget-object v2, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 780
    .line 781
    if-eqz v2, :cond_22

    .line 782
    .line 783
    iget v5, v6, Landroidx/leanback/widget/q;->B:I

    .line 784
    .line 785
    iget v7, v2, Landroidx/leanback/widget/j;->e:I

    .line 786
    .line 787
    if-ne v5, v7, :cond_22

    .line 788
    .line 789
    const/high16 v5, 0x40000

    .line 790
    .line 791
    and-int/2addr v1, v5

    .line 792
    if-eqz v1, :cond_21

    .line 793
    .line 794
    const/4 v1, 0x1

    .line 795
    goto :goto_12

    .line 796
    :cond_21
    const/4 v1, 0x0

    .line 797
    :goto_12
    iget-boolean v2, v2, Landroidx/leanback/widget/j;->c:Z

    .line 798
    .line 799
    if-eq v1, v2, :cond_25

    .line 800
    .line 801
    :cond_22
    iget v1, v6, Landroidx/leanback/widget/q;->B:I

    .line 802
    .line 803
    const/4 v2, 0x1

    .line 804
    if-ne v1, v2, :cond_23

    .line 805
    .line 806
    new-instance v1, Landroidx/leanback/widget/p0;

    .line 807
    .line 808
    invoke-direct {v1}, Landroidx/leanback/widget/p0;-><init>()V

    .line 809
    .line 810
    .line 811
    goto :goto_13

    .line 812
    :cond_23
    new-instance v2, Landroidx/leanback/widget/s0;

    .line 813
    .line 814
    invoke-direct {v2}, Landroidx/leanback/widget/s0;-><init>()V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v2, v1}, Landroidx/leanback/widget/j;->n(I)V

    .line 818
    .line 819
    .line 820
    move-object v1, v2

    .line 821
    :goto_13
    iput-object v1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 822
    .line 823
    iget-object v2, v6, Landroidx/leanback/widget/q;->M:Landroidx/leanback/widget/k;

    .line 824
    .line 825
    iput-object v2, v1, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 826
    .line 827
    iget v2, v6, Landroidx/leanback/widget/q;->k:I

    .line 828
    .line 829
    const/high16 v5, 0x40000

    .line 830
    .line 831
    and-int/2addr v2, v5

    .line 832
    if-eqz v2, :cond_24

    .line 833
    .line 834
    const/4 v2, 0x1

    .line 835
    goto :goto_14

    .line 836
    :cond_24
    const/4 v2, 0x0

    .line 837
    :goto_14
    iput-boolean v2, v1, Landroidx/leanback/widget/j;->c:Z

    .line 838
    .line 839
    :cond_25
    iget-object v1, v10, La2/w0;->d:Ljava/lang/Object;

    .line 840
    .line 841
    check-cast v1, Landroidx/leanback/widget/x0;

    .line 842
    .line 843
    const/high16 v2, -0x80000000

    .line 844
    .line 845
    iput v2, v1, Landroidx/leanback/widget/x0;->b:I

    .line 846
    .line 847
    const v2, 0x7fffffff

    .line 848
    .line 849
    .line 850
    iput v2, v1, Landroidx/leanback/widget/x0;->a:I

    .line 851
    .line 852
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 853
    .line 854
    .line 855
    move-result v1

    .line 856
    iget-object v2, v10, La2/w0;->c:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v2, Landroidx/leanback/widget/x0;

    .line 859
    .line 860
    iput v1, v2, Landroidx/leanback/widget/x0;->i:I

    .line 861
    .line 862
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    iget-object v5, v10, La2/w0;->b:Ljava/lang/Object;

    .line 867
    .line 868
    check-cast v5, Landroidx/leanback/widget/x0;

    .line 869
    .line 870
    iput v1, v5, Landroidx/leanback/widget/x0;->i:I

    .line 871
    .line 872
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 877
    .line 878
    .line 879
    move-result v7

    .line 880
    iput v1, v2, Landroidx/leanback/widget/x0;->j:I

    .line 881
    .line 882
    iput v7, v2, Landroidx/leanback/widget/x0;->k:I

    .line 883
    .line 884
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    iput v1, v5, Landroidx/leanback/widget/x0;->j:I

    .line 893
    .line 894
    iput v2, v5, Landroidx/leanback/widget/x0;->k:I

    .line 895
    .line 896
    iget-object v1, v10, La2/w0;->d:Ljava/lang/Object;

    .line 897
    .line 898
    check-cast v1, Landroidx/leanback/widget/x0;

    .line 899
    .line 900
    iget v1, v1, Landroidx/leanback/widget/x0;->i:I

    .line 901
    .line 902
    iput v1, v6, Landroidx/leanback/widget/q;->H:I

    .line 903
    .line 904
    const/4 v1, 0x0

    .line 905
    iput v1, v6, Landroidx/leanback/widget/q;->r:I

    .line 906
    .line 907
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->L()V

    .line 908
    .line 909
    .line 910
    iget-object v1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 911
    .line 912
    iget v2, v6, Landroidx/leanback/widget/q;->y:I

    .line 913
    .line 914
    iput v2, v1, Landroidx/leanback/widget/j;->d:I

    .line 915
    .line 916
    iget-object v1, v6, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 917
    .line 918
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/g2;)V

    .line 919
    .line 920
    .line 921
    iget-object v1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 922
    .line 923
    iput v3, v1, Landroidx/leanback/widget/j;->g:I

    .line 924
    .line 925
    iput v3, v1, Landroidx/leanback/widget/j;->f:I

    .line 926
    .line 927
    iget-object v2, v10, La2/w0;->d:Ljava/lang/Object;

    .line 928
    .line 929
    check-cast v2, Landroidx/leanback/widget/x0;

    .line 930
    .line 931
    const/high16 v5, -0x80000000

    .line 932
    .line 933
    iput v5, v2, Landroidx/leanback/widget/x0;->b:I

    .line 934
    .line 935
    iput v5, v2, Landroidx/leanback/widget/x0;->d:I

    .line 936
    .line 937
    const v5, 0x7fffffff

    .line 938
    .line 939
    .line 940
    iput v5, v2, Landroidx/leanback/widget/x0;->a:I

    .line 941
    .line 942
    iput v5, v2, Landroidx/leanback/widget/x0;->c:I

    .line 943
    .line 944
    iget v2, v6, Landroidx/leanback/widget/q;->k:I

    .line 945
    .line 946
    and-int/lit8 v5, v2, -0x5

    .line 947
    .line 948
    iput v5, v6, Landroidx/leanback/widget/q;->k:I

    .line 949
    .line 950
    and-int/lit8 v2, v2, -0x15

    .line 951
    .line 952
    if-eqz v15, :cond_26

    .line 953
    .line 954
    const/16 v5, 0x10

    .line 955
    .line 956
    goto :goto_15

    .line 957
    :cond_26
    const/4 v5, 0x0

    .line 958
    :goto_15
    or-int/2addr v2, v5

    .line 959
    iput v2, v6, Landroidx/leanback/widget/q;->k:I

    .line 960
    .line 961
    if-eqz v12, :cond_28

    .line 962
    .line 963
    if-ltz v4, :cond_27

    .line 964
    .line 965
    iget v2, v6, Landroidx/leanback/widget/q;->m:I

    .line 966
    .line 967
    if-gt v2, v0, :cond_27

    .line 968
    .line 969
    if-ge v2, v4, :cond_28

    .line 970
    .line 971
    :cond_27
    iget v4, v6, Landroidx/leanback/widget/q;->m:I

    .line 972
    .line 973
    move v0, v4

    .line 974
    :cond_28
    iput v4, v1, Landroidx/leanback/widget/j;->i:I

    .line 975
    .line 976
    if-eq v0, v3, :cond_29

    .line 977
    .line 978
    :goto_16
    iget-object v1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 979
    .line 980
    invoke-virtual {v1}, Landroidx/leanback/widget/j;->a()Z

    .line 981
    .line 982
    .line 983
    move-result v1

    .line 984
    if-eqz v1, :cond_29

    .line 985
    .line 986
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    if-nez v1, :cond_29

    .line 991
    .line 992
    goto :goto_16

    .line 993
    :cond_29
    :goto_17
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->K()V

    .line 994
    .line 995
    .line 996
    iget-object v0, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 997
    .line 998
    iget v7, v0, Landroidx/leanback/widget/j;->f:I

    .line 999
    .line 1000
    iget v8, v0, Landroidx/leanback/widget/j;->g:I

    .line 1001
    .line 1002
    neg-int v9, v11

    .line 1003
    move/from16 v10, v24

    .line 1004
    .line 1005
    neg-int v13, v10

    .line 1006
    iget v0, v6, Landroidx/leanback/widget/q;->m:I

    .line 1007
    .line 1008
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v14

    .line 1012
    if-eqz v14, :cond_2a

    .line 1013
    .line 1014
    if-eqz v12, :cond_2a

    .line 1015
    .line 1016
    invoke-virtual {v14}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    const/4 v3, 0x0

    .line 1021
    move-object/from16 v0, p0

    .line 1022
    .line 1023
    move-object v1, v14

    .line 1024
    move v4, v9

    .line 1025
    move v5, v13

    .line 1026
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->C(Landroid/view/View;Landroid/view/View;ZII)V

    .line 1027
    .line 1028
    .line 1029
    :cond_2a
    if-eqz v14, :cond_2c

    .line 1030
    .line 1031
    if-eqz v15, :cond_2c

    .line 1032
    .line 1033
    invoke-virtual {v14}, Landroid/view/View;->hasFocus()Z

    .line 1034
    .line 1035
    .line 1036
    move-result v0

    .line 1037
    if-nez v0, :cond_2c

    .line 1038
    .line 1039
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    .line 1040
    .line 1041
    .line 1042
    :cond_2b
    move-object/from16 v9, v17

    .line 1043
    .line 1044
    goto :goto_1b

    .line 1045
    :cond_2c
    if-nez v15, :cond_2b

    .line 1046
    .line 1047
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->hasFocus()Z

    .line 1048
    .line 1049
    .line 1050
    move-result v0

    .line 1051
    if-nez v0, :cond_2b

    .line 1052
    .line 1053
    if-eqz v14, :cond_2e

    .line 1054
    .line 1055
    invoke-virtual {v14}, Landroid/view/View;->hasFocusable()Z

    .line 1056
    .line 1057
    .line 1058
    move-result v0

    .line 1059
    if-eqz v0, :cond_2e

    .line 1060
    .line 1061
    move-object/from16 v5, v17

    .line 1062
    .line 1063
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1064
    .line 1065
    .line 1066
    :cond_2d
    :goto_18
    move-object v1, v14

    .line 1067
    goto :goto_1a

    .line 1068
    :cond_2e
    move-object/from16 v5, v17

    .line 1069
    .line 1070
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 1071
    .line 1072
    .line 1073
    move-result v0

    .line 1074
    const/4 v1, 0x0

    .line 1075
    :goto_19
    if-ge v1, v0, :cond_2d

    .line 1076
    .line 1077
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v14

    .line 1081
    if-eqz v14, :cond_2f

    .line 1082
    .line 1083
    invoke-virtual {v14}, Landroid/view/View;->hasFocusable()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v2

    .line 1087
    if-eqz v2, :cond_2f

    .line 1088
    .line 1089
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1090
    .line 1091
    .line 1092
    goto :goto_18

    .line 1093
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 1094
    .line 1095
    goto :goto_19

    .line 1096
    :goto_1a
    if-eqz v12, :cond_30

    .line 1097
    .line 1098
    if-eqz v1, :cond_30

    .line 1099
    .line 1100
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    if-eqz v0, :cond_30

    .line 1105
    .line 1106
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v2

    .line 1110
    const/4 v3, 0x0

    .line 1111
    move-object/from16 v0, p0

    .line 1112
    .line 1113
    move v4, v9

    .line 1114
    move-object v9, v5

    .line 1115
    move v5, v13

    .line 1116
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->C(Landroid/view/View;Landroid/view/View;ZII)V

    .line 1117
    .line 1118
    .line 1119
    goto :goto_1b

    .line 1120
    :cond_30
    move-object v9, v5

    .line 1121
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->a()V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->s()V

    .line 1125
    .line 1126
    .line 1127
    iget-object v0, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 1128
    .line 1129
    iget v1, v0, Landroidx/leanback/widget/j;->f:I

    .line 1130
    .line 1131
    if-ne v1, v7, :cond_4c

    .line 1132
    .line 1133
    iget v0, v0, Landroidx/leanback/widget/j;->g:I

    .line 1134
    .line 1135
    if-ne v0, v8, :cond_4c

    .line 1136
    .line 1137
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->x()V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->w()V

    .line 1141
    .line 1142
    .line 1143
    move-object/from16 v0, p2

    .line 1144
    .line 1145
    iget-boolean v0, v0, Landroidx/recyclerview/widget/n2;->k:Z

    .line 1146
    .line 1147
    if-eqz v0, :cond_43

    .line 1148
    .line 1149
    iget-object v0, v6, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 1150
    .line 1151
    iget-object v0, v0, Landroidx/recyclerview/widget/g2;->d:Ljava/util/List;

    .line 1152
    .line 1153
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1154
    .line 1155
    .line 1156
    move-result v1

    .line 1157
    if-nez v1, :cond_31

    .line 1158
    .line 1159
    goto/16 :goto_27

    .line 1160
    .line 1161
    :cond_31
    iget-object v2, v6, Landroidx/leanback/widget/q;->i:[I

    .line 1162
    .line 1163
    if-eqz v2, :cond_32

    .line 1164
    .line 1165
    array-length v3, v2

    .line 1166
    if-le v1, v3, :cond_35

    .line 1167
    .line 1168
    :cond_32
    if-nez v2, :cond_33

    .line 1169
    .line 1170
    const/16 v2, 0x10

    .line 1171
    .line 1172
    goto :goto_1c

    .line 1173
    :cond_33
    array-length v2, v2

    .line 1174
    :goto_1c
    if-ge v2, v1, :cond_34

    .line 1175
    .line 1176
    shl-int/lit8 v2, v2, 0x1

    .line 1177
    .line 1178
    goto :goto_1c

    .line 1179
    :cond_34
    new-array v2, v2, [I

    .line 1180
    .line 1181
    iput-object v2, v6, Landroidx/leanback/widget/q;->i:[I

    .line 1182
    .line 1183
    :cond_35
    const/4 v2, 0x0

    .line 1184
    const/4 v3, 0x0

    .line 1185
    :goto_1d
    if-ge v2, v1, :cond_37

    .line 1186
    .line 1187
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v4

    .line 1191
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1192
    .line 1193
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 1194
    .line 1195
    .line 1196
    move-result v4

    .line 1197
    if-ltz v4, :cond_36

    .line 1198
    .line 1199
    iget-object v5, v6, Landroidx/leanback/widget/q;->i:[I

    .line 1200
    .line 1201
    add-int/lit8 v7, v3, 0x1

    .line 1202
    .line 1203
    aput v4, v5, v3

    .line 1204
    .line 1205
    move v3, v7

    .line 1206
    :cond_36
    add-int/lit8 v2, v2, 0x1

    .line 1207
    .line 1208
    goto :goto_1d

    .line 1209
    :cond_37
    if-lez v3, :cond_41

    .line 1210
    .line 1211
    iget-object v0, v6, Landroidx/leanback/widget/q;->i:[I

    .line 1212
    .line 1213
    const/4 v1, 0x0

    .line 1214
    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->sort([III)V

    .line 1215
    .line 1216
    .line 1217
    iget-object v0, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 1218
    .line 1219
    iget-object v2, v6, Landroidx/leanback/widget/q;->i:[I

    .line 1220
    .line 1221
    iget v4, v0, Landroidx/leanback/widget/j;->g:I

    .line 1222
    .line 1223
    if-ltz v4, :cond_38

    .line 1224
    .line 1225
    invoke-static {v2, v1, v3, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 1226
    .line 1227
    .line 1228
    move-result v5

    .line 1229
    goto :goto_1e

    .line 1230
    :cond_38
    const/4 v5, 0x0

    .line 1231
    :goto_1e
    iget-object v1, v0, Landroidx/leanback/widget/j;->a:[Ljava/lang/Object;

    .line 1232
    .line 1233
    if-gez v5, :cond_3c

    .line 1234
    .line 1235
    neg-int v5, v5

    .line 1236
    const/4 v7, 0x1

    .line 1237
    sub-int/2addr v5, v7

    .line 1238
    iget-boolean v7, v0, Landroidx/leanback/widget/j;->c:Z

    .line 1239
    .line 1240
    if-eqz v7, :cond_39

    .line 1241
    .line 1242
    iget-object v7, v0, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 1243
    .line 1244
    invoke-virtual {v7, v4}, Landroidx/leanback/widget/k;->d(I)I

    .line 1245
    .line 1246
    .line 1247
    move-result v7

    .line 1248
    iget-object v8, v0, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 1249
    .line 1250
    invoke-virtual {v8, v4}, Landroidx/leanback/widget/k;->e(I)I

    .line 1251
    .line 1252
    .line 1253
    move-result v4

    .line 1254
    sub-int/2addr v7, v4

    .line 1255
    iget v4, v0, Landroidx/leanback/widget/j;->d:I

    .line 1256
    .line 1257
    sub-int/2addr v7, v4

    .line 1258
    goto :goto_1f

    .line 1259
    :cond_39
    iget-object v7, v0, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 1260
    .line 1261
    invoke-virtual {v7, v4}, Landroidx/leanback/widget/k;->d(I)I

    .line 1262
    .line 1263
    .line 1264
    move-result v7

    .line 1265
    iget-object v8, v0, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 1266
    .line 1267
    invoke-virtual {v8, v4}, Landroidx/leanback/widget/k;->e(I)I

    .line 1268
    .line 1269
    .line 1270
    move-result v4

    .line 1271
    add-int/2addr v4, v7

    .line 1272
    iget v7, v0, Landroidx/leanback/widget/j;->d:I

    .line 1273
    .line 1274
    add-int/2addr v7, v4

    .line 1275
    :goto_1f
    move v4, v7

    .line 1276
    :goto_20
    if-ge v5, v3, :cond_3c

    .line 1277
    .line 1278
    aget v9, v2, v5

    .line 1279
    .line 1280
    move-object/from16 v13, v23

    .line 1281
    .line 1282
    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 1283
    .line 1284
    .line 1285
    move-result v7

    .line 1286
    if-gez v7, :cond_3a

    .line 1287
    .line 1288
    const/4 v11, 0x0

    .line 1289
    goto :goto_21

    .line 1290
    :cond_3a
    move v11, v7

    .line 1291
    :goto_21
    iget-object v7, v0, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 1292
    .line 1293
    const/4 v8, 0x1

    .line 1294
    invoke-virtual {v7, v9, v8, v1, v8}, Landroidx/leanback/widget/k;->b(IZ[Ljava/lang/Object;Z)I

    .line 1295
    .line 1296
    .line 1297
    move-result v14

    .line 1298
    iget-object v7, v0, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 1299
    .line 1300
    const/4 v8, 0x0

    .line 1301
    aget-object v10, v1, v8

    .line 1302
    .line 1303
    move-object v8, v10

    .line 1304
    move v10, v14

    .line 1305
    move v12, v4

    .line 1306
    invoke-virtual/range {v7 .. v12}, Landroidx/leanback/widget/k;->a(Ljava/lang/Object;IIII)V

    .line 1307
    .line 1308
    .line 1309
    iget-boolean v7, v0, Landroidx/leanback/widget/j;->c:Z

    .line 1310
    .line 1311
    if-eqz v7, :cond_3b

    .line 1312
    .line 1313
    sub-int/2addr v4, v14

    .line 1314
    iget v7, v0, Landroidx/leanback/widget/j;->d:I

    .line 1315
    .line 1316
    sub-int/2addr v4, v7

    .line 1317
    goto :goto_22

    .line 1318
    :cond_3b
    add-int/2addr v4, v14

    .line 1319
    iget v7, v0, Landroidx/leanback/widget/j;->d:I

    .line 1320
    .line 1321
    add-int/2addr v4, v7

    .line 1322
    :goto_22
    add-int/lit8 v5, v5, 0x1

    .line 1323
    .line 1324
    move-object/from16 v23, v13

    .line 1325
    .line 1326
    goto :goto_20

    .line 1327
    :cond_3c
    move-object/from16 v13, v23

    .line 1328
    .line 1329
    iget v4, v0, Landroidx/leanback/widget/j;->f:I

    .line 1330
    .line 1331
    if-ltz v4, :cond_3d

    .line 1332
    .line 1333
    const/4 v5, 0x0

    .line 1334
    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 1335
    .line 1336
    .line 1337
    move-result v3

    .line 1338
    goto :goto_23

    .line 1339
    :cond_3d
    const/4 v3, 0x0

    .line 1340
    :goto_23
    if-gez v3, :cond_42

    .line 1341
    .line 1342
    neg-int v3, v3

    .line 1343
    add-int/lit8 v3, v3, -0x2

    .line 1344
    .line 1345
    iget-boolean v5, v0, Landroidx/leanback/widget/j;->c:Z

    .line 1346
    .line 1347
    if-eqz v5, :cond_3e

    .line 1348
    .line 1349
    iget-object v5, v0, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 1350
    .line 1351
    invoke-virtual {v5, v4}, Landroidx/leanback/widget/k;->d(I)I

    .line 1352
    .line 1353
    .line 1354
    move-result v4

    .line 1355
    goto :goto_24

    .line 1356
    :cond_3e
    iget-object v5, v0, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 1357
    .line 1358
    invoke-virtual {v5, v4}, Landroidx/leanback/widget/k;->d(I)I

    .line 1359
    .line 1360
    .line 1361
    move-result v4

    .line 1362
    :goto_24
    if-ltz v3, :cond_42

    .line 1363
    .line 1364
    aget v9, v2, v3

    .line 1365
    .line 1366
    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 1367
    .line 1368
    .line 1369
    move-result v5

    .line 1370
    if-gez v5, :cond_3f

    .line 1371
    .line 1372
    const/4 v11, 0x0

    .line 1373
    goto :goto_25

    .line 1374
    :cond_3f
    move v11, v5

    .line 1375
    :goto_25
    iget-object v5, v0, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 1376
    .line 1377
    const/4 v7, 0x1

    .line 1378
    const/4 v8, 0x0

    .line 1379
    invoke-virtual {v5, v9, v8, v1, v7}, Landroidx/leanback/widget/k;->b(IZ[Ljava/lang/Object;Z)I

    .line 1380
    .line 1381
    .line 1382
    move-result v10

    .line 1383
    iget-boolean v5, v0, Landroidx/leanback/widget/j;->c:Z

    .line 1384
    .line 1385
    if-eqz v5, :cond_40

    .line 1386
    .line 1387
    iget v5, v0, Landroidx/leanback/widget/j;->d:I

    .line 1388
    .line 1389
    add-int/2addr v4, v5

    .line 1390
    add-int/2addr v4, v10

    .line 1391
    goto :goto_26

    .line 1392
    :cond_40
    iget v5, v0, Landroidx/leanback/widget/j;->d:I

    .line 1393
    .line 1394
    sub-int/2addr v4, v5

    .line 1395
    sub-int/2addr v4, v10

    .line 1396
    :goto_26
    iget-object v7, v0, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 1397
    .line 1398
    const/4 v5, 0x0

    .line 1399
    aget-object v8, v1, v5

    .line 1400
    .line 1401
    move v12, v4

    .line 1402
    invoke-virtual/range {v7 .. v12}, Landroidx/leanback/widget/k;->a(Ljava/lang/Object;IIII)V

    .line 1403
    .line 1404
    .line 1405
    add-int/lit8 v3, v3, -0x1

    .line 1406
    .line 1407
    goto :goto_24

    .line 1408
    :cond_41
    move-object/from16 v13, v23

    .line 1409
    .line 1410
    :cond_42
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->clear()V

    .line 1411
    .line 1412
    .line 1413
    :cond_43
    :goto_27
    iget v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 1414
    .line 1415
    and-int/lit16 v1, v0, 0x400

    .line 1416
    .line 1417
    if-eqz v1, :cond_44

    .line 1418
    .line 1419
    and-int/lit16 v0, v0, -0x401

    .line 1420
    .line 1421
    iput v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 1422
    .line 1423
    goto :goto_28

    .line 1424
    :cond_44
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->J()V

    .line 1425
    .line 1426
    .line 1427
    :goto_28
    iget v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 1428
    .line 1429
    and-int/lit8 v0, v0, 0x4

    .line 1430
    .line 1431
    if-eqz v0, :cond_46

    .line 1432
    .line 1433
    iget v0, v6, Landroidx/leanback/widget/q;->m:I

    .line 1434
    .line 1435
    move/from16 v1, v21

    .line 1436
    .line 1437
    if-ne v0, v1, :cond_45

    .line 1438
    .line 1439
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v0

    .line 1443
    move-object/from16 v2, v19

    .line 1444
    .line 1445
    if-ne v0, v2, :cond_45

    .line 1446
    .line 1447
    iget v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 1448
    .line 1449
    and-int/lit8 v0, v0, 0x8

    .line 1450
    .line 1451
    if-eqz v0, :cond_46

    .line 1452
    .line 1453
    :cond_45
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->b()V

    .line 1454
    .line 1455
    .line 1456
    goto :goto_29

    .line 1457
    :cond_46
    iget v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 1458
    .line 1459
    and-int/lit8 v0, v0, 0x14

    .line 1460
    .line 1461
    const/16 v3, 0x10

    .line 1462
    .line 1463
    if-ne v0, v3, :cond_47

    .line 1464
    .line 1465
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->b()V

    .line 1466
    .line 1467
    .line 1468
    :cond_47
    :goto_29
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->c()V

    .line 1469
    .line 1470
    .line 1471
    iget v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 1472
    .line 1473
    and-int/lit8 v1, v0, 0x40

    .line 1474
    .line 1475
    if-eqz v1, :cond_4b

    .line 1476
    .line 1477
    iget v1, v6, Landroidx/leanback/widget/q;->c:I

    .line 1478
    .line 1479
    const/4 v4, 0x1

    .line 1480
    if-ne v1, v4, :cond_48

    .line 1481
    .line 1482
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 1483
    .line 1484
    .line 1485
    move-result v0

    .line 1486
    neg-int v0, v0

    .line 1487
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 1488
    .line 1489
    .line 1490
    move-result v1

    .line 1491
    if-lez v1, :cond_4a

    .line 1492
    .line 1493
    const/4 v1, 0x0

    .line 1494
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v1

    .line 1498
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 1499
    .line 1500
    .line 1501
    move-result v1

    .line 1502
    if-gez v1, :cond_4a

    .line 1503
    .line 1504
    goto :goto_2a

    .line 1505
    :cond_48
    const/high16 v5, 0x40000

    .line 1506
    .line 1507
    and-int/2addr v0, v5

    .line 1508
    if-eqz v0, :cond_49

    .line 1509
    .line 1510
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 1511
    .line 1512
    .line 1513
    move-result v0

    .line 1514
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 1515
    .line 1516
    .line 1517
    move-result v1

    .line 1518
    if-lez v1, :cond_4a

    .line 1519
    .line 1520
    const/4 v7, 0x0

    .line 1521
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v1

    .line 1525
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 1526
    .line 1527
    .line 1528
    move-result v1

    .line 1529
    if-le v1, v0, :cond_4a

    .line 1530
    .line 1531
    move v0, v1

    .line 1532
    goto :goto_2b

    .line 1533
    :cond_49
    const/4 v7, 0x0

    .line 1534
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 1535
    .line 1536
    .line 1537
    move-result v0

    .line 1538
    neg-int v0, v0

    .line 1539
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 1540
    .line 1541
    .line 1542
    move-result v1

    .line 1543
    if-lez v1, :cond_4a

    .line 1544
    .line 1545
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v1

    .line 1549
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 1550
    .line 1551
    .line 1552
    move-result v1

    .line 1553
    if-gez v1, :cond_4a

    .line 1554
    .line 1555
    :goto_2a
    add-int/2addr v0, v1

    .line 1556
    :cond_4a
    :goto_2b
    invoke-virtual {v6, v0}, Landroidx/leanback/widget/q;->z(I)I

    .line 1557
    .line 1558
    .line 1559
    :cond_4b
    iget v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 1560
    .line 1561
    and-int/lit8 v0, v0, -0x4

    .line 1562
    .line 1563
    iput v0, v6, Landroidx/leanback/widget/q;->k:I

    .line 1564
    .line 1565
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/q;->q()V

    .line 1566
    .line 1567
    .line 1568
    return-void

    .line 1569
    :cond_4c
    move-object/from16 v0, p2

    .line 1570
    .line 1571
    move-object/from16 v17, v9

    .line 1572
    .line 1573
    move/from16 v24, v10

    .line 1574
    .line 1575
    goto/16 :goto_17
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/n2;)V
    .locals 0

    return-void
.end method

.method public final onMeasure(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->y(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Landroidx/leanback/widget/q;->c:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    add-int/2addr v0, p4

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    iput p2, p0, Landroidx/leanback/widget/q;->v:I

    .line 52
    .line 53
    iget p4, p0, Landroidx/leanback/widget/q;->s:I

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    const/4 v2, -0x2

    .line 57
    const-string v3, "wrong spec"

    .line 58
    .line 59
    const/high16 v4, 0x40000000    # 2.0f

    .line 60
    .line 61
    const/high16 v5, -0x80000000

    .line 62
    .line 63
    if-ne p4, v2, :cond_8

    .line 64
    .line 65
    iget p2, p0, Landroidx/leanback/widget/q;->C:I

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    const/4 p2, 0x1

    .line 70
    :cond_1
    iput p2, p0, Landroidx/leanback/widget/q;->B:I

    .line 71
    .line 72
    const/4 p4, 0x0

    .line 73
    iput p4, p0, Landroidx/leanback/widget/q;->t:I

    .line 74
    .line 75
    iget-object p4, p0, Landroidx/leanback/widget/q;->u:[I

    .line 76
    .line 77
    if-eqz p4, :cond_2

    .line 78
    .line 79
    array-length p4, p4

    .line 80
    if-eq p4, p2, :cond_3

    .line 81
    .line 82
    :cond_2
    new-array p2, p2, [I

    .line 83
    .line 84
    iput-object p2, p0, Landroidx/leanback/widget/q;->u:[I

    .line 85
    .line 86
    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 87
    .line 88
    iget-boolean p2, p2, Landroidx/recyclerview/widget/n2;->g:Z

    .line 89
    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->I()V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/q;->u(Z)Z

    .line 96
    .line 97
    .line 98
    if-eq p3, v5, :cond_7

    .line 99
    .line 100
    if-eqz p3, :cond_6

    .line 101
    .line 102
    if-ne p3, v4, :cond_5

    .line 103
    .line 104
    iget p2, p0, Landroidx/leanback/widget/q;->v:I

    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_6
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->l()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    :goto_2
    add-int/2addr p2, v0

    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_7
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->l()I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    add-int/2addr p2, v0

    .line 126
    iget p3, p0, Landroidx/leanback/widget/q;->v:I

    .line 127
    .line 128
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    goto :goto_5

    .line 133
    :cond_8
    if-eq p3, v5, :cond_d

    .line 134
    .line 135
    if-eqz p3, :cond_a

    .line 136
    .line 137
    if-ne p3, v4, :cond_9

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_a
    if-nez p4, :cond_b

    .line 147
    .line 148
    sub-int p4, p2, v0

    .line 149
    .line 150
    :cond_b
    iput p4, p0, Landroidx/leanback/widget/q;->t:I

    .line 151
    .line 152
    iget p2, p0, Landroidx/leanback/widget/q;->C:I

    .line 153
    .line 154
    if-nez p2, :cond_c

    .line 155
    .line 156
    const/4 p2, 0x1

    .line 157
    :cond_c
    iput p2, p0, Landroidx/leanback/widget/q;->B:I

    .line 158
    .line 159
    mul-int p4, p4, p2

    .line 160
    .line 161
    iget p3, p0, Landroidx/leanback/widget/q;->z:I

    .line 162
    .line 163
    sub-int/2addr p2, v1

    .line 164
    mul-int p2, p2, p3

    .line 165
    .line 166
    add-int/2addr p2, p4

    .line 167
    goto :goto_2

    .line 168
    :cond_d
    :goto_3
    iget v2, p0, Landroidx/leanback/widget/q;->C:I

    .line 169
    .line 170
    if-nez v2, :cond_e

    .line 171
    .line 172
    if-nez p4, :cond_e

    .line 173
    .line 174
    iput v1, p0, Landroidx/leanback/widget/q;->B:I

    .line 175
    .line 176
    sub-int p4, p2, v0

    .line 177
    .line 178
    iput p4, p0, Landroidx/leanback/widget/q;->t:I

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_e
    if-nez v2, :cond_f

    .line 182
    .line 183
    iput p4, p0, Landroidx/leanback/widget/q;->t:I

    .line 184
    .line 185
    iget v2, p0, Landroidx/leanback/widget/q;->z:I

    .line 186
    .line 187
    add-int v3, p2, v2

    .line 188
    .line 189
    add-int/2addr p4, v2

    .line 190
    div-int/2addr v3, p4

    .line 191
    iput v3, p0, Landroidx/leanback/widget/q;->B:I

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_f
    if-nez p4, :cond_10

    .line 195
    .line 196
    iput v2, p0, Landroidx/leanback/widget/q;->B:I

    .line 197
    .line 198
    sub-int p4, p2, v0

    .line 199
    .line 200
    iget v3, p0, Landroidx/leanback/widget/q;->z:I

    .line 201
    .line 202
    add-int/lit8 v4, v2, -0x1

    .line 203
    .line 204
    mul-int v4, v4, v3

    .line 205
    .line 206
    sub-int/2addr p4, v4

    .line 207
    div-int/2addr p4, v2

    .line 208
    iput p4, p0, Landroidx/leanback/widget/q;->t:I

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_10
    iput v2, p0, Landroidx/leanback/widget/q;->B:I

    .line 212
    .line 213
    iput p4, p0, Landroidx/leanback/widget/q;->t:I

    .line 214
    .line 215
    :goto_4
    if-ne p3, v5, :cond_11

    .line 216
    .line 217
    iget p3, p0, Landroidx/leanback/widget/q;->t:I

    .line 218
    .line 219
    iget p4, p0, Landroidx/leanback/widget/q;->B:I

    .line 220
    .line 221
    mul-int p3, p3, p4

    .line 222
    .line 223
    iget v2, p0, Landroidx/leanback/widget/q;->z:I

    .line 224
    .line 225
    sub-int/2addr p4, v1

    .line 226
    mul-int p4, p4, v2

    .line 227
    .line 228
    add-int/2addr p4, p3

    .line 229
    add-int/2addr p4, v0

    .line 230
    if-ge p4, p2, :cond_11

    .line 231
    .line 232
    move p2, p4

    .line 233
    :cond_11
    :goto_5
    iget p3, p0, Landroidx/leanback/widget/q;->c:I

    .line 234
    .line 235
    if-nez p3, :cond_12

    .line 236
    .line 237
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_12
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 242
    .line 243
    .line 244
    :goto_6
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->q()V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method public final onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    const v0, 0x8000

    .line 4
    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    const/4 v6, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return v6

    .line 11
    :cond_0
    invoke-static {p2}, Landroidx/leanback/widget/q;->e(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, -0x1

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    return v6

    .line 19
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 20
    .line 21
    and-int/lit8 p1, p1, 0x23

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v0, p0

    .line 28
    move-object v1, p2

    .line 29
    move-object v2, p3

    .line 30
    move v3, v6

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->C(Landroid/view/View;Landroid/view/View;ZII)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return v6
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/leanback/widget/p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Landroidx/leanback/widget/p;

    .line 7
    .line 8
    iget v0, p1, Landroidx/leanback/widget/p;->a:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/leanback/widget/q;->m:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroidx/leanback/widget/q;->p:I

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/leanback/widget/p;->b:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/leanback/widget/q;->K:La0/h;

    .line 18
    .line 19
    iget-object v1, v0, La0/h;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, La0/m;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-virtual {v1, v2}, La0/m;->f(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, v0, La0/h;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, La0/m;

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v2, v4}, La0/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 64
    .line 65
    or-int/lit16 p1, p1, 0x100

    .line 66
    .line 67
    iput p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1
    new-instance v0, Landroidx/leanback/widget/p;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/leanback/widget/p;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroidx/leanback/widget/q;->m:I

    .line 7
    .line 8
    iput v1, v0, Landroidx/leanback/widget/p;->a:I

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/leanback/widget/q;->K:La0/h;

    .line 11
    .line 12
    iget-object v2, v1, La0/h;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, La0/m;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v2}, La0/m;->e()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_0
    iget-object v1, v1, La0/h;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, La0/m;

    .line 28
    .line 29
    iget-object v2, v1, La0/m;->c:Lm7/e;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    iget-object v4, v1, La0/m;->b:Landroidx/room/o;

    .line 35
    .line 36
    iget-object v4, v4, Landroidx/room/o;->a:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "<get-entries>(...)"

    .line 43
    .line 44
    invoke-static {v4, v5}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, La0/m;->b:Landroidx/room/o;

    .line 55
    .line 56
    iget-object v1, v1, Landroidx/room/o;->a:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v4, "<get-entries>(...)"

    .line 63
    .line 64
    invoke-static {v1, v4}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/util/Map$Entry;

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    goto :goto_2

    .line 97
    :cond_1
    monitor-exit v2

    .line 98
    new-instance v1, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Ljava/util/Map$Entry;

    .line 122
    .line 123
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Landroid/util/SparseArray;

    .line 134
    .line 135
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :goto_2
    monitor-exit v2

    .line 140
    throw v0

    .line 141
    :cond_2
    :goto_3
    const/4 v1, 0x0

    .line 142
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    const/4 v3, 0x0

    .line 147
    :goto_4
    if-ge v3, v2, :cond_6

    .line 148
    .line 149
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-static {v4}, Landroidx/leanback/widget/q;->e(Landroid/view/View;)I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    const/4 v6, -0x1

    .line 158
    if-eq v5, v6, :cond_5

    .line 159
    .line 160
    iget-object v6, p0, Landroidx/leanback/widget/q;->K:La0/h;

    .line 161
    .line 162
    iget v6, v6, La0/h;->b:I

    .line 163
    .line 164
    if-eqz v6, :cond_5

    .line 165
    .line 166
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    new-instance v6, Landroid/util/SparseArray;

    .line 171
    .line 172
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 176
    .line 177
    .line 178
    if-nez v1, :cond_4

    .line 179
    .line 180
    new-instance v1, Landroid/os/Bundle;

    .line 181
    .line 182
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 183
    .line 184
    .line 185
    :cond_4
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 186
    .line 187
    .line 188
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_6
    iput-object v1, v0, Landroidx/leanback/widget/p;->b:Landroid/os/Bundle;

    .line 192
    .line 193
    return-object v0
.end method

.method public final p(Landroid/view/View;IIII)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->f(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->g(Landroid/view/View;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/q;->t:I

    .line 15
    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :cond_1
    iget v1, p0, Landroidx/leanback/widget/q;->A:I

    .line 23
    .line 24
    and-int/lit8 v2, v1, 0x70

    .line 25
    .line 26
    iget v3, p0, Landroidx/leanback/widget/q;->k:I

    .line 27
    .line 28
    const/high16 v4, 0xc0000

    .line 29
    .line 30
    and-int/2addr v3, v4

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    const v3, 0x800007

    .line 35
    .line 36
    .line 37
    and-int/2addr v1, v3

    .line 38
    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    and-int/lit8 v1, v1, 0x7

    .line 44
    .line 45
    :goto_1
    iget v3, p0, Landroidx/leanback/widget/q;->c:I

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    const/16 v5, 0x30

    .line 50
    .line 51
    if-eq v2, v5, :cond_a

    .line 52
    .line 53
    :cond_3
    if-ne v3, v4, :cond_4

    .line 54
    .line 55
    const/4 v5, 0x3

    .line 56
    if-ne v1, v5, :cond_4

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    if-nez v3, :cond_5

    .line 60
    .line 61
    const/16 v5, 0x50

    .line 62
    .line 63
    if-eq v2, v5, :cond_6

    .line 64
    .line 65
    :cond_5
    if-ne v3, v4, :cond_7

    .line 66
    .line 67
    const/4 v5, 0x5

    .line 68
    if-ne v1, v5, :cond_7

    .line 69
    .line 70
    :cond_6
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->i(I)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    sub-int/2addr p2, v0

    .line 75
    :goto_2
    add-int/2addr p5, p2

    .line 76
    goto :goto_3

    .line 77
    :cond_7
    if-nez v3, :cond_8

    .line 78
    .line 79
    const/16 v5, 0x10

    .line 80
    .line 81
    if-eq v2, v5, :cond_9

    .line 82
    .line 83
    :cond_8
    if-ne v3, v4, :cond_a

    .line 84
    .line 85
    if-ne v1, v4, :cond_a

    .line 86
    .line 87
    :cond_9
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->i(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    sub-int/2addr p2, v0

    .line 92
    div-int/lit8 p2, p2, 0x2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_a
    :goto_3
    iget p2, p0, Landroidx/leanback/widget/q;->c:I

    .line 96
    .line 97
    if-nez p2, :cond_b

    .line 98
    .line 99
    add-int/2addr v0, p5

    .line 100
    goto :goto_4

    .line 101
    :cond_b
    add-int/2addr v0, p5

    .line 102
    move v7, p5

    .line 103
    move p5, p3

    .line 104
    move p3, v7

    .line 105
    move v8, v0

    .line 106
    move v0, p4

    .line 107
    move p4, v8

    .line 108
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Landroidx/leanback/widget/n;

    .line 113
    .line 114
    move-object v1, p0

    .line 115
    move-object v2, p1

    .line 116
    move v3, p3

    .line 117
    move v4, p5

    .line 118
    move v5, p4

    .line 119
    move v6, v0

    .line 120
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 121
    .line 122
    .line 123
    sget-object v1, Landroidx/leanback/widget/q;->N:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-super {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 126
    .line 127
    .line 128
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 129
    .line 130
    sub-int/2addr p3, v2

    .line 131
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 132
    .line 133
    sub-int/2addr p5, v2

    .line 134
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 135
    .line 136
    sub-int/2addr v2, p4

    .line 137
    iget p4, v1, Landroid/graphics/Rect;->bottom:I

    .line 138
    .line 139
    sub-int/2addr p4, v0

    .line 140
    iput p3, p2, Landroidx/leanback/widget/n;->a:I

    .line 141
    .line 142
    iput p5, p2, Landroidx/leanback/widget/n;->b:I

    .line 143
    .line 144
    iput v2, p2, Landroidx/leanback/widget/n;->c:I

    .line 145
    .line 146
    iput p4, p2, Landroidx/leanback/widget/n;->d:I

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->H(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final performAccessibilityAction(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    iget p4, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    const/high16 v0, 0x20000

    .line 4
    .line 5
    and-int/2addr p4, v0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p4, :cond_9

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->y(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 13
    .line 14
    const/high16 p2, 0x40000

    .line 15
    .line 16
    and-int/2addr p1, p2

    .line 17
    const/4 p2, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v1, 0x17

    .line 26
    .line 27
    const/16 v2, 0x2000

    .line 28
    .line 29
    const/16 v3, 0x1000

    .line 30
    .line 31
    if-lt p4, v1, :cond_6

    .line 32
    .line 33
    iget p4, p0, Landroidx/leanback/widget/q;->c:I

    .line 34
    .line 35
    if-nez p4, :cond_2

    .line 36
    .line 37
    sget-object p4, Ly0/f;->l:Ly0/f;

    .line 38
    .line 39
    invoke-virtual {p4}, Ly0/f;->a()I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    if-ne p3, p4, :cond_1

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    sget-object p4, Ly0/f;->n:Ly0/f;

    .line 49
    .line 50
    invoke-virtual {p4}, Ly0/f;->a()I

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    if-ne p3, p4, :cond_6

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    sget-object p1, Ly0/f;->k:Ly0/f;

    .line 60
    .line 61
    invoke-virtual {p1}, Ly0/f;->a()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ne p3, p1, :cond_4

    .line 66
    .line 67
    :cond_3
    :goto_1
    const/16 p3, 0x2000

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    sget-object p1, Ly0/f;->m:Ly0/f;

    .line 71
    .line 72
    invoke-virtual {p1}, Ly0/f;->a()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-ne p3, p1, :cond_6

    .line 77
    .line 78
    :cond_5
    :goto_2
    const/16 p3, 0x1000

    .line 79
    .line 80
    :cond_6
    :goto_3
    if-eq p3, v3, :cond_8

    .line 81
    .line 82
    if-eq p3, v2, :cond_7

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_7
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/q;->t(Z)V

    .line 86
    .line 87
    .line 88
    const/4 p1, -0x1

    .line 89
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/q;->v(IZ)I

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->t(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0, p2}, Landroidx/leanback/widget/q;->v(IZ)I

    .line 97
    .line 98
    .line 99
    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->q()V

    .line 100
    .line 101
    .line 102
    :cond_9
    return v0
.end method

.method public final q()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/leanback/widget/q;->f:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/leanback/widget/q;->g:I

    .line 10
    .line 11
    return-void
.end method

.method public final r(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/n;

    .line 6
    .line 7
    sget-object v1, Landroidx/leanback/widget/q;->N:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    add-int/2addr v2, v3

    .line 23
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    .line 25
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 26
    .line 27
    add-int/2addr v3, v4

    .line 28
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    add-int/2addr v3, v4

    .line 31
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    add-int/2addr v3, v1

    .line 34
    iget v1, p0, Landroidx/leanback/widget/q;->s:I

    .line 35
    .line 36
    const/4 v4, -0x2

    .line 37
    const/4 v5, 0x0

    .line 38
    if-ne v1, v4, :cond_0

    .line 39
    .line 40
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/q;->t:I

    .line 46
    .line 47
    const/high16 v4, 0x40000000    # 2.0f

    .line 48
    .line 49
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :goto_0
    iget v4, p0, Landroidx/leanback/widget/q;->c:I

    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 62
    .line 63
    invoke-static {v4, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 68
    .line 69
    invoke-static {v1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 79
    .line 80
    invoke-static {v4, v3, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 85
    .line 86
    invoke-static {v1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    move v0, v3

    .line 91
    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final removeAndRecycleAllViews(Landroidx/recyclerview/widget/g2;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/g2;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 2
    .line 3
    iget v1, p0, Landroidx/leanback/widget/q;->k:I

    .line 4
    .line 5
    const/high16 v2, 0x40000

    .line 6
    .line 7
    and-int/2addr v1, v2

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroidx/leanback/widget/q;->H:I

    .line 11
    .line 12
    iget v2, p0, Landroidx/leanback/widget/q;->I:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    iget v2, p0, Landroidx/leanback/widget/q;->g:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/q;->I:I

    .line 20
    .line 21
    neg-int v1, v1

    .line 22
    iget v2, p0, Landroidx/leanback/widget/q;->g:I

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    :goto_0
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/j;->m(IZ)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/q;->y(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Landroidx/leanback/widget/q;->k:I

    .line 15
    .line 16
    and-int/lit8 p2, p2, -0x4

    .line 17
    .line 18
    or-int/lit8 p2, p2, 0x2

    .line 19
    .line 20
    iput p2, p0, Landroidx/leanback/widget/q;->k:I

    .line 21
    .line 22
    iget p2, p0, Landroidx/leanback/widget/q;->c:I

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->z(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->A(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->q()V

    .line 36
    .line 37
    .line 38
    iget p2, p0, Landroidx/leanback/widget/q;->k:I

    .line 39
    .line 40
    and-int/lit8 p2, p2, -0x4

    .line 41
    .line 42
    iput p2, p0, Landroidx/leanback/widget/q;->k:I

    .line 43
    .line 44
    return p1

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public final scrollToPosition(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/q;->F(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x200

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    and-int/lit8 v0, v0, -0x4

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    iput v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 16
    .line 17
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/q;->y(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Landroidx/leanback/widget/q;->c:I

    .line 21
    .line 22
    const/4 p3, 0x1

    .line 23
    if-ne p2, p3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->z(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/q;->A(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->q()V

    .line 35
    .line 36
    .line 37
    iget p2, p0, Landroidx/leanback/widget/q;->k:I

    .line 38
    .line 39
    and-int/lit8 p2, p2, -0x4

    .line 40
    .line 41
    iput p2, p0, Landroidx/leanback/widget/q;->k:I

    .line 42
    .line 43
    return p1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    return p1
.end method

.method public final setOrientation(I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/q;->c:I

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/f1;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/f1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, La2/w0;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Landroidx/leanback/widget/x0;

    .line 23
    .line 24
    iget-object v2, v0, La2/w0;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Landroidx/leanback/widget/x0;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iput-object v2, v0, La2/w0;->d:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object v1, v0, La2/w0;->e:Ljava/lang/Object;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput-object v1, v0, La2/w0;->d:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object v2, v0, La2/w0;->e:Ljava/lang/Object;

    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/q;->G:Lv3/f;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    iget-object p1, v0, Lv3/f;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Landroidx/leanback/widget/u;

    .line 49
    .line 50
    iput-object p1, v0, Lv3/f;->d:Ljava/lang/Object;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object p1, v0, Lv3/f;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Landroidx/leanback/widget/u;

    .line 56
    .line 57
    iput-object p1, v0, Lv3/f;->d:Ljava/lang/Object;

    .line 58
    .line 59
    :goto_1
    iget p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 60
    .line 61
    or-int/lit16 p1, p1, 0x100

    .line 62
    .line 63
    iput p1, p0, Landroidx/leanback/widget/q;->k:I

    .line 64
    .line 65
    return-void
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/n2;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p3, p1}, Landroidx/leanback/widget/q;->F(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final startSmoothScroll(Landroidx/recyclerview/widget/m2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->n:Landroidx/leanback/widget/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Landroidx/leanback/widget/m;->a:Z

    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/m2;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/m2;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    instance-of v0, p1, Landroidx/leanback/widget/m;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    check-cast p1, Landroidx/leanback/widget/m;

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/leanback/widget/q;->n:Landroidx/leanback/widget/m;

    .line 25
    .line 26
    instance-of v0, p1, Landroidx/leanback/widget/o;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Landroidx/leanback/widget/o;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/leanback/widget/q;->o:Landroidx/leanback/widget/o;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput-object v1, p0, Landroidx/leanback/widget/q;->o:Landroidx/leanback/widget/o;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iput-object v1, p0, Landroidx/leanback/widget/q;->n:Landroidx/leanback/widget/m;

    .line 39
    .line 40
    iput-object v1, p0, Landroidx/leanback/widget/q;->o:Landroidx/leanback/widget/o;

    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->m()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/q;->o:Landroidx/leanback/widget/o;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez v0, :cond_4

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroidx/leanback/widget/o;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 p1, -0x1

    .line 34
    :goto_1
    iget v2, p0, Landroidx/leanback/widget/q;->B:I

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    if-le v2, v1, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    const/4 v1, 0x0

    .line 41
    :goto_2
    invoke-direct {v0, p0, p1, v1}, Landroidx/leanback/widget/o;-><init>(Landroidx/leanback/widget/q;IZ)V

    .line 42
    .line 43
    .line 44
    iput v3, p0, Landroidx/leanback/widget/q;->p:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/q;->startSmoothScroll(Landroidx/recyclerview/widget/m2;)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    iget-object v2, v0, Landroidx/leanback/widget/o;->e:Landroidx/leanback/widget/q;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    iget p1, v0, Landroidx/leanback/widget/o;->d:I

    .line 55
    .line 56
    iget v2, v2, Landroidx/leanback/widget/q;->a:I

    .line 57
    .line 58
    if-ge p1, v2, :cond_6

    .line 59
    .line 60
    add-int/2addr p1, v1

    .line 61
    iput p1, v0, Landroidx/leanback/widget/o;->d:I

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_5
    iget p1, v0, Landroidx/leanback/widget/o;->d:I

    .line 65
    .line 66
    iget v2, v2, Landroidx/leanback/widget/q;->a:I

    .line 67
    .line 68
    neg-int v2, v2

    .line 69
    if-le p1, v2, :cond_6

    .line 70
    .line 71
    sub-int/2addr p1, v1

    .line 72
    iput p1, v0, Landroidx/leanback/widget/o;->d:I

    .line 73
    .line 74
    :cond_6
    :goto_3
    return-void
.end method

.method public final u(Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->t:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_16

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/leanback/widget/q;->u:[I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_d

    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget v4, v1, Landroidx/leanback/widget/j;->f:I

    .line 21
    .line 22
    iget v5, v1, Landroidx/leanback/widget/j;->g:I

    .line 23
    .line 24
    invoke-virtual {v1, v4, v5}, Landroidx/leanback/widget/j;->j(II)[La0/h;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, -0x1

    .line 31
    :goto_1
    iget v8, v0, Landroidx/leanback/widget/q;->B:I

    .line 32
    .line 33
    if-ge v5, v8, :cond_15

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    aget-object v8, v1, v5

    .line 40
    .line 41
    :goto_2
    if-nez v8, :cond_3

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    iget v9, v8, La0/h;->b:I

    .line 46
    .line 47
    iget v10, v8, La0/h;->c:I

    .line 48
    .line 49
    and-int/2addr v9, v10

    .line 50
    :goto_3
    const/4 v10, 0x0

    .line 51
    const/4 v11, -0x1

    .line 52
    :goto_4
    if-ge v10, v9, :cond_9

    .line 53
    .line 54
    invoke-virtual {v8, v10}, La0/h;->k(I)I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    add-int/lit8 v13, v10, 0x1

    .line 59
    .line 60
    invoke-virtual {v8, v13}, La0/h;->k(I)I

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    :goto_5
    if-gt v12, v13, :cond_8

    .line 65
    .line 66
    iget v14, v0, Landroidx/leanback/widget/q;->f:I

    .line 67
    .line 68
    sub-int v14, v12, v14

    .line 69
    .line 70
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    if-nez v14, :cond_4

    .line 75
    .line 76
    goto :goto_7

    .line 77
    :cond_4
    if-eqz p1, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/q;->r(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    iget v15, v0, Landroidx/leanback/widget/q;->c:I

    .line 83
    .line 84
    if-nez v15, :cond_6

    .line 85
    .line 86
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/q;->f(Landroid/view/View;)I

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    goto :goto_6

    .line 91
    :cond_6
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/q;->g(Landroid/view/View;)I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    :goto_6
    if-le v14, v11, :cond_7

    .line 96
    .line 97
    move v11, v14

    .line 98
    :cond_7
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    add-int/lit8 v10, v10, 0x2

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_9
    iget-object v8, v0, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 105
    .line 106
    invoke-virtual {v8}, Landroidx/recyclerview/widget/n2;->b()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    iget-object v9, v0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 111
    .line 112
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->hasFixedSize()Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    const/4 v12, 0x1

    .line 117
    if-nez v10, :cond_12

    .line 118
    .line 119
    if-eqz p1, :cond_12

    .line 120
    .line 121
    if-gez v11, :cond_12

    .line 122
    .line 123
    if-lez v8, :cond_12

    .line 124
    .line 125
    if-gez v7, :cond_11

    .line 126
    .line 127
    iget v10, v0, Landroidx/leanback/widget/q;->m:I

    .line 128
    .line 129
    if-gez v10, :cond_a

    .line 130
    .line 131
    const/4 v10, 0x0

    .line 132
    goto :goto_8

    .line 133
    :cond_a
    if-lt v10, v8, :cond_b

    .line 134
    .line 135
    add-int/lit8 v10, v8, -0x1

    .line 136
    .line 137
    :cond_b
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    if-lez v13, :cond_e

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    invoke-virtual {v9, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    sub-int/2addr v14, v12

    .line 160
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v14

    .line 164
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-lt v10, v13, :cond_e

    .line 173
    .line 174
    if-gt v10, v9, :cond_e

    .line 175
    .line 176
    sub-int v14, v10, v13

    .line 177
    .line 178
    sub-int v10, v9, v10

    .line 179
    .line 180
    if-gt v14, v10, :cond_c

    .line 181
    .line 182
    add-int/lit8 v10, v13, -0x1

    .line 183
    .line 184
    goto :goto_9

    .line 185
    :cond_c
    add-int/lit8 v10, v9, 0x1

    .line 186
    .line 187
    :goto_9
    if-gez v10, :cond_d

    .line 188
    .line 189
    add-int/lit8 v14, v8, -0x1

    .line 190
    .line 191
    if-ge v9, v14, :cond_d

    .line 192
    .line 193
    add-int/lit8 v10, v9, 0x1

    .line 194
    .line 195
    goto :goto_a

    .line 196
    :cond_d
    if-lt v10, v8, :cond_e

    .line 197
    .line 198
    if-lez v13, :cond_e

    .line 199
    .line 200
    add-int/lit8 v10, v13, -0x1

    .line 201
    .line 202
    :cond_e
    :goto_a
    if-ltz v10, :cond_11

    .line 203
    .line 204
    if-ge v10, v8, :cond_11

    .line 205
    .line 206
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    iget-object v9, v0, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 215
    .line 216
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/g2;->d(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    iget-object v10, v0, Landroidx/leanback/widget/q;->J:[I

    .line 221
    .line 222
    if-eqz v9, :cond_f

    .line 223
    .line 224
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    check-cast v13, Landroidx/leanback/widget/n;

    .line 229
    .line 230
    sget-object v14, Landroidx/leanback/widget/q;->N:Landroid/graphics/Rect;

    .line 231
    .line 232
    invoke-virtual {v0, v9, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 233
    .line 234
    .line 235
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 236
    .line 237
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 238
    .line 239
    add-int/2addr v15, v3

    .line 240
    iget v3, v14, Landroid/graphics/Rect;->left:I

    .line 241
    .line 242
    add-int/2addr v15, v3

    .line 243
    iget v3, v14, Landroid/graphics/Rect;->right:I

    .line 244
    .line 245
    add-int/2addr v15, v3

    .line 246
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 247
    .line 248
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 249
    .line 250
    add-int/2addr v3, v4

    .line 251
    iget v4, v14, Landroid/graphics/Rect;->top:I

    .line 252
    .line 253
    add-int/2addr v3, v4

    .line 254
    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    .line 255
    .line 256
    add-int/2addr v3, v4

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 262
    .line 263
    .line 264
    move-result v14

    .line 265
    add-int/2addr v14, v4

    .line 266
    add-int/2addr v14, v15

    .line 267
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 268
    .line 269
    invoke-static {v7, v14, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 278
    .line 279
    .line 280
    move-result v14

    .line 281
    add-int/2addr v14, v7

    .line 282
    add-int/2addr v14, v3

    .line 283
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 284
    .line 285
    invoke-static {v8, v14, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    invoke-virtual {v9, v4, v3}, Landroid/view/View;->measure(II)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v9}, Landroidx/leanback/widget/q;->g(Landroid/view/View;)I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    aput v3, v10, v2

    .line 297
    .line 298
    invoke-virtual {v0, v9}, Landroidx/leanback/widget/q;->f(Landroid/view/View;)I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    aput v3, v10, v12

    .line 303
    .line 304
    iget-object v3, v0, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 305
    .line 306
    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/g2;->j(Landroid/view/View;)V

    .line 307
    .line 308
    .line 309
    :cond_f
    iget v3, v0, Landroidx/leanback/widget/q;->c:I

    .line 310
    .line 311
    if-nez v3, :cond_10

    .line 312
    .line 313
    aget v3, v10, v12

    .line 314
    .line 315
    :goto_b
    move v7, v3

    .line 316
    goto :goto_c

    .line 317
    :cond_10
    aget v3, v10, v2

    .line 318
    .line 319
    goto :goto_b

    .line 320
    :cond_11
    :goto_c
    if-ltz v7, :cond_12

    .line 321
    .line 322
    move v11, v7

    .line 323
    :cond_12
    if-gez v11, :cond_13

    .line 324
    .line 325
    const/4 v11, 0x0

    .line 326
    :cond_13
    iget-object v3, v0, Landroidx/leanback/widget/q;->u:[I

    .line 327
    .line 328
    aget v4, v3, v5

    .line 329
    .line 330
    if-eq v4, v11, :cond_14

    .line 331
    .line 332
    aput v11, v3, v5

    .line 333
    .line 334
    const/4 v6, 0x1

    .line 335
    :cond_14
    add-int/lit8 v5, v5, 0x1

    .line 336
    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :cond_15
    return v6

    .line 340
    :cond_16
    :goto_d
    return v2
.end method

.method public final v(IZ)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/q;->m:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v1, v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/j;->k(I)Landroidx/leanback/widget/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget v0, v0, Landroidx/leanback/widget/i;->b:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 22
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_2
    if-ge v4, v3, :cond_b

    .line 29
    .line 30
    if-eqz p1, :cond_b

    .line 31
    .line 32
    if-lez p1, :cond_3

    .line 33
    .line 34
    move v6, v4

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    add-int/lit8 v6, v3, -0x1

    .line 37
    .line 38
    sub-int/2addr v6, v4

    .line 39
    :goto_3
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-nez v8, :cond_a

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_4

    .line 54
    .line 55
    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_a

    .line 60
    .line 61
    :cond_4
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {v6}, Landroidx/leanback/widget/q;->e(Landroid/view/View;)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    iget-object v8, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 70
    .line 71
    invoke-virtual {v8, v6}, Landroidx/leanback/widget/j;->k(I)Landroidx/leanback/widget/i;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    if-nez v8, :cond_5

    .line 76
    .line 77
    const/4 v8, -0x1

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    iget v8, v8, Landroidx/leanback/widget/i;->b:I

    .line 80
    .line 81
    :goto_4
    if-ne v0, v2, :cond_6

    .line 82
    .line 83
    move v1, v6

    .line 84
    move-object v5, v7

    .line 85
    move v0, v8

    .line 86
    goto :goto_6

    .line 87
    :cond_6
    if-ne v8, v0, :cond_a

    .line 88
    .line 89
    if-lez p1, :cond_7

    .line 90
    .line 91
    if-gt v6, v1, :cond_8

    .line 92
    .line 93
    :cond_7
    if-gez p1, :cond_a

    .line 94
    .line 95
    if-ge v6, v1, :cond_a

    .line 96
    .line 97
    :cond_8
    if-lez p1, :cond_9

    .line 98
    .line 99
    add-int/lit8 p1, p1, -0x1

    .line 100
    .line 101
    :goto_5
    move v1, v6

    .line 102
    move-object v5, v7

    .line 103
    goto :goto_6

    .line 104
    :cond_9
    add-int/lit8 p1, p1, 0x1

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_b
    if-eqz v5, :cond_e

    .line 111
    .line 112
    if-eqz p2, :cond_d

    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_c

    .line 119
    .line 120
    iget p2, p0, Landroidx/leanback/widget/q;->k:I

    .line 121
    .line 122
    or-int/lit8 p2, p2, 0x20

    .line 123
    .line 124
    iput p2, p0, Landroidx/leanback/widget/q;->k:I

    .line 125
    .line 126
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 127
    .line 128
    .line 129
    iget p2, p0, Landroidx/leanback/widget/q;->k:I

    .line 130
    .line 131
    and-int/lit8 p2, p2, -0x21

    .line 132
    .line 133
    iput p2, p0, Landroidx/leanback/widget/q;->k:I

    .line 134
    .line 135
    :cond_c
    iput v1, p0, Landroidx/leanback/widget/q;->m:I

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_d
    const/4 p2, 0x1

    .line 139
    invoke-virtual {p0, v5, p2}, Landroidx/leanback/widget/q;->D(Landroid/view/View;Z)V

    .line 140
    .line 141
    .line 142
    :cond_e
    :goto_7
    return p1
.end method

.method public final w()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    const v1, 0x10040

    .line 4
    .line 5
    .line 6
    and-int/2addr v1, v0

    .line 7
    const/high16 v2, 0x10000

    .line 8
    .line 9
    if-ne v1, v2, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 12
    .line 13
    iget v2, p0, Landroidx/leanback/widget/q;->m:I

    .line 14
    .line 15
    const/high16 v3, 0x40000

    .line 16
    .line 17
    and-int/2addr v0, v3

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Landroidx/leanback/widget/q;->I:I

    .line 21
    .line 22
    neg-int v0, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/q;->H:I

    .line 25
    .line 26
    iget v3, p0, Landroidx/leanback/widget/q;->I:I

    .line 27
    .line 28
    add-int/2addr v0, v3

    .line 29
    :goto_0
    iget v3, v1, Landroidx/leanback/widget/j;->g:I

    .line 30
    .line 31
    iget v4, v1, Landroidx/leanback/widget/j;->f:I

    .line 32
    .line 33
    if-lt v3, v4, :cond_2

    .line 34
    .line 35
    if-le v3, v2, :cond_2

    .line 36
    .line 37
    iget-boolean v4, v1, Landroidx/leanback/widget/j;->c:Z

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    iget-object v4, v1, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Landroidx/leanback/widget/k;->d(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-lt v3, v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v4, v1, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Landroidx/leanback/widget/k;->d(I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-gt v3, v0, :cond_2

    .line 57
    .line 58
    :goto_1
    iget-object v3, v1, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 59
    .line 60
    iget v4, v1, Landroidx/leanback/widget/j;->g:I

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroidx/leanback/widget/k;->f(I)V

    .line 63
    .line 64
    .line 65
    iget v3, v1, Landroidx/leanback/widget/j;->g:I

    .line 66
    .line 67
    add-int/lit8 v3, v3, -0x1

    .line 68
    .line 69
    iput v3, v1, Landroidx/leanback/widget/j;->g:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget v0, v1, Landroidx/leanback/widget/j;->g:I

    .line 73
    .line 74
    iget v2, v1, Landroidx/leanback/widget/j;->f:I

    .line 75
    .line 76
    if-ge v0, v2, :cond_3

    .line 77
    .line 78
    const/4 v0, -0x1

    .line 79
    iput v0, v1, Landroidx/leanback/widget/j;->g:I

    .line 80
    .line 81
    iput v0, v1, Landroidx/leanback/widget/j;->f:I

    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public final x()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    const v1, 0x10040

    .line 4
    .line 5
    .line 6
    and-int/2addr v1, v0

    .line 7
    const/high16 v2, 0x10000

    .line 8
    .line 9
    if-ne v1, v2, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 12
    .line 13
    iget v2, p0, Landroidx/leanback/widget/q;->m:I

    .line 14
    .line 15
    const/high16 v3, 0x40000

    .line 16
    .line 17
    and-int/2addr v0, v3

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Landroidx/leanback/widget/q;->H:I

    .line 21
    .line 22
    iget v3, p0, Landroidx/leanback/widget/q;->I:I

    .line 23
    .line 24
    add-int/2addr v0, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/q;->I:I

    .line 27
    .line 28
    neg-int v0, v0

    .line 29
    :goto_0
    iget v3, v1, Landroidx/leanback/widget/j;->g:I

    .line 30
    .line 31
    iget v4, v1, Landroidx/leanback/widget/j;->f:I

    .line 32
    .line 33
    if-lt v3, v4, :cond_2

    .line 34
    .line 35
    if-ge v4, v2, :cond_2

    .line 36
    .line 37
    iget-object v3, v1, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroidx/leanback/widget/k;->e(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-boolean v4, v1, Landroidx/leanback/widget/j;->c:Z

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    iget-object v4, v1, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 48
    .line 49
    iget v5, v1, Landroidx/leanback/widget/j;->f:I

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Landroidx/leanback/widget/k;->d(I)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    add-int/2addr v4, v3

    .line 56
    if-gt v4, v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v4, v1, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 60
    .line 61
    iget v5, v1, Landroidx/leanback/widget/j;->f:I

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Landroidx/leanback/widget/k;->d(I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    sub-int/2addr v4, v3

    .line 68
    if-lt v4, v0, :cond_2

    .line 69
    .line 70
    :goto_1
    iget-object v3, v1, Landroidx/leanback/widget/j;->b:Landroidx/leanback/widget/k;

    .line 71
    .line 72
    iget v4, v1, Landroidx/leanback/widget/j;->f:I

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroidx/leanback/widget/k;->f(I)V

    .line 75
    .line 76
    .line 77
    iget v3, v1, Landroidx/leanback/widget/j;->f:I

    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    iput v3, v1, Landroidx/leanback/widget/j;->f:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget v0, v1, Landroidx/leanback/widget/j;->g:I

    .line 85
    .line 86
    iget v2, v1, Landroidx/leanback/widget/j;->f:I

    .line 87
    .line 88
    if-ge v0, v2, :cond_3

    .line 89
    .line 90
    const/4 v0, -0x1

    .line 91
    iput v0, v1, Landroidx/leanback/widget/j;->g:I

    .line 92
    .line 93
    iput v0, v1, Landroidx/leanback/widget/j;->f:I

    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public final y(Landroidx/recyclerview/widget/g2;Landroidx/recyclerview/widget/n2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 6
    .line 7
    :cond_0
    iput-object p1, p0, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroidx/leanback/widget/q;->f:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/leanback/widget/q;->g:I

    .line 15
    .line 16
    return-void
.end method

.method public final z(I)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/leanback/widget/q;->k:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x40

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x3

    .line 9
    .line 10
    if-eq v0, v2, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 13
    .line 14
    if-lez p1, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, La2/w0;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroidx/leanback/widget/x0;

    .line 19
    .line 20
    iget v1, v0, Landroidx/leanback/widget/x0;->a:I

    .line 21
    .line 22
    const v3, 0x7fffffff

    .line 23
    .line 24
    .line 25
    if-ne v1, v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget v0, v0, Landroidx/leanback/widget/x0;->c:I

    .line 29
    .line 30
    if-le p1, v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-gez p1, :cond_3

    .line 34
    .line 35
    iget-object v0, v0, La2/w0;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Landroidx/leanback/widget/x0;

    .line 38
    .line 39
    iget v1, v0, Landroidx/leanback/widget/x0;->b:I

    .line 40
    .line 41
    const/high16 v3, -0x80000000

    .line 42
    .line 43
    if-ne v1, v3, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget v0, v0, Landroidx/leanback/widget/x0;->d:I

    .line 47
    .line 48
    if-ge p1, v0, :cond_3

    .line 49
    .line 50
    :goto_0
    move p1, v0

    .line 51
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    return v0

    .line 55
    :cond_4
    neg-int v1, p1

    .line 56
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iget v4, p0, Landroidx/leanback/widget/q;->c:I

    .line 61
    .line 62
    if-ne v4, v2, :cond_5

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    :goto_2
    if-ge v4, v3, :cond_6

    .line 66
    .line 67
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    const/4 v4, 0x0

    .line 78
    :goto_3
    if-ge v4, v3, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v5, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    iget v1, p0, Landroidx/leanback/widget/q;->k:I

    .line 91
    .line 92
    and-int/lit8 v1, v1, 0x3

    .line 93
    .line 94
    if-ne v1, v2, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->K()V

    .line 97
    .line 98
    .line 99
    return p1

    .line 100
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget v3, p0, Landroidx/leanback/widget/q;->k:I

    .line 105
    .line 106
    const/high16 v4, 0x40000

    .line 107
    .line 108
    and-int/2addr v3, v4

    .line 109
    if-eqz v3, :cond_8

    .line 110
    .line 111
    if-lez p1, :cond_9

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_8
    if-gez p1, :cond_9

    .line 115
    .line 116
    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->s()V

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_9
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->a()V

    .line 121
    .line 122
    .line 123
    :goto_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-le v3, v1, :cond_a

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    goto :goto_6

    .line 131
    :cond_a
    const/4 v1, 0x0

    .line 132
    :goto_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    iget v5, p0, Landroidx/leanback/widget/q;->k:I

    .line 137
    .line 138
    and-int/2addr v4, v5

    .line 139
    if-eqz v4, :cond_b

    .line 140
    .line 141
    if-lez p1, :cond_c

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_b
    if-gez p1, :cond_c

    .line 145
    .line 146
    :goto_7
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->w()V

    .line 147
    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_c
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->x()V

    .line 151
    .line 152
    .line 153
    :goto_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-ge v4, v3, :cond_d

    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_d
    const/4 v2, 0x0

    .line 161
    :goto_9
    or-int v0, v1, v2

    .line 162
    .line 163
    if-eqz v0, :cond_e

    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->J()V

    .line 166
    .line 167
    .line 168
    :cond_e
    iget-object v0, p0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroidx/leanback/widget/q;->K()V

    .line 174
    .line 175
    .line 176
    return p1
.end method
