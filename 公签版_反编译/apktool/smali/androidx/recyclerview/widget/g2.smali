.class public final Landroidx/recyclerview/widget/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/f2;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/g2;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/g2;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/g2;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/recyclerview/widget/g2;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/recyclerview/widget/g2;->d:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/g2;->e:I

    .line 31
    .line 32
    iput p1, p0, Landroidx/recyclerview/widget/g2;->f:I

    .line 33
    .line 34
    return-void
.end method

.method public static e(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    check-cast v2, Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-static {v2, v1}, Landroidx/recyclerview/widget/g2;->e(Landroid/view/ViewGroup;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v0, 0x4

    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/g2;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/s2;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/recyclerview/widget/s2;->e:Landroidx/recyclerview/widget/r2;

    .line 14
    .line 15
    instance-of v4, v2, Landroidx/recyclerview/widget/r2;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/recyclerview/widget/r2;->e:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lx0/c;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v2, v3

    .line 29
    :goto_0
    invoke-static {v0, v2}, Lx0/b1;->x(Landroid/view/View;Lx0/c;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    if-eqz p2, :cond_6

    .line 33
    .line 34
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/h2;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    check-cast p2, Landroidx/leanback/widget/a;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/a;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_1
    if-ge v0, p2, :cond_3

    .line 51
    .line 52
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroidx/recyclerview/widget/h2;

    .line 59
    .line 60
    check-cast v2, Landroidx/leanback/widget/a;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Landroidx/leanback/widget/a;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/m1;->n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 76
    .line 77
    if-eqz p2, :cond_5

    .line 78
    .line 79
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/i3;

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/i3;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 85
    .line 86
    if-eqz p2, :cond_6

    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    :cond_6
    iput-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/m1;

    .line 92
    .line 93
    iput-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g2;->c()Landroidx/recyclerview/widget/f2;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/f2;->a(I)Landroidx/recyclerview/widget/e2;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v1, v1, Landroidx/recyclerview/widget/e2;->a:Ljava/util/ArrayList;

    .line 111
    .line 112
    iget-object p2, p2, Landroidx/recyclerview/widget/f2;->a:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Landroidx/recyclerview/widget/e2;

    .line 119
    .line 120
    iget p2, p2, Landroidx/recyclerview/widget/e2;->b:I

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-gt p2, v0, :cond_7

    .line 127
    .line 128
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 129
    .line 130
    invoke-static {p1}, Lq4/a;->d(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_7
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 135
    .line 136
    if-eqz p2, :cond_9

    .line 137
    .line 138
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-nez p2, :cond_8

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    const-string p2, "this scrap item already exists"

    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1

    .line 153
    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :goto_3
    return-void
.end method

.method public final b(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/n2;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 14
    .line 15
    iget-boolean v1, v1, Landroidx/recyclerview/widget/n2;->g:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string v2, "invalid position "

    .line 31
    .line 32
    const-string v3, ". State item count is "

    .line 33
    .line 34
    invoke-static {v2, p1, v3}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/n2;->b()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public final c()Landroidx/recyclerview/widget/f2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->g:Landroidx/recyclerview/widget/f2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/f2;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/recyclerview/widget/f2;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/g2;->g:Landroidx/recyclerview/widget/f2;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g2;->f()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->g:Landroidx/recyclerview/widget/f2;

    .line 16
    .line 17
    return-object v0
.end method

.method public final d(I)Landroid/view/View;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/g2;->m(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    return-object p1
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->g:Landroidx/recyclerview/widget/f2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/g2;->g:Landroidx/recyclerview/widget/f2;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/recyclerview/widget/f2;->c:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/m1;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->g:Landroidx/recyclerview/widget/f2;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/f2;->c:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    const/4 p2, 0x0

    .line 20
    :goto_0
    iget-object v1, v0, Landroidx/recyclerview/widget/f2;->a:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge p2, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/recyclerview/widget/e2;

    .line 37
    .line 38
    iget-object v1, v1, Landroidx/recyclerview/widget/e2;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v2, v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 52
    .line 53
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 54
    .line 55
    invoke-static {v3}, Lq4/a;->d(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->c:Ljava/util/ArrayList;

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
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/g2;->i(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e0;

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/recyclerview/widget/e0;->c:[I

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    iput v1, v0, Landroidx/recyclerview/widget/e0;->d:I

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final i(I)V
    .locals 3

    .line 1
    sget v0, Landroidx/recyclerview/widget/RecyclerView;->HORIZONTAL:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    .line 11
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/g2;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/g2;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/g2;->k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/t1;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/t1;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/t1;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Landroidx/recyclerview/widget/g2;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-nez v0, :cond_12

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_a

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_11

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_10

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/m1;->k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v4, 0x0

    .line 52
    :goto_0
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 53
    .line 54
    iget-object v6, p0, Landroidx/recyclerview/widget/g2;->c:Ljava/util/ArrayList;

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "cached view received recycle internal? "

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v1}, Landroid/support/v4/media/session/a;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_3
    :goto_1
    if-nez v4, :cond_6

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    :cond_5
    :goto_2
    const/4 v2, 0x0

    .line 102
    goto/16 :goto_9

    .line 103
    .line 104
    :cond_6
    :goto_3
    iget v4, p0, Landroidx/recyclerview/widget/g2;->f:I

    .line 105
    .line 106
    if-lez v4, :cond_d

    .line 107
    .line 108
    const/16 v4, 0x20e

    .line 109
    .line 110
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_d

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    iget v5, p0, Landroidx/recyclerview/widget/g2;->f:I

    .line 121
    .line 122
    if-lt v4, v5, :cond_7

    .line 123
    .line 124
    if-lez v4, :cond_7

    .line 125
    .line 126
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/g2;->i(I)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v4, v4, -0x1

    .line 130
    .line 131
    :cond_7
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 132
    .line 133
    if-eqz v5, :cond_c

    .line 134
    .line 135
    if-lez v4, :cond_c

    .line 136
    .line 137
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e0;

    .line 138
    .line 139
    iget v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 140
    .line 141
    iget-object v8, v5, Landroidx/recyclerview/widget/e0;->c:[I

    .line 142
    .line 143
    if-eqz v8, :cond_9

    .line 144
    .line 145
    iget v8, v5, Landroidx/recyclerview/widget/e0;->d:I

    .line 146
    .line 147
    mul-int/lit8 v8, v8, 0x2

    .line 148
    .line 149
    const/4 v9, 0x0

    .line 150
    :goto_4
    if-ge v9, v8, :cond_9

    .line 151
    .line 152
    iget-object v10, v5, Landroidx/recyclerview/widget/e0;->c:[I

    .line 153
    .line 154
    aget v10, v10, v9

    .line 155
    .line 156
    if-ne v10, v7, :cond_8

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_8
    add-int/lit8 v9, v9, 0x2

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_9
    add-int/lit8 v4, v4, -0x1

    .line 163
    .line 164
    :goto_5
    if-ltz v4, :cond_b

    .line 165
    .line 166
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 171
    .line 172
    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 173
    .line 174
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e0;

    .line 175
    .line 176
    iget-object v8, v7, Landroidx/recyclerview/widget/e0;->c:[I

    .line 177
    .line 178
    if-eqz v8, :cond_b

    .line 179
    .line 180
    iget v8, v7, Landroidx/recyclerview/widget/e0;->d:I

    .line 181
    .line 182
    mul-int/lit8 v8, v8, 0x2

    .line 183
    .line 184
    const/4 v9, 0x0

    .line 185
    :goto_6
    if-ge v9, v8, :cond_b

    .line 186
    .line 187
    iget-object v10, v7, Landroidx/recyclerview/widget/e0;->c:[I

    .line 188
    .line 189
    aget v10, v10, v9

    .line 190
    .line 191
    if-ne v10, v5, :cond_a

    .line 192
    .line 193
    add-int/lit8 v4, v4, -0x1

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_a
    add-int/lit8 v9, v9, 0x2

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_b
    add-int/2addr v4, v2

    .line 200
    :cond_c
    :goto_7
    invoke-virtual {v6, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    const/4 v4, 0x1

    .line 204
    goto :goto_8

    .line 205
    :cond_d
    const/4 v4, 0x0

    .line 206
    :goto_8
    if-nez v4, :cond_e

    .line 207
    .line 208
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/g2;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 209
    .line 210
    .line 211
    move v1, v4

    .line 212
    goto :goto_9

    .line 213
    :cond_e
    move v1, v4

    .line 214
    goto :goto_2

    .line 215
    :goto_9
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/i3;

    .line 216
    .line 217
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/i3;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 218
    .line 219
    .line 220
    if-nez v1, :cond_f

    .line 221
    .line 222
    if-nez v2, :cond_f

    .line 223
    .line 224
    if-eqz v0, :cond_f

    .line 225
    .line 226
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 227
    .line 228
    invoke-static {v0}, Lq4/a;->d(Landroid/view/View;)V

    .line 229
    .line 230
    .line 231
    const/4 v0, 0x0

    .line 232
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/m1;

    .line 233
    .line 234
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    .line 236
    :cond_f
    return-void

    .line 237
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v3, v0}, Landroid/support/v4/media/session/a;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 255
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 259
    .line 260
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-static {v3, v1}, Landroid/support/v4/media/session/a;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v0

    .line 274
    :cond_12
    :goto_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 275
    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v5, "Scrapped or attached views may not be recycled. isScrap:"

    .line 279
    .line 280
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v5, " isAttached:"

    .line 291
    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 296
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    if-eqz p1, :cond_13

    .line 302
    .line 303
    const/4 v1, 0x1

    .line 304
    :cond_13
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    goto :goto_c

    .line 322
    :goto_b
    throw v0

    .line 323
    :goto_c
    goto :goto_b
.end method

.method public final l(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/g2;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/recyclerview/widget/g2;->b:Ljava/util/ArrayList;

    .line 38
    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroidx/recyclerview/widget/g2;Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 62
    .line 63
    iget-boolean v0, v0, Landroidx/recyclerview/widget/m1;->b:Z

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroidx/recyclerview/widget/g2;Z)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->a:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :goto_2
    return-void
.end method

.method public final m(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v1, Landroidx/recyclerview/widget/g2;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-ltz v0, :cond_50

    .line 10
    .line 11
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 12
    .line 13
    invoke-virtual {v5}, Landroidx/recyclerview/widget/n2;->b()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-ge v0, v5, :cond_50

    .line 18
    .line 19
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 20
    .line 21
    iget-boolean v5, v5, Landroidx/recyclerview/widget/n2;->g:Z

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    const/16 v8, 0x20

    .line 25
    .line 26
    if-eqz v5, :cond_6

    .line 27
    .line 28
    iget-object v5, v1, Landroidx/recyclerview/widget/g2;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v5, :cond_4

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    const/4 v9, 0x0

    .line 40
    :goto_0
    if-ge v9, v5, :cond_2

    .line 41
    .line 42
    iget-object v10, v1, Landroidx/recyclerview/widget/g2;->b:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    .line 50
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-nez v11, :cond_1

    .line 55
    .line 56
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-ne v11, v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v10, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_1
    add-int/2addr v9, v3

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 69
    .line 70
    iget-boolean v9, v9, Landroidx/recyclerview/widget/m1;->b:Z

    .line 71
    .line 72
    if-eqz v9, :cond_4

    .line 73
    .line 74
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 75
    .line 76
    invoke-virtual {v9, v0, v6}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-lez v9, :cond_4

    .line 81
    .line 82
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 83
    .line 84
    invoke-virtual {v10}, Landroidx/recyclerview/widget/m1;->b()I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-ge v9, v10, :cond_4

    .line 89
    .line 90
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 91
    .line 92
    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/m1;->c(I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v9

    .line 96
    const/4 v11, 0x0

    .line 97
    :goto_1
    if-ge v11, v5, :cond_4

    .line 98
    .line 99
    iget-object v12, v1, Landroidx/recyclerview/widget/g2;->b:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 106
    .line 107
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    if-nez v13, :cond_3

    .line 112
    .line 113
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    .line 114
    .line 115
    .line 116
    move-result-wide v13

    .line 117
    cmp-long v15, v13, v9

    .line 118
    .line 119
    if-nez v15, :cond_3

    .line 120
    .line 121
    invoke-virtual {v12, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 122
    .line 123
    .line 124
    move-object v10, v12

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    add-int/2addr v11, v3

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    :goto_2
    const/4 v10, 0x0

    .line 129
    :goto_3
    if-eqz v10, :cond_5

    .line 130
    .line 131
    const/4 v5, 0x1

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    const/4 v5, 0x0

    .line 134
    goto :goto_4

    .line 135
    :cond_6
    const/4 v5, 0x0

    .line 136
    const/4 v10, 0x0

    .line 137
    :goto_4
    iget-object v9, v1, Landroidx/recyclerview/widget/g2;->c:Ljava/util/ArrayList;

    .line 138
    .line 139
    iget-object v11, v1, Landroidx/recyclerview/widget/g2;->a:Ljava/util/ArrayList;

    .line 140
    .line 141
    if-nez v10, :cond_1d

    .line 142
    .line 143
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    const/4 v12, 0x0

    .line 148
    :goto_5
    if-ge v12, v10, :cond_9

    .line 149
    .line 150
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 155
    .line 156
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    if-nez v14, :cond_8

    .line 161
    .line 162
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    if-ne v14, v0, :cond_8

    .line 167
    .line 168
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    if-nez v14, :cond_8

    .line 173
    .line 174
    iget-object v14, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 175
    .line 176
    iget-boolean v14, v14, Landroidx/recyclerview/widget/n2;->g:Z

    .line 177
    .line 178
    if-nez v14, :cond_7

    .line 179
    .line 180
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 181
    .line 182
    .line 183
    move-result v14

    .line 184
    if-nez v14, :cond_8

    .line 185
    .line 186
    :cond_7
    invoke-virtual {v13, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 187
    .line 188
    .line 189
    move-object v10, v13

    .line 190
    goto/16 :goto_9

    .line 191
    .line 192
    :cond_8
    add-int/2addr v12, v3

    .line 193
    goto :goto_5

    .line 194
    :cond_9
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/i;

    .line 195
    .line 196
    iget-object v10, v10, Landroidx/recyclerview/widget/i;->c:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    const/4 v13, 0x0

    .line 203
    :goto_6
    if-ge v13, v12, :cond_b

    .line 204
    .line 205
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v14

    .line 209
    check-cast v14, Landroid/view/View;

    .line 210
    .line 211
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-ne v7, v0, :cond_a

    .line 220
    .line 221
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-nez v7, :cond_a

    .line 226
    .line 227
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-nez v7, :cond_a

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_a
    add-int/2addr v13, v3

    .line 235
    goto :goto_6

    .line 236
    :cond_b
    const/4 v14, 0x0

    .line 237
    :goto_7
    if-eqz v14, :cond_f

    .line 238
    .line 239
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/i;

    .line 244
    .line 245
    iget-object v12, v10, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/k1;

    .line 246
    .line 247
    iget-object v12, v12, Landroidx/recyclerview/widget/k1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 248
    .line 249
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    if-ltz v12, :cond_e

    .line 254
    .line 255
    iget-object v13, v10, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/h;

    .line 256
    .line 257
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/h;->n(I)Z

    .line 258
    .line 259
    .line 260
    move-result v15

    .line 261
    if-eqz v15, :cond_d

    .line 262
    .line 263
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/h;->k(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v10, v14}, Landroidx/recyclerview/widget/i;->l(Landroid/view/View;)V

    .line 267
    .line 268
    .line 269
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/i;

    .line 270
    .line 271
    invoke-virtual {v10, v14}, Landroidx/recyclerview/widget/i;->j(Landroid/view/View;)I

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    if-eq v10, v2, :cond_c

    .line 276
    .line 277
    iget-object v12, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/i;

    .line 278
    .line 279
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/i;->c(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/g2;->l(Landroid/view/View;)V

    .line 283
    .line 284
    .line 285
    const/16 v10, 0x2020

    .line 286
    .line 287
    invoke-virtual {v7, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 288
    .line 289
    .line 290
    move-object v10, v7

    .line 291
    goto :goto_9

    .line 292
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 293
    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string v3, "layout index should not be -1 after unhiding a view:"

    .line 297
    .line 298
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-static {v4, v2}, Landroid/support/v4/media/session/a;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v0

    .line 312
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 313
    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    const-string v3, "trying to unhide a view that was not hidden"

    .line 317
    .line 318
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v0

    .line 332
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 333
    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    const-string v3, "view is not a child, cannot hide "

    .line 337
    .line 338
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v0

    .line 352
    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    const/4 v10, 0x0

    .line 357
    :goto_8
    if-ge v10, v7, :cond_12

    .line 358
    .line 359
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v12

    .line 363
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 364
    .line 365
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 366
    .line 367
    .line 368
    move-result v13

    .line 369
    if-nez v13, :cond_11

    .line 370
    .line 371
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 372
    .line 373
    .line 374
    move-result v13

    .line 375
    if-ne v13, v0, :cond_11

    .line 376
    .line 377
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    if-nez v13, :cond_11

    .line 382
    .line 383
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 387
    .line 388
    if-eqz v7, :cond_10

    .line 389
    .line 390
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    :cond_10
    move-object v10, v12

    .line 394
    goto :goto_9

    .line 395
    :cond_11
    add-int/2addr v10, v3

    .line 396
    goto :goto_8

    .line 397
    :cond_12
    const/4 v10, 0x0

    .line 398
    :goto_9
    if-eqz v10, :cond_1d

    .line 399
    .line 400
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    if-eqz v7, :cond_15

    .line 405
    .line 406
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 407
    .line 408
    if-eqz v7, :cond_14

    .line 409
    .line 410
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 411
    .line 412
    iget-boolean v7, v7, Landroidx/recyclerview/widget/n2;->g:Z

    .line 413
    .line 414
    if-eqz v7, :cond_13

    .line 415
    .line 416
    goto :goto_a

    .line 417
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 418
    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v3, "should not receive a removed view unless it is pre layout"

    .line 422
    .line 423
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-static {v4, v2}, Landroid/support/v4/media/session/a;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw v0

    .line 434
    :cond_14
    :goto_a
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 435
    .line 436
    iget-boolean v7, v7, Landroidx/recyclerview/widget/n2;->g:Z

    .line 437
    .line 438
    goto :goto_b

    .line 439
    :cond_15
    iget v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 440
    .line 441
    if-ltz v7, :cond_1c

    .line 442
    .line 443
    iget-object v12, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 444
    .line 445
    invoke-virtual {v12}, Landroidx/recyclerview/widget/m1;->b()I

    .line 446
    .line 447
    .line 448
    move-result v12

    .line 449
    if-ge v7, v12, :cond_1c

    .line 450
    .line 451
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 452
    .line 453
    iget-boolean v7, v7, Landroidx/recyclerview/widget/n2;->g:Z

    .line 454
    .line 455
    if-nez v7, :cond_17

    .line 456
    .line 457
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 458
    .line 459
    iget v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 460
    .line 461
    invoke-virtual {v7, v12}, Landroidx/recyclerview/widget/m1;->d(I)I

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 466
    .line 467
    .line 468
    move-result v12

    .line 469
    if-eq v7, v12, :cond_17

    .line 470
    .line 471
    :cond_16
    const/4 v7, 0x0

    .line 472
    goto :goto_b

    .line 473
    :cond_17
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 474
    .line 475
    iget-boolean v7, v7, Landroidx/recyclerview/widget/m1;->b:Z

    .line 476
    .line 477
    if-eqz v7, :cond_18

    .line 478
    .line 479
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    .line 480
    .line 481
    .line 482
    move-result-wide v12

    .line 483
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 484
    .line 485
    iget v14, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 486
    .line 487
    invoke-virtual {v7, v14}, Landroidx/recyclerview/widget/m1;->c(I)J

    .line 488
    .line 489
    .line 490
    move-result-wide v14

    .line 491
    cmp-long v7, v12, v14

    .line 492
    .line 493
    if-nez v7, :cond_16

    .line 494
    .line 495
    :cond_18
    const/4 v7, 0x1

    .line 496
    :goto_b
    if-nez v7, :cond_1b

    .line 497
    .line 498
    const/4 v7, 0x4

    .line 499
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 503
    .line 504
    .line 505
    move-result v7

    .line 506
    if-eqz v7, :cond_19

    .line 507
    .line 508
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 509
    .line 510
    invoke-virtual {v4, v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 514
    .line 515
    .line 516
    goto :goto_c

    .line 517
    :cond_19
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-eqz v7, :cond_1a

    .line 522
    .line 523
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 524
    .line 525
    .line 526
    :cond_1a
    :goto_c
    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/g2;->k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 527
    .line 528
    .line 529
    const/4 v10, 0x0

    .line 530
    goto :goto_d

    .line 531
    :cond_1b
    const/4 v5, 0x1

    .line 532
    goto :goto_d

    .line 533
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 534
    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    .line 538
    .line 539
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-static {v4, v2}, Landroid/support/v4/media/session/a;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    throw v0

    .line 553
    :cond_1d
    :goto_d
    const-wide/16 v17, 0x0

    .line 554
    .line 555
    const-wide v19, 0x7fffffffffffffffL

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    if-nez v10, :cond_32

    .line 561
    .line 562
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 563
    .line 564
    invoke-virtual {v7, v0, v6}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 565
    .line 566
    .line 567
    move-result v7

    .line 568
    if-ltz v7, :cond_31

    .line 569
    .line 570
    iget-object v12, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 571
    .line 572
    invoke-virtual {v12}, Landroidx/recyclerview/widget/m1;->b()I

    .line 573
    .line 574
    .line 575
    move-result v12

    .line 576
    if-ge v7, v12, :cond_31

    .line 577
    .line 578
    iget-object v12, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 579
    .line 580
    invoke-virtual {v12, v7}, Landroidx/recyclerview/widget/m1;->d(I)I

    .line 581
    .line 582
    .line 583
    move-result v12

    .line 584
    iget-object v13, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 585
    .line 586
    iget-boolean v14, v13, Landroidx/recyclerview/widget/m1;->b:Z

    .line 587
    .line 588
    if-eqz v14, :cond_26

    .line 589
    .line 590
    invoke-virtual {v13, v7}, Landroidx/recyclerview/widget/m1;->c(I)J

    .line 591
    .line 592
    .line 593
    move-result-wide v13

    .line 594
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 595
    .line 596
    .line 597
    move-result v10

    .line 598
    sub-int/2addr v10, v3

    .line 599
    :goto_e
    if-ltz v10, :cond_20

    .line 600
    .line 601
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v15

    .line 605
    check-cast v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 606
    .line 607
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    .line 608
    .line 609
    .line 610
    move-result-wide v23

    .line 611
    cmp-long v25, v23, v13

    .line 612
    .line 613
    if-nez v25, :cond_1f

    .line 614
    .line 615
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 616
    .line 617
    .line 618
    move-result v23

    .line 619
    if-nez v23, :cond_1f

    .line 620
    .line 621
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    if-ne v12, v3, :cond_1e

    .line 626
    .line 627
    invoke-virtual {v15, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    if-eqz v3, :cond_24

    .line 635
    .line 636
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 637
    .line 638
    iget-boolean v3, v3, Landroidx/recyclerview/widget/n2;->g:Z

    .line 639
    .line 640
    if-nez v3, :cond_24

    .line 641
    .line 642
    const/4 v3, 0x2

    .line 643
    const/16 v8, 0xe

    .line 644
    .line 645
    invoke-virtual {v15, v3, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 646
    .line 647
    .line 648
    goto :goto_10

    .line 649
    :cond_1e
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    iget-object v3, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 653
    .line 654
    invoke-virtual {v4, v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 655
    .line 656
    .line 657
    iget-object v3, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 658
    .line 659
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    const/4 v15, 0x0

    .line 664
    iput-object v15, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/g2;

    .line 665
    .line 666
    iput-boolean v6, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 667
    .line 668
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/g2;->k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 672
    .line 673
    .line 674
    :cond_1f
    add-int/2addr v10, v2

    .line 675
    const/4 v3, 0x1

    .line 676
    goto :goto_e

    .line 677
    :cond_20
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    const/4 v8, 0x1

    .line 682
    sub-int/2addr v3, v8

    .line 683
    :goto_f
    if-ltz v3, :cond_22

    .line 684
    .line 685
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v8

    .line 689
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 690
    .line 691
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    .line 692
    .line 693
    .line 694
    move-result-wide v10

    .line 695
    cmp-long v15, v10, v13

    .line 696
    .line 697
    if-nez v15, :cond_23

    .line 698
    .line 699
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    .line 700
    .line 701
    .line 702
    move-result v10

    .line 703
    if-nez v10, :cond_23

    .line 704
    .line 705
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 706
    .line 707
    .line 708
    move-result v10

    .line 709
    if-ne v12, v10, :cond_21

    .line 710
    .line 711
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-object v15, v8

    .line 715
    goto :goto_10

    .line 716
    :cond_21
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/g2;->i(I)V

    .line 717
    .line 718
    .line 719
    :cond_22
    const/4 v15, 0x0

    .line 720
    goto :goto_10

    .line 721
    :cond_23
    add-int/2addr v3, v2

    .line 722
    goto :goto_f

    .line 723
    :cond_24
    :goto_10
    if-eqz v15, :cond_25

    .line 724
    .line 725
    iput v7, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 726
    .line 727
    move-object v10, v15

    .line 728
    const/4 v5, 0x1

    .line 729
    goto :goto_11

    .line 730
    :cond_25
    move-object v10, v15

    .line 731
    :cond_26
    :goto_11
    if-nez v10, :cond_2a

    .line 732
    .line 733
    sget v3, Landroidx/recyclerview/widget/RecyclerView;->HORIZONTAL:I

    .line 734
    .line 735
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/g2;->c()Landroidx/recyclerview/widget/f2;

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    iget-object v3, v3, Landroidx/recyclerview/widget/f2;->a:Landroid/util/SparseArray;

    .line 740
    .line 741
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v3

    .line 745
    check-cast v3, Landroidx/recyclerview/widget/e2;

    .line 746
    .line 747
    if-eqz v3, :cond_28

    .line 748
    .line 749
    iget-object v3, v3, Landroidx/recyclerview/widget/e2;->a:Ljava/util/ArrayList;

    .line 750
    .line 751
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 752
    .line 753
    .line 754
    move-result v7

    .line 755
    if-nez v7, :cond_28

    .line 756
    .line 757
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 758
    .line 759
    .line 760
    move-result v7

    .line 761
    const/4 v8, 0x1

    .line 762
    sub-int/2addr v7, v8

    .line 763
    :goto_12
    if-ltz v7, :cond_28

    .line 764
    .line 765
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v8

    .line 769
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 770
    .line 771
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    .line 772
    .line 773
    .line 774
    move-result v8

    .line 775
    if-nez v8, :cond_27

    .line 776
    .line 777
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v2

    .line 781
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 782
    .line 783
    goto :goto_13

    .line 784
    :cond_27
    add-int/2addr v7, v2

    .line 785
    goto :goto_12

    .line 786
    :cond_28
    const/4 v2, 0x0

    .line 787
    :goto_13
    if-eqz v2, :cond_29

    .line 788
    .line 789
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 790
    .line 791
    .line 792
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 793
    .line 794
    if-eqz v3, :cond_29

    .line 795
    .line 796
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 797
    .line 798
    instance-of v7, v3, Landroid/view/ViewGroup;

    .line 799
    .line 800
    if-eqz v7, :cond_29

    .line 801
    .line 802
    check-cast v3, Landroid/view/ViewGroup;

    .line 803
    .line 804
    invoke-static {v3, v6}, Landroidx/recyclerview/widget/g2;->e(Landroid/view/ViewGroup;Z)V

    .line 805
    .line 806
    .line 807
    :cond_29
    move-object v10, v2

    .line 808
    :cond_2a
    if-nez v10, :cond_32

    .line 809
    .line 810
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 811
    .line 812
    .line 813
    move-result-wide v2

    .line 814
    cmp-long v7, p2, v19

    .line 815
    .line 816
    if-eqz v7, :cond_2d

    .line 817
    .line 818
    iget-object v7, v1, Landroidx/recyclerview/widget/g2;->g:Landroidx/recyclerview/widget/f2;

    .line 819
    .line 820
    invoke-virtual {v7, v12}, Landroidx/recyclerview/widget/f2;->a(I)Landroidx/recyclerview/widget/e2;

    .line 821
    .line 822
    .line 823
    move-result-object v7

    .line 824
    iget-wide v7, v7, Landroidx/recyclerview/widget/e2;->c:J

    .line 825
    .line 826
    cmp-long v9, v7, v17

    .line 827
    .line 828
    if-eqz v9, :cond_2c

    .line 829
    .line 830
    add-long/2addr v7, v2

    .line 831
    cmp-long v9, v7, p2

    .line 832
    .line 833
    if-gez v9, :cond_2b

    .line 834
    .line 835
    goto :goto_14

    .line 836
    :cond_2b
    const/4 v7, 0x0

    .line 837
    goto :goto_15

    .line 838
    :cond_2c
    :goto_14
    const/4 v7, 0x1

    .line 839
    :goto_15
    if-nez v7, :cond_2d

    .line 840
    .line 841
    const/4 v7, 0x0

    .line 842
    return-object v7

    .line 843
    :cond_2d
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 844
    .line 845
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 846
    .line 847
    .line 848
    :try_start_0
    const-string v8, "RV CreateView"

    .line 849
    .line 850
    invoke-static {v8}, Lt0/o;->a(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v7, v12, v4}, Landroidx/recyclerview/widget/m1;->i(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 854
    .line 855
    .line 856
    move-result-object v10

    .line 857
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 858
    .line 859
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 860
    .line 861
    .line 862
    move-result-object v7

    .line 863
    if-nez v7, :cond_30

    .line 864
    .line 865
    iput v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    .line 867
    invoke-static {}, Lt0/o;->b()V

    .line 868
    .line 869
    .line 870
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 871
    .line 872
    if-eqz v7, :cond_2e

    .line 873
    .line 874
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 875
    .line 876
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 877
    .line 878
    .line 879
    move-result-object v7

    .line 880
    if-eqz v7, :cond_2e

    .line 881
    .line 882
    new-instance v8, Ljava/lang/ref/WeakReference;

    .line 883
    .line 884
    invoke-direct {v8, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    iput-object v8, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 888
    .line 889
    :cond_2e
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 890
    .line 891
    .line 892
    move-result-wide v7

    .line 893
    iget-object v9, v1, Landroidx/recyclerview/widget/g2;->g:Landroidx/recyclerview/widget/f2;

    .line 894
    .line 895
    sub-long/2addr v7, v2

    .line 896
    invoke-virtual {v9, v12}, Landroidx/recyclerview/widget/f2;->a(I)Landroidx/recyclerview/widget/e2;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    iget-wide v11, v2, Landroidx/recyclerview/widget/e2;->c:J

    .line 901
    .line 902
    cmp-long v3, v11, v17

    .line 903
    .line 904
    if-nez v3, :cond_2f

    .line 905
    .line 906
    goto :goto_16

    .line 907
    :cond_2f
    const-wide/16 v13, 0x4

    .line 908
    .line 909
    div-long/2addr v11, v13

    .line 910
    const-wide/16 v21, 0x3

    .line 911
    .line 912
    mul-long v11, v11, v21

    .line 913
    .line 914
    div-long/2addr v7, v13

    .line 915
    add-long/2addr v7, v11

    .line 916
    :goto_16
    iput-wide v7, v2, Landroidx/recyclerview/widget/e2;->c:J

    .line 917
    .line 918
    goto :goto_18

    .line 919
    :catchall_0
    move-exception v0

    .line 920
    goto :goto_17

    .line 921
    :cond_30
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 922
    .line 923
    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 924
    .line 925
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    :goto_17
    invoke-static {}, Lt0/o;->b()V

    .line 930
    .line 931
    .line 932
    throw v0

    .line 933
    :cond_31
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 934
    .line 935
    const-string v3, "Inconsistency detected. Invalid item position "

    .line 936
    .line 937
    const-string v5, "(offset:"

    .line 938
    .line 939
    const-string v6, ").state:"

    .line 940
    .line 941
    invoke-static {v0, v7, v3, v5, v6}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 946
    .line 947
    invoke-virtual {v3}, Landroidx/recyclerview/widget/n2;->b()I

    .line 948
    .line 949
    .line 950
    move-result v3

    .line 951
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    throw v2

    .line 969
    :cond_32
    :goto_18
    if-eqz v5, :cond_33

    .line 970
    .line 971
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 972
    .line 973
    iget-boolean v2, v2, Landroidx/recyclerview/widget/n2;->g:Z

    .line 974
    .line 975
    if-nez v2, :cond_33

    .line 976
    .line 977
    const/16 v2, 0x2000

    .line 978
    .line 979
    invoke-virtual {v10, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    .line 980
    .line 981
    .line 982
    move-result v3

    .line 983
    if-eqz v3, :cond_33

    .line 984
    .line 985
    invoke-virtual {v10, v6, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 986
    .line 987
    .line 988
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 989
    .line 990
    iget-boolean v2, v2, Landroidx/recyclerview/widget/n2;->j:Z

    .line 991
    .line 992
    if-eqz v2, :cond_33

    .line 993
    .line 994
    invoke-static {v10}, Landroidx/recyclerview/widget/t1;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 995
    .line 996
    .line 997
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/t1;

    .line 998
    .line 999
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1003
    .line 1004
    .line 1005
    new-instance v2, Landroidx/recyclerview/widget/s1;

    .line 1006
    .line 1007
    invoke-direct {v2}, Landroidx/recyclerview/widget/s1;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/s1;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v4, v10, v2}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/s1;)V

    .line 1014
    .line 1015
    .line 1016
    :cond_33
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 1017
    .line 1018
    iget-boolean v2, v2, Landroidx/recyclerview/widget/n2;->g:Z

    .line 1019
    .line 1020
    if-eqz v2, :cond_34

    .line 1021
    .line 1022
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    .line 1023
    .line 1024
    .line 1025
    move-result v2

    .line 1026
    if-eqz v2, :cond_34

    .line 1027
    .line 1028
    iput v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 1029
    .line 1030
    goto :goto_19

    .line 1031
    :cond_34
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    .line 1032
    .line 1033
    .line 1034
    move-result v2

    .line 1035
    if-eqz v2, :cond_36

    .line 1036
    .line 1037
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v2

    .line 1041
    if-nez v2, :cond_36

    .line 1042
    .line 1043
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    if-eqz v2, :cond_35

    .line 1048
    .line 1049
    goto :goto_1a

    .line 1050
    :cond_35
    :goto_19
    const/4 v0, 0x0

    .line 1051
    const/4 v8, 0x1

    .line 1052
    goto/16 :goto_23

    .line 1053
    .line 1054
    :cond_36
    :goto_1a
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 1055
    .line 1056
    if-eqz v2, :cond_38

    .line 1057
    .line 1058
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v2

    .line 1062
    if-nez v2, :cond_37

    .line 1063
    .line 1064
    goto :goto_1b

    .line 1065
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1066
    .line 1067
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    const-string v3, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    .line 1070
    .line 1071
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-static {v4, v2}, Landroid/support/v4/media/session/a;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v2

    .line 1081
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    throw v0

    .line 1085
    :cond_38
    :goto_1b
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 1086
    .line 1087
    invoke-virtual {v2, v0, v6}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 1088
    .line 1089
    .line 1090
    move-result v2

    .line 1091
    const/4 v3, 0x0

    .line 1092
    iput-object v3, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/m1;

    .line 1093
    .line 1094
    iput-object v4, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1095
    .line 1096
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 1097
    .line 1098
    .line 1099
    move-result v7

    .line 1100
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1101
    .line 1102
    .line 1103
    move-result-wide v8

    .line 1104
    cmp-long v11, p2, v19

    .line 1105
    .line 1106
    if-eqz v11, :cond_39

    .line 1107
    .line 1108
    iget-object v11, v1, Landroidx/recyclerview/widget/g2;->g:Landroidx/recyclerview/widget/f2;

    .line 1109
    .line 1110
    invoke-virtual {v11, v7}, Landroidx/recyclerview/widget/f2;->a(I)Landroidx/recyclerview/widget/e2;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v7

    .line 1114
    iget-wide v11, v7, Landroidx/recyclerview/widget/e2;->d:J

    .line 1115
    .line 1116
    cmp-long v7, v11, v17

    .line 1117
    .line 1118
    if-eqz v7, :cond_39

    .line 1119
    .line 1120
    add-long/2addr v11, v8

    .line 1121
    cmp-long v7, v11, p2

    .line 1122
    .line 1123
    if-gez v7, :cond_35

    .line 1124
    .line 1125
    :cond_39
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 1126
    .line 1127
    .line 1128
    move-result v7

    .line 1129
    if-eqz v7, :cond_3a

    .line 1130
    .line 1131
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1132
    .line 1133
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1134
    .line 1135
    .line 1136
    move-result v11

    .line 1137
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1138
    .line 1139
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v12

    .line 1143
    invoke-static {v4, v7, v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    .line 1145
    .line 1146
    const/4 v7, 0x1

    .line 1147
    goto :goto_1c

    .line 1148
    :cond_3a
    const/4 v7, 0x0

    .line 1149
    :goto_1c
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 1150
    .line 1151
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1152
    .line 1153
    .line 1154
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/m1;

    .line 1155
    .line 1156
    if-nez v12, :cond_3b

    .line 1157
    .line 1158
    const/4 v12, 0x1

    .line 1159
    goto :goto_1d

    .line 1160
    :cond_3b
    const/4 v12, 0x0

    .line 1161
    :goto_1d
    if-eqz v12, :cond_3d

    .line 1162
    .line 1163
    iput v2, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 1164
    .line 1165
    iget-boolean v13, v11, Landroidx/recyclerview/widget/m1;->b:Z

    .line 1166
    .line 1167
    if-eqz v13, :cond_3c

    .line 1168
    .line 1169
    invoke-virtual {v11, v2}, Landroidx/recyclerview/widget/m1;->c(I)J

    .line 1170
    .line 1171
    .line 1172
    move-result-wide v13

    .line 1173
    iput-wide v13, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 1174
    .line 1175
    :cond_3c
    const/16 v13, 0x207

    .line 1176
    .line 1177
    const/4 v14, 0x1

    .line 1178
    invoke-virtual {v10, v14, v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 1179
    .line 1180
    .line 1181
    const-string v13, "RV OnBindView"

    .line 1182
    .line 1183
    invoke-static {v13}, Lt0/o;->a(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    :cond_3d
    iput-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/m1;

    .line 1187
    .line 1188
    sget-boolean v13, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 1189
    .line 1190
    if-eqz v13, :cond_41

    .line 1191
    .line 1192
    iget-object v13, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1193
    .line 1194
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v13

    .line 1198
    if-nez v13, :cond_3f

    .line 1199
    .line 1200
    iget-object v13, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1201
    .line 1202
    invoke-static {v13}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v13

    .line 1206
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 1207
    .line 1208
    .line 1209
    move-result v14

    .line 1210
    if-ne v13, v14, :cond_3e

    .line 1211
    .line 1212
    goto :goto_1e

    .line 1213
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1214
    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    const-string v3, "Temp-detached state out of sync with reality. holder.isTmpDetached(): "

    .line 1218
    .line 1219
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 1223
    .line 1224
    .line 1225
    move-result v3

    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    const-string v3, ", attached to window: "

    .line 1230
    .line 1231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    .line 1233
    .line 1234
    iget-object v3, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1235
    .line 1236
    invoke-static {v3}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 1237
    .line 1238
    .line 1239
    move-result v3

    .line 1240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    const-string v3, ", holder: "

    .line 1244
    .line 1245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v2

    .line 1255
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    throw v0

    .line 1259
    :cond_3f
    :goto_1e
    iget-object v13, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1260
    .line 1261
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v13

    .line 1265
    if-nez v13, :cond_41

    .line 1266
    .line 1267
    iget-object v13, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1268
    .line 1269
    invoke-static {v13}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v13

    .line 1273
    if-nez v13, :cond_40

    .line 1274
    .line 1275
    goto :goto_1f

    .line 1276
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1277
    .line 1278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    const-string v3, "Attempting to bind attached holder with no parent (AKA temp detached): "

    .line 1281
    .line 1282
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v2

    .line 1292
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1293
    .line 1294
    .line 1295
    throw v0

    .line 1296
    :cond_41
    :goto_1f
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v13

    .line 1300
    invoke-virtual {v11, v10, v2, v13}, Landroidx/recyclerview/widget/m1;->h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 1301
    .line 1302
    .line 1303
    if-eqz v12, :cond_43

    .line 1304
    .line 1305
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 1306
    .line 1307
    .line 1308
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1309
    .line 1310
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v2

    .line 1314
    instance-of v11, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1315
    .line 1316
    if-eqz v11, :cond_42

    .line 1317
    .line 1318
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1319
    .line 1320
    const/4 v11, 0x1

    .line 1321
    iput-boolean v11, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 1322
    .line 1323
    :cond_42
    invoke-static {}, Lt0/o;->b()V

    .line 1324
    .line 1325
    .line 1326
    :cond_43
    if-eqz v7, :cond_44

    .line 1327
    .line 1328
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1329
    .line 1330
    invoke-static {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->access$400(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 1331
    .line 1332
    .line 1333
    :cond_44
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1334
    .line 1335
    .line 1336
    move-result-wide v11

    .line 1337
    iget-object v2, v1, Landroidx/recyclerview/widget/g2;->g:Landroidx/recyclerview/widget/f2;

    .line 1338
    .line 1339
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 1340
    .line 1341
    .line 1342
    move-result v7

    .line 1343
    sub-long/2addr v11, v8

    .line 1344
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/f2;->a(I)Landroidx/recyclerview/widget/e2;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v2

    .line 1348
    iget-wide v7, v2, Landroidx/recyclerview/widget/e2;->d:J

    .line 1349
    .line 1350
    cmp-long v9, v7, v17

    .line 1351
    .line 1352
    if-nez v9, :cond_45

    .line 1353
    .line 1354
    goto :goto_20

    .line 1355
    :cond_45
    const-wide/16 v13, 0x4

    .line 1356
    .line 1357
    div-long/2addr v7, v13

    .line 1358
    const-wide/16 v15, 0x3

    .line 1359
    .line 1360
    mul-long v7, v7, v15

    .line 1361
    .line 1362
    div-long/2addr v11, v13

    .line 1363
    add-long/2addr v11, v7

    .line 1364
    :goto_20
    iput-wide v11, v2, Landroidx/recyclerview/widget/e2;->d:J

    .line 1365
    .line 1366
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    .line 1367
    .line 1368
    .line 1369
    move-result v2

    .line 1370
    if-eqz v2, :cond_4b

    .line 1371
    .line 1372
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1373
    .line 1374
    sget-object v7, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 1375
    .line 1376
    invoke-static {v2}, Lx0/j0;->c(Landroid/view/View;)I

    .line 1377
    .line 1378
    .line 1379
    move-result v7

    .line 1380
    const/4 v8, 0x1

    .line 1381
    if-nez v7, :cond_46

    .line 1382
    .line 1383
    invoke-static {v2, v8}, Lx0/b1;->B(Landroid/view/View;I)V

    .line 1384
    .line 1385
    .line 1386
    :cond_46
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/s2;

    .line 1387
    .line 1388
    if-nez v7, :cond_47

    .line 1389
    .line 1390
    goto :goto_22

    .line 1391
    :cond_47
    iget-object v7, v7, Landroidx/recyclerview/widget/s2;->e:Landroidx/recyclerview/widget/r2;

    .line 1392
    .line 1393
    instance-of v9, v7, Landroidx/recyclerview/widget/r2;

    .line 1394
    .line 1395
    if-eqz v9, :cond_4a

    .line 1396
    .line 1397
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1398
    .line 1399
    .line 1400
    invoke-static {v2}, Lx0/b1;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v9

    .line 1404
    if-nez v9, :cond_48

    .line 1405
    .line 1406
    goto :goto_21

    .line 1407
    :cond_48
    instance-of v3, v9, Lx0/a;

    .line 1408
    .line 1409
    if-eqz v3, :cond_49

    .line 1410
    .line 1411
    check-cast v9, Lx0/a;

    .line 1412
    .line 1413
    iget-object v3, v9, Lx0/a;->a:Lx0/c;

    .line 1414
    .line 1415
    goto :goto_21

    .line 1416
    :cond_49
    new-instance v3, Lx0/c;

    .line 1417
    .line 1418
    invoke-direct {v3, v9}, Lx0/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 1419
    .line 1420
    .line 1421
    :goto_21
    if-eqz v3, :cond_4a

    .line 1422
    .line 1423
    if-eq v3, v7, :cond_4a

    .line 1424
    .line 1425
    iget-object v9, v7, Landroidx/recyclerview/widget/r2;->e:Ljava/util/WeakHashMap;

    .line 1426
    .line 1427
    invoke-virtual {v9, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    .line 1429
    .line 1430
    :cond_4a
    invoke-static {v2, v7}, Lx0/b1;->x(Landroid/view/View;Lx0/c;)V

    .line 1431
    .line 1432
    .line 1433
    goto :goto_22

    .line 1434
    :cond_4b
    const/4 v8, 0x1

    .line 1435
    :goto_22
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 1436
    .line 1437
    iget-boolean v2, v2, Landroidx/recyclerview/widget/n2;->g:Z

    .line 1438
    .line 1439
    if-eqz v2, :cond_4c

    .line 1440
    .line 1441
    iput v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 1442
    .line 1443
    :cond_4c
    const/4 v0, 0x1

    .line 1444
    :goto_23
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1445
    .line 1446
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v2

    .line 1450
    if-nez v2, :cond_4d

    .line 1451
    .line 1452
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v2

    .line 1456
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1457
    .line 1458
    iget-object v3, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1459
    .line 1460
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1461
    .line 1462
    .line 1463
    goto :goto_24

    .line 1464
    :cond_4d
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1465
    .line 1466
    .line 1467
    move-result v3

    .line 1468
    if-nez v3, :cond_4e

    .line 1469
    .line 1470
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v2

    .line 1474
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1475
    .line 1476
    iget-object v3, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1477
    .line 1478
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1479
    .line 1480
    .line 1481
    goto :goto_24

    .line 1482
    :cond_4e
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1483
    .line 1484
    :goto_24
    iput-object v10, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1485
    .line 1486
    if-eqz v5, :cond_4f

    .line 1487
    .line 1488
    if-eqz v0, :cond_4f

    .line 1489
    .line 1490
    const/4 v3, 0x1

    .line 1491
    goto :goto_25

    .line 1492
    :cond_4f
    const/4 v3, 0x0

    .line 1493
    :goto_25
    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 1494
    .line 1495
    return-object v10

    .line 1496
    :cond_50
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 1497
    .line 1498
    const-string v3, "Invalid item position "

    .line 1499
    .line 1500
    const-string v5, "("

    .line 1501
    .line 1502
    const-string v6, "). Item count:"

    .line 1503
    .line 1504
    invoke-static {v0, v0, v3, v5, v6}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v0

    .line 1508
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 1509
    .line 1510
    invoke-virtual {v3}, Landroidx/recyclerview/widget/n2;->b()I

    .line 1511
    .line 1512
    .line 1513
    move-result v3

    .line 1514
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v3

    .line 1521
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v0

    .line 1528
    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1529
    .line 1530
    .line 1531
    goto :goto_27

    .line 1532
    :goto_26
    throw v2

    .line 1533
    :goto_27
    goto :goto_26
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/g2;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/g2;->e:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Landroidx/recyclerview/widget/g2;->f:I

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/g2;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_1
    if-ltz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Landroidx/recyclerview/widget/g2;->f:I

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/g2;->i(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-void
.end method
