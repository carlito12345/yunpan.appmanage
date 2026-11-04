.class public final Landroidx/recyclerview/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld0/d;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroidx/recyclerview/widget/l1;

.field public final e:Landroidx/recyclerview/widget/c;

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/l1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld0/d;

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ld0/d;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroidx/recyclerview/widget/b;->f:I

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/l1;

    .line 31
    .line 32
    new-instance p1, Landroidx/recyclerview/widget/c;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/c;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->e:Landroidx/recyclerview/widget/c;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

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
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/recyclerview/widget/a;

    .line 16
    .line 17
    iget v5, v4, Landroidx/recyclerview/widget/a;->a:I

    .line 18
    .line 19
    const/16 v6, 0x8

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 25
    .line 26
    add-int/lit8 v5, v3, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ne v4, p1, :cond_2

    .line 33
    .line 34
    return v7

    .line 35
    :cond_0
    if-ne v5, v7, :cond_2

    .line 36
    .line 37
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 38
    .line 39
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 40
    .line 41
    add-int/2addr v4, v5

    .line 42
    :goto_1
    if-ge v5, v4, :cond_2

    .line 43
    .line 44
    add-int/lit8 v6, v3, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, v5, v6}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-ne v6, p1, :cond_1

    .line 51
    .line 52
    return v7

    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return v2
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

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
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/recyclerview/widget/a;

    .line 16
    .line 17
    iget-object v5, p0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/l1;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/l1;->a(Landroidx/recyclerview/widget/a;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->k(Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    iput v2, p0, Landroidx/recyclerview/widget/b;->f:I

    .line 29
    .line 30
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/recyclerview/widget/a;

    .line 19
    .line 20
    iget v5, v4, Landroidx/recyclerview/widget/a;->a:I

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    iget-object v7, p0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/l1;

    .line 24
    .line 25
    if-eq v5, v6, :cond_3

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    if-eq v5, v8, :cond_2

    .line 29
    .line 30
    const/4 v8, 0x4

    .line 31
    if-eq v5, v8, :cond_1

    .line 32
    .line 33
    const/16 v8, 0x8

    .line 34
    .line 35
    if-eq v5, v8, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/l1;->a(Landroidx/recyclerview/widget/a;)V

    .line 39
    .line 40
    .line 41
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 42
    .line 43
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 44
    .line 45
    iget-object v7, v7, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 48
    .line 49
    .line 50
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/l1;->a(Landroidx/recyclerview/widget/a;)V

    .line 54
    .line 55
    .line 56
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 57
    .line 58
    iget v8, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 59
    .line 60
    iget-object v4, v4, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v7, v7, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    invoke-virtual {v7, v5, v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/l1;->a(Landroidx/recyclerview/widget/a;)V

    .line 71
    .line 72
    .line 73
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 74
    .line 75
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 76
    .line 77
    iget-object v7, v7, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    invoke-virtual {v7, v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 80
    .line 81
    .line 82
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 83
    .line 84
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 85
    .line 86
    iget v6, v5, Landroidx/recyclerview/widget/n2;->c:I

    .line 87
    .line 88
    add-int/2addr v6, v4

    .line 89
    iput v6, v5, Landroidx/recyclerview/widget/n2;->c:I

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/l1;->a(Landroidx/recyclerview/widget/a;)V

    .line 93
    .line 94
    .line 95
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 96
    .line 97
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 98
    .line 99
    iget-object v7, v7, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 102
    .line 103
    .line 104
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 105
    .line 106
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->k(Ljava/util/ArrayList;)V

    .line 110
    .line 111
    .line 112
    iput v2, p0, Landroidx/recyclerview/widget/b;->f:I

    .line 113
    .line 114
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/a;)V
    .locals 12

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_8

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-eq v0, v2, :cond_8

    .line 9
    .line 10
    iget v2, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 11
    .line 12
    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/b;->l(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 17
    .line 18
    iget v3, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x4

    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "op should be remove or update."

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    :goto_0
    const/4 v6, 0x1

    .line 50
    const/4 v7, 0x1

    .line 51
    :goto_1
    iget v8, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    if-ge v6, v8, :cond_6

    .line 55
    .line 56
    iget v8, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 57
    .line 58
    mul-int v10, v3, v6

    .line 59
    .line 60
    add-int/2addr v10, v8

    .line 61
    iget v8, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 62
    .line 63
    invoke-virtual {p0, v10, v8}, Landroidx/recyclerview/widget/b;->l(II)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    iget v10, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 68
    .line 69
    if-eq v10, v4, :cond_3

    .line 70
    .line 71
    if-eq v10, v5, :cond_2

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    add-int/lit8 v11, v0, 0x1

    .line 75
    .line 76
    if-ne v8, v11, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    if-ne v8, v0, :cond_4

    .line 80
    .line 81
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    :goto_3
    iget-object v11, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p0, v11, v10, v0, v7}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/b;->e(Landroidx/recyclerview/widget/a;I)V

    .line 91
    .line 92
    .line 93
    iput-object v9, v0, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 94
    .line 95
    iget-object v9, p0, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 96
    .line 97
    invoke-virtual {v9, v0}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 101
    .line 102
    if-ne v0, v5, :cond_5

    .line 103
    .line 104
    add-int/2addr v2, v7

    .line 105
    :cond_5
    move v0, v8

    .line 106
    const/4 v7, 0x1

    .line 107
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    iget-object v1, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object v9, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v3, p0, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 115
    .line 116
    invoke-virtual {v3, p1}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    if-lez v7, :cond_7

    .line 120
    .line 121
    iget p1, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 122
    .line 123
    invoke-virtual {p0, v1, p1, v0, v7}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/b;->e(Landroidx/recyclerview/widget/a;I)V

    .line 128
    .line 129
    .line 130
    iput-object v9, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 131
    .line 132
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_7
    return-void

    .line 138
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string v0, "should not dispatch add or move for pre layout"

    .line 141
    .line 142
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :goto_5
    throw p1

    .line 147
    :goto_6
    goto :goto_5
.end method

.method public final e(Landroidx/recyclerview/widget/a;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/l1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/l1;->a(Landroidx/recyclerview/widget/a;)V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget v1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {v0, p2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p2, "only remove and update ops can be dispatched in first pass"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    invoke-virtual {v0, p2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 40
    .line 41
    .line 42
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 43
    .line 44
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 45
    .line 46
    iget v0, p2, Landroidx/recyclerview/widget/n2;->c:I

    .line 47
    .line 48
    add-int/2addr v0, p1

    .line 49
    iput v0, p2, Landroidx/recyclerview/widget/n2;->c:I

    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public final f(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :goto_0
    if-ge p2, v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/recyclerview/widget/a;

    .line 14
    .line 15
    iget v3, v2, Landroidx/recyclerview/widget/a;->a:I

    .line 16
    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    if-ne v3, v4, :cond_2

    .line 20
    .line 21
    iget v3, v2, Landroidx/recyclerview/widget/a;->b:I

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    iget p1, v2, Landroidx/recyclerview/widget/a;->d:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-ge v3, p1, :cond_1

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    :cond_1
    iget v2, v2, Landroidx/recyclerview/widget/a;->d:I

    .line 33
    .line 34
    if-gt v2, p1, :cond_5

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget v4, v2, Landroidx/recyclerview/widget/a;->b:I

    .line 40
    .line 41
    if-gt v4, p1, :cond_5

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    if-ne v3, v5, :cond_4

    .line 45
    .line 46
    iget v2, v2, Landroidx/recyclerview/widget/a;->d:I

    .line 47
    .line 48
    add-int/2addr v4, v2

    .line 49
    if-ge p1, v4, :cond_3

    .line 50
    .line 51
    const/4 p1, -0x1

    .line 52
    return p1

    .line 53
    :cond_3
    sub-int/2addr p1, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v4, 0x1

    .line 56
    if-ne v3, v4, :cond_5

    .line 57
    .line 58
    iget v2, v2, Landroidx/recyclerview/widget/a;->d:I

    .line 59
    .line 60
    add-int/2addr p1, v2

    .line 61
    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    return p1
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld0/d;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/recyclerview/widget/a;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/a;-><init>(Ljava/lang/Object;III)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput p2, v0, Landroidx/recyclerview/widget/a;->a:I

    .line 18
    .line 19
    iput p3, v0, Landroidx/recyclerview/widget/a;->b:I

    .line 20
    .line 21
    iput p4, v0, Landroidx/recyclerview/widget/a;->d:I

    .line 22
    .line 23
    iput-object p1, v0, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 24
    .line 25
    :goto_0
    return-object v0
.end method

.method public final i(Landroidx/recyclerview/widget/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/l1;

    .line 10
    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    if-ne v0, v3, :cond_0

    .line 22
    .line 23
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 24
    .line 25
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 30
    .line 31
    .line 32
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Unknown update op type for "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 56
    .line 57
    iget v3, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 58
    .line 59
    iget-object p1, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v2, v2, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    invoke-virtual {v2, v0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 70
    .line 71
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 72
    .line 73
    iget-object v2, v2, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {v2, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 77
    .line 78
    .line 79
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 83
    .line 84
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 85
    .line 86
    iget-object v2, v2, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 89
    .line 90
    .line 91
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 92
    .line 93
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v5, v0, Landroidx/recyclerview/widget/b;->e:Landroidx/recyclerview/widget/c;

    .line 10
    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    sub-int/2addr v6, v3

    .line 19
    const/4 v8, 0x0

    .line 20
    :goto_1
    const/16 v9, 0x8

    .line 21
    .line 22
    if-ltz v6, :cond_2

    .line 23
    .line 24
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    check-cast v10, Landroidx/recyclerview/widget/a;

    .line 29
    .line 30
    iget v10, v10, Landroidx/recyclerview/widget/a;->a:I

    .line 31
    .line 32
    if-ne v10, v9, :cond_0

    .line 33
    .line 34
    if-eqz v8, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    const/4 v8, 0x1

    .line 38
    :cond_1
    add-int/2addr v6, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v6, -0x1

    .line 41
    :goto_2
    const/4 v8, 0x0

    .line 42
    const/4 v10, 0x4

    .line 43
    const/4 v11, 0x2

    .line 44
    if-eq v6, v2, :cond_22

    .line 45
    .line 46
    add-int/lit8 v9, v6, 0x1

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    check-cast v12, Landroidx/recyclerview/widget/a;

    .line 53
    .line 54
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    check-cast v13, Landroidx/recyclerview/widget/a;

    .line 59
    .line 60
    iget v14, v13, Landroidx/recyclerview/widget/a;->a:I

    .line 61
    .line 62
    if-eq v14, v3, :cond_1c

    .line 63
    .line 64
    iget-object v15, v5, Landroidx/recyclerview/widget/c;->a:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v15, Landroidx/recyclerview/widget/b;

    .line 67
    .line 68
    if-eq v14, v11, :cond_a

    .line 69
    .line 70
    if-eq v14, v10, :cond_3

    .line 71
    .line 72
    goto/16 :goto_11

    .line 73
    .line 74
    :cond_3
    iget v7, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 75
    .line 76
    iget v11, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 77
    .line 78
    if-ge v7, v11, :cond_4

    .line 79
    .line 80
    sub-int/2addr v11, v3

    .line 81
    iput v11, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    iget v14, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 85
    .line 86
    add-int/2addr v11, v14

    .line 87
    if-ge v7, v11, :cond_5

    .line 88
    .line 89
    sub-int/2addr v14, v3

    .line 90
    iput v14, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 91
    .line 92
    iget v7, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 93
    .line 94
    iget-object v11, v13, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 95
    .line 96
    invoke-virtual {v15, v11, v10, v7, v3}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    :goto_3
    move-object v7, v8

    .line 102
    :goto_4
    iget v11, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 103
    .line 104
    iget v14, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 105
    .line 106
    if-gt v11, v14, :cond_6

    .line 107
    .line 108
    add-int/2addr v14, v3

    .line 109
    iput v14, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_6
    iget v2, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 113
    .line 114
    add-int/2addr v14, v2

    .line 115
    if-ge v11, v14, :cond_7

    .line 116
    .line 117
    sub-int/2addr v14, v11

    .line 118
    add-int/2addr v11, v3

    .line 119
    iget-object v2, v13, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-virtual {v15, v2, v10, v11, v14}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget v10, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 126
    .line 127
    sub-int/2addr v10, v14

    .line 128
    iput v10, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_7
    :goto_5
    move-object v2, v8

    .line 132
    :goto_6
    invoke-virtual {v4, v9, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iget v9, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 136
    .line 137
    if-lez v9, :cond_8

    .line 138
    .line 139
    invoke-virtual {v4, v6, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_8
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    iput-object v8, v13, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 147
    .line 148
    iget-object v8, v15, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 149
    .line 150
    invoke-virtual {v8, v13}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :goto_7
    if-eqz v7, :cond_9

    .line 154
    .line 155
    invoke-virtual {v4, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_9
    if-eqz v2, :cond_21

    .line 159
    .line 160
    invoke-virtual {v4, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_11

    .line 164
    .line 165
    :cond_a
    iget v2, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 166
    .line 167
    iget v10, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 168
    .line 169
    if-ge v2, v10, :cond_c

    .line 170
    .line 171
    iget v14, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 172
    .line 173
    if-ne v14, v2, :cond_b

    .line 174
    .line 175
    iget v14, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 176
    .line 177
    sub-int v2, v10, v2

    .line 178
    .line 179
    if-ne v14, v2, :cond_b

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    :goto_8
    const/4 v7, 0x1

    .line 183
    goto :goto_a

    .line 184
    :cond_b
    const/4 v2, 0x0

    .line 185
    :goto_9
    const/4 v7, 0x0

    .line 186
    goto :goto_a

    .line 187
    :cond_c
    iget v14, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 188
    .line 189
    add-int/lit8 v7, v10, 0x1

    .line 190
    .line 191
    if-ne v14, v7, :cond_d

    .line 192
    .line 193
    iget v7, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 194
    .line 195
    sub-int/2addr v2, v10

    .line 196
    if-ne v7, v2, :cond_d

    .line 197
    .line 198
    const/4 v2, 0x1

    .line 199
    goto :goto_8

    .line 200
    :cond_d
    const/4 v2, 0x1

    .line 201
    goto :goto_9

    .line 202
    :goto_a
    iget v14, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 203
    .line 204
    if-ge v10, v14, :cond_e

    .line 205
    .line 206
    sub-int/2addr v14, v3

    .line 207
    iput v14, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 208
    .line 209
    goto :goto_b

    .line 210
    :cond_e
    iget v8, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 211
    .line 212
    add-int/2addr v14, v8

    .line 213
    if-ge v10, v14, :cond_f

    .line 214
    .line 215
    sub-int/2addr v8, v3

    .line 216
    iput v8, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 217
    .line 218
    iput v11, v12, Landroidx/recyclerview/widget/a;->a:I

    .line 219
    .line 220
    iput v3, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 221
    .line 222
    iget v2, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 223
    .line 224
    if-nez v2, :cond_21

    .line 225
    .line 226
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    iput-object v2, v13, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 231
    .line 232
    iget-object v2, v15, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 233
    .line 234
    invoke-virtual {v2, v13}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_11

    .line 238
    .line 239
    :cond_f
    :goto_b
    iget v8, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 240
    .line 241
    iget v10, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 242
    .line 243
    if-gt v8, v10, :cond_10

    .line 244
    .line 245
    add-int/2addr v10, v3

    .line 246
    iput v10, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 247
    .line 248
    goto :goto_c

    .line 249
    :cond_10
    iget v14, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 250
    .line 251
    add-int/2addr v10, v14

    .line 252
    if-ge v8, v10, :cond_11

    .line 253
    .line 254
    sub-int/2addr v10, v8

    .line 255
    add-int/2addr v8, v3

    .line 256
    const/4 v14, 0x0

    .line 257
    invoke-virtual {v15, v14, v11, v8, v10}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    iget v10, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 262
    .line 263
    iget v11, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 264
    .line 265
    sub-int/2addr v10, v11

    .line 266
    iput v10, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 267
    .line 268
    goto :goto_d

    .line 269
    :cond_11
    :goto_c
    const/4 v8, 0x0

    .line 270
    :goto_d
    if-eqz v7, :cond_12

    .line 271
    .line 272
    invoke-virtual {v4, v6, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    const/4 v2, 0x0

    .line 279
    iput-object v2, v12, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 280
    .line 281
    iget-object v2, v15, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 282
    .line 283
    invoke-virtual {v2, v12}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    goto/16 :goto_11

    .line 287
    .line 288
    :cond_12
    if-eqz v2, :cond_16

    .line 289
    .line 290
    if-eqz v8, :cond_14

    .line 291
    .line 292
    iget v2, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 293
    .line 294
    iget v7, v8, Landroidx/recyclerview/widget/a;->b:I

    .line 295
    .line 296
    if-le v2, v7, :cond_13

    .line 297
    .line 298
    iget v7, v8, Landroidx/recyclerview/widget/a;->d:I

    .line 299
    .line 300
    sub-int/2addr v2, v7

    .line 301
    iput v2, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 302
    .line 303
    :cond_13
    iget v2, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 304
    .line 305
    iget v7, v8, Landroidx/recyclerview/widget/a;->b:I

    .line 306
    .line 307
    if-le v2, v7, :cond_14

    .line 308
    .line 309
    iget v7, v8, Landroidx/recyclerview/widget/a;->d:I

    .line 310
    .line 311
    sub-int/2addr v2, v7

    .line 312
    iput v2, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 313
    .line 314
    :cond_14
    iget v2, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 315
    .line 316
    iget v7, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 317
    .line 318
    if-le v2, v7, :cond_15

    .line 319
    .line 320
    iget v7, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 321
    .line 322
    sub-int/2addr v2, v7

    .line 323
    iput v2, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 324
    .line 325
    :cond_15
    iget v2, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 326
    .line 327
    iget v7, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 328
    .line 329
    if-le v2, v7, :cond_1a

    .line 330
    .line 331
    iget v7, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 332
    .line 333
    sub-int/2addr v2, v7

    .line 334
    iput v2, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 335
    .line 336
    goto :goto_e

    .line 337
    :cond_16
    if-eqz v8, :cond_18

    .line 338
    .line 339
    iget v2, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 340
    .line 341
    iget v7, v8, Landroidx/recyclerview/widget/a;->b:I

    .line 342
    .line 343
    if-lt v2, v7, :cond_17

    .line 344
    .line 345
    iget v7, v8, Landroidx/recyclerview/widget/a;->d:I

    .line 346
    .line 347
    sub-int/2addr v2, v7

    .line 348
    iput v2, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 349
    .line 350
    :cond_17
    iget v2, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 351
    .line 352
    iget v7, v8, Landroidx/recyclerview/widget/a;->b:I

    .line 353
    .line 354
    if-lt v2, v7, :cond_18

    .line 355
    .line 356
    iget v7, v8, Landroidx/recyclerview/widget/a;->d:I

    .line 357
    .line 358
    sub-int/2addr v2, v7

    .line 359
    iput v2, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 360
    .line 361
    :cond_18
    iget v2, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 362
    .line 363
    iget v7, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 364
    .line 365
    if-lt v2, v7, :cond_19

    .line 366
    .line 367
    iget v7, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 368
    .line 369
    sub-int/2addr v2, v7

    .line 370
    iput v2, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 371
    .line 372
    :cond_19
    iget v2, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 373
    .line 374
    iget v7, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 375
    .line 376
    if-lt v2, v7, :cond_1a

    .line 377
    .line 378
    iget v7, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 379
    .line 380
    sub-int/2addr v2, v7

    .line 381
    iput v2, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 382
    .line 383
    :cond_1a
    :goto_e
    invoke-virtual {v4, v6, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    iget v2, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 387
    .line 388
    iget v7, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 389
    .line 390
    if-eq v2, v7, :cond_1b

    .line 391
    .line 392
    invoke-virtual {v4, v9, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    goto :goto_f

    .line 396
    :cond_1b
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    :goto_f
    if-eqz v8, :cond_21

    .line 400
    .line 401
    invoke-virtual {v4, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    goto :goto_11

    .line 405
    :cond_1c
    iget v2, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 406
    .line 407
    iget v7, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 408
    .line 409
    if-ge v2, v7, :cond_1d

    .line 410
    .line 411
    const/16 v16, -0x1

    .line 412
    .line 413
    goto :goto_10

    .line 414
    :cond_1d
    const/16 v16, 0x0

    .line 415
    .line 416
    :goto_10
    iget v8, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 417
    .line 418
    if-ge v8, v7, :cond_1e

    .line 419
    .line 420
    add-int/lit8 v16, v16, 0x1

    .line 421
    .line 422
    :cond_1e
    if-gt v7, v8, :cond_1f

    .line 423
    .line 424
    iget v7, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 425
    .line 426
    add-int/2addr v8, v7

    .line 427
    iput v8, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 428
    .line 429
    :cond_1f
    iget v7, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 430
    .line 431
    if-gt v7, v2, :cond_20

    .line 432
    .line 433
    iget v8, v13, Landroidx/recyclerview/widget/a;->d:I

    .line 434
    .line 435
    add-int/2addr v2, v8

    .line 436
    iput v2, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 437
    .line 438
    :cond_20
    add-int v7, v7, v16

    .line 439
    .line 440
    iput v7, v13, Landroidx/recyclerview/widget/a;->b:I

    .line 441
    .line 442
    invoke-virtual {v4, v6, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4, v9, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    :cond_21
    :goto_11
    const/4 v2, -0x1

    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    const/4 v5, 0x0

    .line 456
    :goto_12
    if-ge v5, v2, :cond_3a

    .line 457
    .line 458
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    check-cast v6, Landroidx/recyclerview/widget/a;

    .line 463
    .line 464
    iget v7, v6, Landroidx/recyclerview/widget/a;->a:I

    .line 465
    .line 466
    if-eq v7, v3, :cond_39

    .line 467
    .line 468
    iget-object v8, v0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/l1;

    .line 469
    .line 470
    if-eq v7, v11, :cond_2e

    .line 471
    .line 472
    if-eq v7, v10, :cond_24

    .line 473
    .line 474
    if-eq v7, v9, :cond_23

    .line 475
    .line 476
    :goto_13
    const/4 v8, 0x0

    .line 477
    const/4 v9, 0x2

    .line 478
    goto/16 :goto_24

    .line 479
    .line 480
    :cond_23
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 481
    .line 482
    .line 483
    goto :goto_13

    .line 484
    :cond_24
    iget v7, v6, Landroidx/recyclerview/widget/a;->b:I

    .line 485
    .line 486
    iget v12, v6, Landroidx/recyclerview/widget/a;->d:I

    .line 487
    .line 488
    add-int/2addr v12, v7

    .line 489
    move v13, v7

    .line 490
    const/4 v14, 0x0

    .line 491
    const/4 v15, -0x1

    .line 492
    :goto_14
    if-ge v7, v12, :cond_2b

    .line 493
    .line 494
    iget-object v9, v8, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 495
    .line 496
    invoke-virtual {v9, v7, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 497
    .line 498
    .line 499
    move-result-object v11

    .line 500
    if-nez v11, :cond_25

    .line 501
    .line 502
    :goto_15
    const/4 v11, 0x0

    .line 503
    goto :goto_16

    .line 504
    :cond_25
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/i;

    .line 505
    .line 506
    iget-object v10, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 507
    .line 508
    iget-object v9, v9, Landroidx/recyclerview/widget/i;->c:Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v9

    .line 514
    if-eqz v9, :cond_26

    .line 515
    .line 516
    sget v9, Landroidx/recyclerview/widget/RecyclerView;->HORIZONTAL:I

    .line 517
    .line 518
    goto :goto_15

    .line 519
    :cond_26
    :goto_16
    if-nez v11, :cond_27

    .line 520
    .line 521
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/b;->a(I)Z

    .line 522
    .line 523
    .line 524
    move-result v9

    .line 525
    if-eqz v9, :cond_28

    .line 526
    .line 527
    :cond_27
    const/4 v10, 0x4

    .line 528
    goto :goto_18

    .line 529
    :cond_28
    if-ne v15, v3, :cond_29

    .line 530
    .line 531
    iget-object v9, v6, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 532
    .line 533
    const/4 v10, 0x4

    .line 534
    invoke-virtual {v0, v9, v10, v13, v14}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 535
    .line 536
    .line 537
    move-result-object v9

    .line 538
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 539
    .line 540
    .line 541
    move v13, v7

    .line 542
    const/4 v14, 0x0

    .line 543
    goto :goto_17

    .line 544
    :cond_29
    const/4 v10, 0x4

    .line 545
    :goto_17
    const/4 v15, 0x0

    .line 546
    goto :goto_19

    .line 547
    :goto_18
    if-nez v15, :cond_2a

    .line 548
    .line 549
    iget-object v9, v6, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 550
    .line 551
    invoke-virtual {v0, v9, v10, v13, v14}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 552
    .line 553
    .line 554
    move-result-object v9

    .line 555
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/b;->d(Landroidx/recyclerview/widget/a;)V

    .line 556
    .line 557
    .line 558
    move v13, v7

    .line 559
    const/4 v14, 0x0

    .line 560
    :cond_2a
    const/4 v15, 0x1

    .line 561
    :goto_19
    add-int/2addr v14, v3

    .line 562
    add-int/2addr v7, v3

    .line 563
    const/16 v9, 0x8

    .line 564
    .line 565
    const/4 v10, 0x4

    .line 566
    const/4 v11, 0x2

    .line 567
    goto :goto_14

    .line 568
    :cond_2b
    iget v7, v6, Landroidx/recyclerview/widget/a;->d:I

    .line 569
    .line 570
    if-eq v14, v7, :cond_2c

    .line 571
    .line 572
    iget-object v7, v6, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 573
    .line 574
    const/4 v8, 0x0

    .line 575
    iput-object v8, v6, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 576
    .line 577
    invoke-virtual {v1, v6}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    const/4 v9, 0x4

    .line 581
    invoke-virtual {v0, v7, v9, v13, v14}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 582
    .line 583
    .line 584
    move-result-object v6

    .line 585
    goto :goto_1a

    .line 586
    :cond_2c
    const/4 v9, 0x4

    .line 587
    :goto_1a
    if-nez v15, :cond_2d

    .line 588
    .line 589
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/b;->d(Landroidx/recyclerview/widget/a;)V

    .line 590
    .line 591
    .line 592
    goto :goto_13

    .line 593
    :cond_2d
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 594
    .line 595
    .line 596
    goto :goto_13

    .line 597
    :cond_2e
    const/4 v9, 0x4

    .line 598
    iget v7, v6, Landroidx/recyclerview/widget/a;->b:I

    .line 599
    .line 600
    iget v10, v6, Landroidx/recyclerview/widget/a;->d:I

    .line 601
    .line 602
    add-int/2addr v10, v7

    .line 603
    move v11, v7

    .line 604
    const/4 v12, 0x0

    .line 605
    const/4 v13, -0x1

    .line 606
    :goto_1b
    if-ge v11, v10, :cond_36

    .line 607
    .line 608
    iget-object v14, v8, Landroidx/recyclerview/widget/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 609
    .line 610
    invoke-virtual {v14, v11, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 611
    .line 612
    .line 613
    move-result-object v15

    .line 614
    if-nez v15, :cond_2f

    .line 615
    .line 616
    :goto_1c
    const/4 v15, 0x0

    .line 617
    goto :goto_1d

    .line 618
    :cond_2f
    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/i;

    .line 619
    .line 620
    iget-object v9, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 621
    .line 622
    iget-object v14, v14, Landroidx/recyclerview/widget/i;->c:Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v9

    .line 628
    if-eqz v9, :cond_30

    .line 629
    .line 630
    sget v9, Landroidx/recyclerview/widget/RecyclerView;->HORIZONTAL:I

    .line 631
    .line 632
    goto :goto_1c

    .line 633
    :cond_30
    :goto_1d
    if-nez v15, :cond_31

    .line 634
    .line 635
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/b;->a(I)Z

    .line 636
    .line 637
    .line 638
    move-result v9

    .line 639
    if-eqz v9, :cond_32

    .line 640
    .line 641
    :cond_31
    const/4 v9, 0x0

    .line 642
    const/4 v14, 0x2

    .line 643
    goto :goto_1f

    .line 644
    :cond_32
    const/4 v9, 0x0

    .line 645
    const/4 v14, 0x2

    .line 646
    if-ne v13, v3, :cond_33

    .line 647
    .line 648
    invoke-virtual {v0, v9, v14, v7, v12}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 649
    .line 650
    .line 651
    move-result-object v13

    .line 652
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 653
    .line 654
    .line 655
    const/4 v13, 0x1

    .line 656
    goto :goto_1e

    .line 657
    :cond_33
    const/4 v13, 0x0

    .line 658
    :goto_1e
    const/4 v9, 0x0

    .line 659
    goto :goto_21

    .line 660
    :goto_1f
    if-nez v13, :cond_34

    .line 661
    .line 662
    invoke-virtual {v0, v9, v14, v7, v12}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 663
    .line 664
    .line 665
    move-result-object v13

    .line 666
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/b;->d(Landroidx/recyclerview/widget/a;)V

    .line 667
    .line 668
    .line 669
    const/4 v13, 0x1

    .line 670
    goto :goto_20

    .line 671
    :cond_34
    const/4 v13, 0x0

    .line 672
    :goto_20
    const/4 v9, 0x1

    .line 673
    :goto_21
    if-eqz v13, :cond_35

    .line 674
    .line 675
    sub-int/2addr v11, v12

    .line 676
    sub-int/2addr v10, v12

    .line 677
    const/4 v12, 0x1

    .line 678
    goto :goto_22

    .line 679
    :cond_35
    add-int/2addr v12, v3

    .line 680
    :goto_22
    add-int/2addr v11, v3

    .line 681
    move v13, v9

    .line 682
    const/4 v9, 0x4

    .line 683
    goto :goto_1b

    .line 684
    :cond_36
    iget v8, v6, Landroidx/recyclerview/widget/a;->d:I

    .line 685
    .line 686
    if-eq v12, v8, :cond_37

    .line 687
    .line 688
    const/4 v8, 0x0

    .line 689
    iput-object v8, v6, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 690
    .line 691
    invoke-virtual {v1, v6}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    const/4 v9, 0x2

    .line 695
    invoke-virtual {v0, v8, v9, v7, v12}, Landroidx/recyclerview/widget/b;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a;

    .line 696
    .line 697
    .line 698
    move-result-object v6

    .line 699
    goto :goto_23

    .line 700
    :cond_37
    const/4 v8, 0x0

    .line 701
    const/4 v9, 0x2

    .line 702
    :goto_23
    if-nez v13, :cond_38

    .line 703
    .line 704
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/b;->d(Landroidx/recyclerview/widget/a;)V

    .line 705
    .line 706
    .line 707
    goto :goto_24

    .line 708
    :cond_38
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 709
    .line 710
    .line 711
    goto :goto_24

    .line 712
    :cond_39
    const/4 v8, 0x0

    .line 713
    const/4 v9, 0x2

    .line 714
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 715
    .line 716
    .line 717
    :goto_24
    add-int/2addr v5, v3

    .line 718
    const/16 v9, 0x8

    .line 719
    .line 720
    const/4 v10, 0x4

    .line 721
    const/4 v11, 0x2

    .line 722
    goto/16 :goto_12

    .line 723
    .line 724
    :cond_3a
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 725
    .line 726
    .line 727
    return-void
.end method

.method public final k(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

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
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/recyclerview/widget/a;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-object v3, v2, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final l(II)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    const/16 v3, 0x8

    .line 10
    .line 11
    if-ltz v1, :cond_d

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroidx/recyclerview/widget/a;

    .line 18
    .line 19
    iget v5, v4, Landroidx/recyclerview/widget/a;->a:I

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    if-ne v5, v3, :cond_8

    .line 23
    .line 24
    iget v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 25
    .line 26
    iget v5, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 27
    .line 28
    if-ge v3, v5, :cond_0

    .line 29
    .line 30
    move v7, v3

    .line 31
    move v8, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v8, v3

    .line 34
    move v7, v5

    .line 35
    :goto_1
    if-lt p1, v7, :cond_6

    .line 36
    .line 37
    if-gt p1, v8, :cond_6

    .line 38
    .line 39
    if-ne v7, v3, :cond_3

    .line 40
    .line 41
    if-ne p2, v2, :cond_1

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    iput v5, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    if-ne p2, v6, :cond_2

    .line 49
    .line 50
    add-int/lit8 v5, v5, -0x1

    .line 51
    .line 52
    iput v5, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 53
    .line 54
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_3
    if-ne p2, v2, :cond_4

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    if-ne p2, v6, :cond_5

    .line 65
    .line 66
    add-int/lit8 v3, v3, -0x1

    .line 67
    .line 68
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 69
    .line 70
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    if-ge p1, v3, :cond_c

    .line 74
    .line 75
    if-ne p2, v2, :cond_7

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 80
    .line 81
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    iput v5, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_7
    if-ne p2, v6, :cond_c

    .line 87
    .line 88
    add-int/lit8 v3, v3, -0x1

    .line 89
    .line 90
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 91
    .line 92
    add-int/lit8 v5, v5, -0x1

    .line 93
    .line 94
    iput v5, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    iget v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 98
    .line 99
    if-gt v3, p1, :cond_a

    .line 100
    .line 101
    if-ne v5, v2, :cond_9

    .line 102
    .line 103
    iget v3, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 104
    .line 105
    sub-int/2addr p1, v3

    .line 106
    goto :goto_4

    .line 107
    :cond_9
    if-ne v5, v6, :cond_c

    .line 108
    .line 109
    iget v3, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 110
    .line 111
    add-int/2addr p1, v3

    .line 112
    goto :goto_4

    .line 113
    :cond_a
    if-ne p2, v2, :cond_b

    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_b
    if-ne p2, v6, :cond_c

    .line 121
    .line 122
    add-int/lit8 v3, v3, -0x1

    .line 123
    .line 124
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 125
    .line 126
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    sub-int/2addr p2, v2

    .line 134
    :goto_5
    if-ltz p2, :cond_11

    .line 135
    .line 136
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroidx/recyclerview/widget/a;

    .line 141
    .line 142
    iget v2, v1, Landroidx/recyclerview/widget/a;->a:I

    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    if-ne v2, v3, :cond_f

    .line 146
    .line 147
    iget v2, v1, Landroidx/recyclerview/widget/a;->d:I

    .line 148
    .line 149
    iget v5, v1, Landroidx/recyclerview/widget/a;->b:I

    .line 150
    .line 151
    if-eq v2, v5, :cond_e

    .line 152
    .line 153
    if-gez v2, :cond_10

    .line 154
    .line 155
    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    iput-object v4, v1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 159
    .line 160
    iget-object v2, p0, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_f
    iget v2, v1, Landroidx/recyclerview/widget/a;->d:I

    .line 167
    .line 168
    if-gtz v2, :cond_10

    .line 169
    .line 170
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    iput-object v4, v1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 174
    .line 175
    iget-object v2, p0, Landroidx/recyclerview/widget/b;->a:Ld0/d;

    .line 176
    .line 177
    invoke-virtual {v2, v1}, Ld0/d;->c(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_11
    return p1
.end method
