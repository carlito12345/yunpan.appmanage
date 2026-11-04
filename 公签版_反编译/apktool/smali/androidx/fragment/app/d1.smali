.class public abstract Landroidx/fragment/app/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroidx/activity/result/d;

.field public B:Landroidx/activity/result/d;

.field public C:Ljava/util/ArrayDeque;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Landroidx/fragment/app/g1;

.field public final M:Landroidx/fragment/app/o;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Landroidx/fragment/app/l1;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/q0;

.field public g:Landroidx/activity/w;

.field public final h:Landroidx/fragment/app/u0;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:Landroidx/fragment/app/k0;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Landroidx/fragment/app/s0;

.field public final o:Landroidx/fragment/app/s0;

.field public final p:Landroidx/fragment/app/s0;

.field public final q:Landroidx/fragment/app/s0;

.field public final r:Landroidx/fragment/app/v0;

.field public s:I

.field public t:Landroidx/fragment/app/o0;

.field public u:Landroidx/fragment/app/m0;

.field public v:Landroidx/fragment/app/Fragment;

.field public w:Landroidx/fragment/app/Fragment;

.field public final x:Landroidx/fragment/app/w0;

.field public final y:Lgf/g;

.field public z:Landroidx/activity/result/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/fragment/app/l1;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/fragment/app/l1;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 17
    .line 18
    new-instance v0, Landroidx/fragment/app/q0;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroidx/fragment/app/q0;-><init>(Landroidx/fragment/app/d1;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/fragment/app/d1;->f:Landroidx/fragment/app/q0;

    .line 24
    .line 25
    new-instance v0, Landroidx/fragment/app/u0;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroidx/fragment/app/u0;-><init>(Landroidx/fragment/app/d1;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/fragment/app/d1;->h:Landroidx/fragment/app/u0;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/fragment/app/d1;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Landroidx/fragment/app/d1;->j:Ljava/util/Map;

    .line 49
    .line 50
    new-instance v0, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Landroidx/fragment/app/d1;->k:Ljava/util/Map;

    .line 60
    .line 61
    new-instance v0, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroidx/fragment/app/k0;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Landroidx/fragment/app/k0;-><init>(Landroidx/fragment/app/d1;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Landroidx/fragment/app/d1;->l:Landroidx/fragment/app/k0;

    .line 75
    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Landroidx/fragment/app/d1;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    .line 83
    new-instance v0, Landroidx/fragment/app/s0;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/s0;-><init>(Landroidx/fragment/app/d1;I)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Landroidx/fragment/app/d1;->n:Landroidx/fragment/app/s0;

    .line 90
    .line 91
    new-instance v0, Landroidx/fragment/app/s0;

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/s0;-><init>(Landroidx/fragment/app/d1;I)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Landroidx/fragment/app/d1;->o:Landroidx/fragment/app/s0;

    .line 98
    .line 99
    new-instance v0, Landroidx/fragment/app/s0;

    .line 100
    .line 101
    const/4 v1, 0x2

    .line 102
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/s0;-><init>(Landroidx/fragment/app/d1;I)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Landroidx/fragment/app/d1;->p:Landroidx/fragment/app/s0;

    .line 106
    .line 107
    new-instance v0, Landroidx/fragment/app/s0;

    .line 108
    .line 109
    const/4 v1, 0x3

    .line 110
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/s0;-><init>(Landroidx/fragment/app/d1;I)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Landroidx/fragment/app/d1;->q:Landroidx/fragment/app/s0;

    .line 114
    .line 115
    new-instance v0, Landroidx/fragment/app/v0;

    .line 116
    .line 117
    invoke-direct {v0, p0}, Landroidx/fragment/app/v0;-><init>(Landroidx/fragment/app/d1;)V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Landroidx/fragment/app/d1;->r:Landroidx/fragment/app/v0;

    .line 121
    .line 122
    const/4 v0, -0x1

    .line 123
    iput v0, p0, Landroidx/fragment/app/d1;->s:I

    .line 124
    .line 125
    new-instance v0, Landroidx/fragment/app/w0;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Landroidx/fragment/app/w0;-><init>(Landroidx/fragment/app/d1;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Landroidx/fragment/app/d1;->x:Landroidx/fragment/app/w0;

    .line 131
    .line 132
    new-instance v0, Lgf/g;

    .line 133
    .line 134
    const/4 v1, 0x5

    .line 135
    invoke-direct {v0, v1}, Lgf/g;-><init>(I)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Landroidx/fragment/app/d1;->y:Lgf/g;

    .line 139
    .line 140
    new-instance v0, Ljava/util/ArrayDeque;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Landroidx/fragment/app/d1;->C:Ljava/util/ArrayDeque;

    .line 146
    .line 147
    new-instance v0, Landroidx/fragment/app/o;

    .line 148
    .line 149
    const/4 v1, 0x2

    .line 150
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/o;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Landroidx/fragment/app/d1;->M:Landroidx/fragment/app/o;

    .line 154
    .line 155
    return-void
.end method

.method public static H(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/d1;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/l1;->e()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-static {v2}, Landroidx/fragment/app/d1;->H(Landroidx/fragment/app/Fragment;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :cond_2
    if-eqz v1, :cond_1

    .line 42
    .line 43
    :cond_3
    const/4 v0, 0x1

    .line 44
    :cond_4
    return v0
.end method

.method public static J(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/fragment/app/d1;->w:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object p0, v1, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/fragment/app/d1;->J(Landroidx/fragment/app/Fragment;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method


# virtual methods
.method public final A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Landroidx/fragment/app/a;

    .line 16
    .line 17
    iget-boolean v5, v5, Landroidx/fragment/app/a;->o:Z

    .line 18
    .line 19
    iget-object v6, v0, Landroidx/fragment/app/d1;->K:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v6, v0, Landroidx/fragment/app/d1;->K:Ljava/util/ArrayList;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v6, v0, Landroidx/fragment/app/d1;->K:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v7, v0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    iget-object v6, v0, Landroidx/fragment/app/d1;->w:Landroidx/fragment/app/Fragment;

    .line 46
    .line 47
    move v9, v3

    .line 48
    const/4 v10, 0x0

    .line 49
    :goto_1
    const/4 v12, 0x1

    .line 50
    if-ge v9, v4, :cond_12

    .line 51
    .line 52
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v14

    .line 56
    check-cast v14, Landroidx/fragment/app/a;

    .line 57
    .line 58
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v15

    .line 62
    check-cast v15, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v15

    .line 68
    if-nez v15, :cond_c

    .line 69
    .line 70
    iget-object v15, v0, Landroidx/fragment/app/d1;->K:Ljava/util/ArrayList;

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    :goto_2
    iget-object v13, v14, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-ge v8, v11, :cond_b

    .line 80
    .line 81
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    check-cast v11, Landroidx/fragment/app/m1;

    .line 86
    .line 87
    iget v3, v11, Landroidx/fragment/app/m1;->a:I

    .line 88
    .line 89
    if-eq v3, v12, :cond_3

    .line 90
    .line 91
    const/4 v12, 0x2

    .line 92
    if-eq v3, v12, :cond_5

    .line 93
    .line 94
    const/4 v12, 0x3

    .line 95
    if-eq v3, v12, :cond_4

    .line 96
    .line 97
    const/4 v12, 0x6

    .line 98
    if-eq v3, v12, :cond_4

    .line 99
    .line 100
    const/4 v12, 0x7

    .line 101
    if-eq v3, v12, :cond_3

    .line 102
    .line 103
    const/16 v12, 0x8

    .line 104
    .line 105
    if-eq v3, v12, :cond_1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_1
    new-instance v3, Landroidx/fragment/app/m1;

    .line 109
    .line 110
    const/16 v2, 0x9

    .line 111
    .line 112
    const/4 v12, 0x0

    .line 113
    invoke-direct {v3, v2, v6, v12}, Landroidx/fragment/app/m1;-><init>(ILandroidx/fragment/app/Fragment;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    const/4 v2, 0x1

    .line 120
    iput-boolean v2, v11, Landroidx/fragment/app/m1;->c:Z

    .line 121
    .line 122
    add-int/lit8 v8, v8, 0x1

    .line 123
    .line 124
    iget-object v2, v11, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 125
    .line 126
    move-object v6, v2

    .line 127
    :cond_2
    :goto_3
    move-object/from16 v21, v7

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    goto/16 :goto_8

    .line 131
    .line 132
    :cond_3
    move-object/from16 v21, v7

    .line 133
    .line 134
    const/4 v1, 0x1

    .line 135
    goto/16 :goto_7

    .line 136
    .line 137
    :cond_4
    iget-object v2, v11, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 138
    .line 139
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    iget-object v2, v11, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 143
    .line 144
    if-ne v2, v6, :cond_2

    .line 145
    .line 146
    new-instance v3, Landroidx/fragment/app/m1;

    .line 147
    .line 148
    const/16 v6, 0x9

    .line 149
    .line 150
    invoke-direct {v3, v2, v6}, Landroidx/fragment/app/m1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v8, v8, 0x1

    .line 157
    .line 158
    move-object/from16 v21, v7

    .line 159
    .line 160
    const/4 v1, 0x1

    .line 161
    const/4 v6, 0x0

    .line 162
    goto/16 :goto_8

    .line 163
    .line 164
    :cond_5
    iget-object v2, v11, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 165
    .line 166
    iget v3, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 167
    .line 168
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    const/16 v17, 0x1

    .line 173
    .line 174
    add-int/lit8 v12, v12, -0x1

    .line 175
    .line 176
    const/16 v19, 0x0

    .line 177
    .line 178
    :goto_4
    if-ltz v12, :cond_9

    .line 179
    .line 180
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v20

    .line 184
    move-object/from16 v21, v7

    .line 185
    .line 186
    move-object/from16 v7, v20

    .line 187
    .line 188
    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 189
    .line 190
    iget v1, v7, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 191
    .line 192
    if-ne v1, v3, :cond_8

    .line 193
    .line 194
    if-ne v7, v2, :cond_6

    .line 195
    .line 196
    move/from16 v18, v3

    .line 197
    .line 198
    const/4 v1, 0x1

    .line 199
    const/16 v19, 0x1

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_6
    if-ne v7, v6, :cond_7

    .line 203
    .line 204
    new-instance v1, Landroidx/fragment/app/m1;

    .line 205
    .line 206
    move/from16 v18, v3

    .line 207
    .line 208
    const/16 v3, 0x9

    .line 209
    .line 210
    const/4 v6, 0x0

    .line 211
    invoke-direct {v1, v3, v7, v6}, Landroidx/fragment/app/m1;-><init>(ILandroidx/fragment/app/Fragment;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v13, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    add-int/lit8 v8, v8, 0x1

    .line 218
    .line 219
    const/4 v1, 0x0

    .line 220
    const/4 v6, 0x0

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    move/from16 v18, v3

    .line 223
    .line 224
    const/4 v1, 0x0

    .line 225
    const/16 v3, 0x9

    .line 226
    .line 227
    :goto_5
    new-instance v3, Landroidx/fragment/app/m1;

    .line 228
    .line 229
    move-object/from16 v22, v6

    .line 230
    .line 231
    const/4 v6, 0x3

    .line 232
    invoke-direct {v3, v6, v7, v1}, Landroidx/fragment/app/m1;-><init>(ILandroidx/fragment/app/Fragment;I)V

    .line 233
    .line 234
    .line 235
    iget v1, v11, Landroidx/fragment/app/m1;->d:I

    .line 236
    .line 237
    iput v1, v3, Landroidx/fragment/app/m1;->d:I

    .line 238
    .line 239
    iget v1, v11, Landroidx/fragment/app/m1;->f:I

    .line 240
    .line 241
    iput v1, v3, Landroidx/fragment/app/m1;->f:I

    .line 242
    .line 243
    iget v1, v11, Landroidx/fragment/app/m1;->e:I

    .line 244
    .line 245
    iput v1, v3, Landroidx/fragment/app/m1;->e:I

    .line 246
    .line 247
    iget v1, v11, Landroidx/fragment/app/m1;->g:I

    .line 248
    .line 249
    iput v1, v3, Landroidx/fragment/app/m1;->g:I

    .line 250
    .line 251
    invoke-virtual {v13, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    const/4 v1, 0x1

    .line 258
    add-int/2addr v8, v1

    .line 259
    move-object/from16 v6, v22

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_8
    move/from16 v18, v3

    .line 263
    .line 264
    const/4 v1, 0x1

    .line 265
    :goto_6
    add-int/lit8 v12, v12, -0x1

    .line 266
    .line 267
    move-object/from16 v1, p1

    .line 268
    .line 269
    move/from16 v3, v18

    .line 270
    .line 271
    move-object/from16 v7, v21

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_9
    move-object/from16 v21, v7

    .line 275
    .line 276
    const/4 v1, 0x1

    .line 277
    if-eqz v19, :cond_a

    .line 278
    .line 279
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    add-int/lit8 v8, v8, -0x1

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_a
    iput v1, v11, Landroidx/fragment/app/m1;->a:I

    .line 286
    .line 287
    iput-boolean v1, v11, Landroidx/fragment/app/m1;->c:Z

    .line 288
    .line 289
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto :goto_8

    .line 293
    :goto_7
    iget-object v2, v11, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 294
    .line 295
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    :goto_8
    add-int/2addr v8, v1

    .line 299
    move-object/from16 v1, p1

    .line 300
    .line 301
    move-object/from16 v2, p2

    .line 302
    .line 303
    move/from16 v3, p3

    .line 304
    .line 305
    move-object/from16 v7, v21

    .line 306
    .line 307
    const/4 v12, 0x1

    .line 308
    goto/16 :goto_2

    .line 309
    .line 310
    :cond_b
    move-object/from16 v21, v7

    .line 311
    .line 312
    goto :goto_b

    .line 313
    :cond_c
    move-object/from16 v21, v7

    .line 314
    .line 315
    const/4 v1, 0x1

    .line 316
    iget-object v2, v0, Landroidx/fragment/app/d1;->K:Ljava/util/ArrayList;

    .line 317
    .line 318
    iget-object v3, v14, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    sub-int/2addr v7, v1

    .line 325
    :goto_9
    if-ltz v7, :cond_f

    .line 326
    .line 327
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    check-cast v8, Landroidx/fragment/app/m1;

    .line 332
    .line 333
    iget v11, v8, Landroidx/fragment/app/m1;->a:I

    .line 334
    .line 335
    if-eq v11, v1, :cond_e

    .line 336
    .line 337
    const/4 v1, 0x3

    .line 338
    if-eq v11, v1, :cond_d

    .line 339
    .line 340
    packed-switch v11, :pswitch_data_0

    .line 341
    .line 342
    .line 343
    goto :goto_a

    .line 344
    :pswitch_0
    iget-object v11, v8, Landroidx/fragment/app/m1;->h:Landroidx/lifecycle/n;

    .line 345
    .line 346
    iput-object v11, v8, Landroidx/fragment/app/m1;->i:Landroidx/lifecycle/n;

    .line 347
    .line 348
    goto :goto_a

    .line 349
    :pswitch_1
    iget-object v6, v8, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 350
    .line 351
    goto :goto_a

    .line 352
    :pswitch_2
    const/4 v6, 0x0

    .line 353
    goto :goto_a

    .line 354
    :cond_d
    :pswitch_3
    iget-object v8, v8, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 355
    .line 356
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    goto :goto_a

    .line 360
    :cond_e
    const/4 v1, 0x3

    .line 361
    :pswitch_4
    iget-object v8, v8, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 362
    .line 363
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    :goto_a
    add-int/lit8 v7, v7, -0x1

    .line 367
    .line 368
    const/4 v1, 0x1

    .line 369
    goto :goto_9

    .line 370
    :cond_f
    :goto_b
    if-nez v10, :cond_11

    .line 371
    .line 372
    iget-boolean v1, v14, Landroidx/fragment/app/a;->g:Z

    .line 373
    .line 374
    if-eqz v1, :cond_10

    .line 375
    .line 376
    goto :goto_c

    .line 377
    :cond_10
    const/4 v10, 0x0

    .line 378
    goto :goto_d

    .line 379
    :cond_11
    :goto_c
    const/4 v10, 0x1

    .line 380
    :goto_d
    add-int/lit8 v9, v9, 0x1

    .line 381
    .line 382
    move-object/from16 v1, p1

    .line 383
    .line 384
    move-object/from16 v2, p2

    .line 385
    .line 386
    move/from16 v3, p3

    .line 387
    .line 388
    move-object/from16 v7, v21

    .line 389
    .line 390
    goto/16 :goto_1

    .line 391
    .line 392
    :cond_12
    move-object/from16 v21, v7

    .line 393
    .line 394
    iget-object v1, v0, Landroidx/fragment/app/d1;->K:Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 397
    .line 398
    .line 399
    if-nez v5, :cond_15

    .line 400
    .line 401
    iget v1, v0, Landroidx/fragment/app/d1;->s:I

    .line 402
    .line 403
    const/4 v2, 0x1

    .line 404
    if-lt v1, v2, :cond_15

    .line 405
    .line 406
    move/from16 v1, p3

    .line 407
    .line 408
    :goto_e
    if-ge v1, v4, :cond_15

    .line 409
    .line 410
    move-object/from16 v2, p1

    .line 411
    .line 412
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    check-cast v3, Landroidx/fragment/app/a;

    .line 417
    .line 418
    iget-object v3, v3, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 419
    .line 420
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    if-eqz v5, :cond_14

    .line 429
    .line 430
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    check-cast v5, Landroidx/fragment/app/m1;

    .line 435
    .line 436
    iget-object v5, v5, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 437
    .line 438
    if-eqz v5, :cond_13

    .line 439
    .line 440
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 441
    .line 442
    if-eqz v6, :cond_13

    .line 443
    .line 444
    invoke-virtual {v0, v5}, Landroidx/fragment/app/d1;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k1;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    move-object/from16 v6, v21

    .line 449
    .line 450
    invoke-virtual {v6, v5}, Landroidx/fragment/app/l1;->g(Landroidx/fragment/app/k1;)V

    .line 451
    .line 452
    .line 453
    goto :goto_10

    .line 454
    :cond_13
    move-object/from16 v6, v21

    .line 455
    .line 456
    :goto_10
    move-object/from16 v21, v6

    .line 457
    .line 458
    goto :goto_f

    .line 459
    :cond_14
    move-object/from16 v6, v21

    .line 460
    .line 461
    add-int/lit8 v1, v1, 0x1

    .line 462
    .line 463
    goto :goto_e

    .line 464
    :cond_15
    move-object/from16 v2, p1

    .line 465
    .line 466
    move/from16 v1, p3

    .line 467
    .line 468
    :goto_11
    const/4 v3, -0x1

    .line 469
    if-ge v1, v4, :cond_22

    .line 470
    .line 471
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    check-cast v5, Landroidx/fragment/app/a;

    .line 476
    .line 477
    move-object/from16 v6, p2

    .line 478
    .line 479
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v7

    .line 483
    check-cast v7, Ljava/lang/Boolean;

    .line 484
    .line 485
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    const-string v8, "FragmentManager"

    .line 490
    .line 491
    const-string v9, "Unknown cmd: "

    .line 492
    .line 493
    if-eqz v7, :cond_1e

    .line 494
    .line 495
    invoke-virtual {v5, v3}, Landroidx/fragment/app/a;->c(I)V

    .line 496
    .line 497
    .line 498
    iget-object v3, v5, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 499
    .line 500
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    const/4 v10, 0x1

    .line 505
    sub-int/2addr v7, v10

    .line 506
    :goto_12
    if-ltz v7, :cond_1d

    .line 507
    .line 508
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v11

    .line 512
    check-cast v11, Landroidx/fragment/app/m1;

    .line 513
    .line 514
    iget-object v12, v11, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 515
    .line 516
    if-eqz v12, :cond_1a

    .line 517
    .line 518
    const/4 v13, 0x0

    .line 519
    iput-boolean v13, v12, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 520
    .line 521
    invoke-virtual {v12, v10}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 522
    .line 523
    .line 524
    iget v10, v5, Landroidx/fragment/app/a;->f:I

    .line 525
    .line 526
    const/16 v13, 0x2002

    .line 527
    .line 528
    const/16 v14, 0x1001

    .line 529
    .line 530
    if-eq v10, v14, :cond_19

    .line 531
    .line 532
    if-eq v10, v13, :cond_18

    .line 533
    .line 534
    const/16 v13, 0x1004

    .line 535
    .line 536
    const/16 v14, 0x2005

    .line 537
    .line 538
    if-eq v10, v14, :cond_19

    .line 539
    .line 540
    const/16 v15, 0x1003

    .line 541
    .line 542
    if-eq v10, v15, :cond_17

    .line 543
    .line 544
    if-eq v10, v13, :cond_16

    .line 545
    .line 546
    const/4 v13, 0x0

    .line 547
    goto :goto_13

    .line 548
    :cond_16
    const/16 v13, 0x2005

    .line 549
    .line 550
    goto :goto_13

    .line 551
    :cond_17
    const/16 v13, 0x1003

    .line 552
    .line 553
    goto :goto_13

    .line 554
    :cond_18
    const/16 v13, 0x1001

    .line 555
    .line 556
    :cond_19
    :goto_13
    invoke-virtual {v12, v13}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 557
    .line 558
    .line 559
    iget-object v10, v5, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    .line 560
    .line 561
    iget-object v13, v5, Landroidx/fragment/app/a;->m:Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-virtual {v12, v10, v13}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 564
    .line 565
    .line 566
    :cond_1a
    iget v10, v11, Landroidx/fragment/app/m1;->a:I

    .line 567
    .line 568
    iget-object v13, v5, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/d1;

    .line 569
    .line 570
    packed-switch v10, :pswitch_data_1

    .line 571
    .line 572
    .line 573
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 574
    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    iget v3, v11, Landroidx/fragment/app/m1;->a:I

    .line 581
    .line 582
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw v1

    .line 593
    :pswitch_6
    iget-object v10, v11, Landroidx/fragment/app/m1;->h:Landroidx/lifecycle/n;

    .line 594
    .line 595
    invoke-virtual {v13, v12, v10}, Landroidx/fragment/app/d1;->Y(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V

    .line 596
    .line 597
    .line 598
    :cond_1b
    :goto_14
    const/4 v10, 0x1

    .line 599
    goto/16 :goto_15

    .line 600
    .line 601
    :pswitch_7
    invoke-virtual {v13, v12}, Landroidx/fragment/app/d1;->Z(Landroidx/fragment/app/Fragment;)V

    .line 602
    .line 603
    .line 604
    goto :goto_14

    .line 605
    :pswitch_8
    const/4 v10, 0x0

    .line 606
    invoke-virtual {v13, v10}, Landroidx/fragment/app/d1;->Z(Landroidx/fragment/app/Fragment;)V

    .line 607
    .line 608
    .line 609
    goto :goto_14

    .line 610
    :pswitch_9
    iget v10, v11, Landroidx/fragment/app/m1;->d:I

    .line 611
    .line 612
    iget v14, v11, Landroidx/fragment/app/m1;->e:I

    .line 613
    .line 614
    iget v15, v11, Landroidx/fragment/app/m1;->f:I

    .line 615
    .line 616
    iget v11, v11, Landroidx/fragment/app/m1;->g:I

    .line 617
    .line 618
    invoke-virtual {v12, v10, v14, v15, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 619
    .line 620
    .line 621
    const/4 v10, 0x1

    .line 622
    invoke-virtual {v13, v12, v10}, Landroidx/fragment/app/d1;->X(Landroidx/fragment/app/Fragment;Z)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v13, v12}, Landroidx/fragment/app/d1;->g(Landroidx/fragment/app/Fragment;)V

    .line 626
    .line 627
    .line 628
    goto :goto_14

    .line 629
    :pswitch_a
    iget v10, v11, Landroidx/fragment/app/m1;->d:I

    .line 630
    .line 631
    iget v14, v11, Landroidx/fragment/app/m1;->e:I

    .line 632
    .line 633
    iget v15, v11, Landroidx/fragment/app/m1;->f:I

    .line 634
    .line 635
    iget v11, v11, Landroidx/fragment/app/m1;->g:I

    .line 636
    .line 637
    invoke-virtual {v12, v10, v14, v15, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v13, v12}, Landroidx/fragment/app/d1;->c(Landroidx/fragment/app/Fragment;)V

    .line 641
    .line 642
    .line 643
    goto :goto_14

    .line 644
    :pswitch_b
    iget v10, v11, Landroidx/fragment/app/m1;->d:I

    .line 645
    .line 646
    iget v14, v11, Landroidx/fragment/app/m1;->e:I

    .line 647
    .line 648
    iget v15, v11, Landroidx/fragment/app/m1;->f:I

    .line 649
    .line 650
    iget v11, v11, Landroidx/fragment/app/m1;->g:I

    .line 651
    .line 652
    invoke-virtual {v12, v10, v14, v15, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 653
    .line 654
    .line 655
    const/4 v10, 0x1

    .line 656
    invoke-virtual {v13, v12, v10}, Landroidx/fragment/app/d1;->X(Landroidx/fragment/app/Fragment;Z)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v13, v12}, Landroidx/fragment/app/d1;->G(Landroidx/fragment/app/Fragment;)V

    .line 660
    .line 661
    .line 662
    goto :goto_14

    .line 663
    :pswitch_c
    iget v10, v11, Landroidx/fragment/app/m1;->d:I

    .line 664
    .line 665
    iget v14, v11, Landroidx/fragment/app/m1;->e:I

    .line 666
    .line 667
    iget v15, v11, Landroidx/fragment/app/m1;->f:I

    .line 668
    .line 669
    iget v11, v11, Landroidx/fragment/app/m1;->g:I

    .line 670
    .line 671
    invoke-virtual {v12, v10, v14, v15, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    const/4 v10, 0x2

    .line 678
    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 679
    .line 680
    .line 681
    move-result v11

    .line 682
    if-eqz v11, :cond_1c

    .line 683
    .line 684
    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    :cond_1c
    iget-boolean v10, v12, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 688
    .line 689
    if-eqz v10, :cond_1b

    .line 690
    .line 691
    const/4 v10, 0x0

    .line 692
    iput-boolean v10, v12, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 693
    .line 694
    iget-boolean v10, v12, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 695
    .line 696
    const/4 v11, 0x1

    .line 697
    xor-int/2addr v10, v11

    .line 698
    iput-boolean v10, v12, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 699
    .line 700
    goto :goto_14

    .line 701
    :pswitch_d
    iget v10, v11, Landroidx/fragment/app/m1;->d:I

    .line 702
    .line 703
    iget v14, v11, Landroidx/fragment/app/m1;->e:I

    .line 704
    .line 705
    iget v15, v11, Landroidx/fragment/app/m1;->f:I

    .line 706
    .line 707
    iget v11, v11, Landroidx/fragment/app/m1;->g:I

    .line 708
    .line 709
    invoke-virtual {v12, v10, v14, v15, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v13, v12}, Landroidx/fragment/app/d1;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k1;

    .line 713
    .line 714
    .line 715
    goto :goto_14

    .line 716
    :pswitch_e
    iget v10, v11, Landroidx/fragment/app/m1;->d:I

    .line 717
    .line 718
    iget v14, v11, Landroidx/fragment/app/m1;->e:I

    .line 719
    .line 720
    iget v15, v11, Landroidx/fragment/app/m1;->f:I

    .line 721
    .line 722
    iget v11, v11, Landroidx/fragment/app/m1;->g:I

    .line 723
    .line 724
    invoke-virtual {v12, v10, v14, v15, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 725
    .line 726
    .line 727
    const/4 v10, 0x1

    .line 728
    invoke-virtual {v13, v12, v10}, Landroidx/fragment/app/d1;->X(Landroidx/fragment/app/Fragment;Z)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v13, v12}, Landroidx/fragment/app/d1;->R(Landroidx/fragment/app/Fragment;)V

    .line 732
    .line 733
    .line 734
    :goto_15
    add-int/lit8 v7, v7, -0x1

    .line 735
    .line 736
    goto/16 :goto_12

    .line 737
    .line 738
    :cond_1d
    const/4 v10, 0x0

    .line 739
    goto/16 :goto_1a

    .line 740
    .line 741
    :cond_1e
    const/4 v10, 0x1

    .line 742
    invoke-virtual {v5, v10}, Landroidx/fragment/app/a;->c(I)V

    .line 743
    .line 744
    .line 745
    iget-object v3, v5, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 746
    .line 747
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 748
    .line 749
    .line 750
    move-result v7

    .line 751
    const/4 v12, 0x0

    .line 752
    :goto_16
    if-ge v12, v7, :cond_1d

    .line 753
    .line 754
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v10

    .line 758
    check-cast v10, Landroidx/fragment/app/m1;

    .line 759
    .line 760
    iget-object v11, v10, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 761
    .line 762
    if-eqz v11, :cond_1f

    .line 763
    .line 764
    const/4 v13, 0x0

    .line 765
    iput-boolean v13, v11, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 766
    .line 767
    invoke-virtual {v11, v13}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 768
    .line 769
    .line 770
    iget v13, v5, Landroidx/fragment/app/a;->f:I

    .line 771
    .line 772
    invoke-virtual {v11, v13}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 773
    .line 774
    .line 775
    iget-object v13, v5, Landroidx/fragment/app/a;->m:Ljava/util/ArrayList;

    .line 776
    .line 777
    iget-object v14, v5, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    .line 778
    .line 779
    invoke-virtual {v11, v13, v14}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 780
    .line 781
    .line 782
    :cond_1f
    iget v13, v10, Landroidx/fragment/app/m1;->a:I

    .line 783
    .line 784
    iget-object v14, v5, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/d1;

    .line 785
    .line 786
    packed-switch v13, :pswitch_data_2

    .line 787
    .line 788
    .line 789
    :pswitch_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 790
    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    .line 792
    .line 793
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    iget v3, v10, Landroidx/fragment/app/m1;->a:I

    .line 797
    .line 798
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    throw v1

    .line 809
    :pswitch_10
    iget-object v10, v10, Landroidx/fragment/app/m1;->i:Landroidx/lifecycle/n;

    .line 810
    .line 811
    invoke-virtual {v14, v11, v10}, Landroidx/fragment/app/d1;->Y(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V

    .line 812
    .line 813
    .line 814
    :goto_17
    move-object/from16 v16, v3

    .line 815
    .line 816
    :cond_20
    :goto_18
    const/4 v10, 0x0

    .line 817
    goto/16 :goto_19

    .line 818
    .line 819
    :pswitch_11
    const/4 v13, 0x0

    .line 820
    invoke-virtual {v14, v13}, Landroidx/fragment/app/d1;->Z(Landroidx/fragment/app/Fragment;)V

    .line 821
    .line 822
    .line 823
    goto :goto_17

    .line 824
    :pswitch_12
    const/4 v13, 0x0

    .line 825
    invoke-virtual {v14, v11}, Landroidx/fragment/app/d1;->Z(Landroidx/fragment/app/Fragment;)V

    .line 826
    .line 827
    .line 828
    goto :goto_17

    .line 829
    :pswitch_13
    const/4 v13, 0x0

    .line 830
    iget v15, v10, Landroidx/fragment/app/m1;->d:I

    .line 831
    .line 832
    iget v13, v10, Landroidx/fragment/app/m1;->e:I

    .line 833
    .line 834
    move-object/from16 v16, v3

    .line 835
    .line 836
    iget v3, v10, Landroidx/fragment/app/m1;->f:I

    .line 837
    .line 838
    iget v10, v10, Landroidx/fragment/app/m1;->g:I

    .line 839
    .line 840
    invoke-virtual {v11, v15, v13, v3, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 841
    .line 842
    .line 843
    const/4 v3, 0x0

    .line 844
    invoke-virtual {v14, v11, v3}, Landroidx/fragment/app/d1;->X(Landroidx/fragment/app/Fragment;Z)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v14, v11}, Landroidx/fragment/app/d1;->c(Landroidx/fragment/app/Fragment;)V

    .line 848
    .line 849
    .line 850
    goto :goto_18

    .line 851
    :pswitch_14
    move-object/from16 v16, v3

    .line 852
    .line 853
    iget v3, v10, Landroidx/fragment/app/m1;->d:I

    .line 854
    .line 855
    iget v13, v10, Landroidx/fragment/app/m1;->e:I

    .line 856
    .line 857
    iget v15, v10, Landroidx/fragment/app/m1;->f:I

    .line 858
    .line 859
    iget v10, v10, Landroidx/fragment/app/m1;->g:I

    .line 860
    .line 861
    invoke-virtual {v11, v3, v13, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v14, v11}, Landroidx/fragment/app/d1;->g(Landroidx/fragment/app/Fragment;)V

    .line 865
    .line 866
    .line 867
    goto :goto_18

    .line 868
    :pswitch_15
    move-object/from16 v16, v3

    .line 869
    .line 870
    iget v3, v10, Landroidx/fragment/app/m1;->d:I

    .line 871
    .line 872
    iget v13, v10, Landroidx/fragment/app/m1;->e:I

    .line 873
    .line 874
    iget v15, v10, Landroidx/fragment/app/m1;->f:I

    .line 875
    .line 876
    iget v10, v10, Landroidx/fragment/app/m1;->g:I

    .line 877
    .line 878
    invoke-virtual {v11, v3, v13, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 879
    .line 880
    .line 881
    const/4 v3, 0x0

    .line 882
    invoke-virtual {v14, v11, v3}, Landroidx/fragment/app/d1;->X(Landroidx/fragment/app/Fragment;Z)V

    .line 883
    .line 884
    .line 885
    const/4 v13, 0x2

    .line 886
    invoke-static {v8, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 887
    .line 888
    .line 889
    move-result v10

    .line 890
    if-eqz v10, :cond_21

    .line 891
    .line 892
    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    :cond_21
    iget-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 896
    .line 897
    if-eqz v10, :cond_20

    .line 898
    .line 899
    iput-boolean v3, v11, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 900
    .line 901
    iget-boolean v3, v11, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 902
    .line 903
    const/4 v10, 0x1

    .line 904
    xor-int/2addr v3, v10

    .line 905
    iput-boolean v3, v11, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 906
    .line 907
    goto :goto_18

    .line 908
    :pswitch_16
    move-object/from16 v16, v3

    .line 909
    .line 910
    const/4 v13, 0x2

    .line 911
    iget v3, v10, Landroidx/fragment/app/m1;->d:I

    .line 912
    .line 913
    iget v15, v10, Landroidx/fragment/app/m1;->e:I

    .line 914
    .line 915
    iget v13, v10, Landroidx/fragment/app/m1;->f:I

    .line 916
    .line 917
    iget v10, v10, Landroidx/fragment/app/m1;->g:I

    .line 918
    .line 919
    invoke-virtual {v11, v3, v15, v13, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v14, v11}, Landroidx/fragment/app/d1;->G(Landroidx/fragment/app/Fragment;)V

    .line 923
    .line 924
    .line 925
    goto :goto_18

    .line 926
    :pswitch_17
    move-object/from16 v16, v3

    .line 927
    .line 928
    iget v3, v10, Landroidx/fragment/app/m1;->d:I

    .line 929
    .line 930
    iget v13, v10, Landroidx/fragment/app/m1;->e:I

    .line 931
    .line 932
    iget v15, v10, Landroidx/fragment/app/m1;->f:I

    .line 933
    .line 934
    iget v10, v10, Landroidx/fragment/app/m1;->g:I

    .line 935
    .line 936
    invoke-virtual {v11, v3, v13, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v14, v11}, Landroidx/fragment/app/d1;->R(Landroidx/fragment/app/Fragment;)V

    .line 940
    .line 941
    .line 942
    goto :goto_18

    .line 943
    :pswitch_18
    move-object/from16 v16, v3

    .line 944
    .line 945
    iget v3, v10, Landroidx/fragment/app/m1;->d:I

    .line 946
    .line 947
    iget v13, v10, Landroidx/fragment/app/m1;->e:I

    .line 948
    .line 949
    iget v15, v10, Landroidx/fragment/app/m1;->f:I

    .line 950
    .line 951
    iget v10, v10, Landroidx/fragment/app/m1;->g:I

    .line 952
    .line 953
    invoke-virtual {v11, v3, v13, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 954
    .line 955
    .line 956
    const/4 v10, 0x0

    .line 957
    invoke-virtual {v14, v11, v10}, Landroidx/fragment/app/d1;->X(Landroidx/fragment/app/Fragment;Z)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v14, v11}, Landroidx/fragment/app/d1;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k1;

    .line 961
    .line 962
    .line 963
    :goto_19
    add-int/lit8 v12, v12, 0x1

    .line 964
    .line 965
    move-object/from16 v3, v16

    .line 966
    .line 967
    goto/16 :goto_16

    .line 968
    .line 969
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    .line 970
    .line 971
    goto/16 :goto_11

    .line 972
    .line 973
    :cond_22
    move-object/from16 v6, p2

    .line 974
    .line 975
    add-int/lit8 v1, v4, -0x1

    .line 976
    .line 977
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    check-cast v1, Ljava/lang/Boolean;

    .line 982
    .line 983
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 984
    .line 985
    .line 986
    move-result v1

    .line 987
    move/from16 v5, p3

    .line 988
    .line 989
    :goto_1b
    if-ge v5, v4, :cond_27

    .line 990
    .line 991
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v7

    .line 995
    check-cast v7, Landroidx/fragment/app/a;

    .line 996
    .line 997
    if-eqz v1, :cond_24

    .line 998
    .line 999
    iget-object v8, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1000
    .line 1001
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1002
    .line 1003
    .line 1004
    move-result v8

    .line 1005
    const/4 v9, 0x1

    .line 1006
    sub-int/2addr v8, v9

    .line 1007
    :goto_1c
    if-ltz v8, :cond_26

    .line 1008
    .line 1009
    iget-object v9, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1010
    .line 1011
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v9

    .line 1015
    check-cast v9, Landroidx/fragment/app/m1;

    .line 1016
    .line 1017
    iget-object v9, v9, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 1018
    .line 1019
    if-eqz v9, :cond_23

    .line 1020
    .line 1021
    invoke-virtual {v0, v9}, Landroidx/fragment/app/d1;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k1;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v9

    .line 1025
    invoke-virtual {v9}, Landroidx/fragment/app/k1;->i()V

    .line 1026
    .line 1027
    .line 1028
    :cond_23
    add-int/lit8 v8, v8, -0x1

    .line 1029
    .line 1030
    goto :goto_1c

    .line 1031
    :cond_24
    iget-object v7, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1032
    .line 1033
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v7

    .line 1037
    :cond_25
    :goto_1d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v8

    .line 1041
    if-eqz v8, :cond_26

    .line 1042
    .line 1043
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v8

    .line 1047
    check-cast v8, Landroidx/fragment/app/m1;

    .line 1048
    .line 1049
    iget-object v8, v8, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 1050
    .line 1051
    if-eqz v8, :cond_25

    .line 1052
    .line 1053
    invoke-virtual {v0, v8}, Landroidx/fragment/app/d1;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k1;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v8

    .line 1057
    invoke-virtual {v8}, Landroidx/fragment/app/k1;->i()V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_1d

    .line 1061
    :cond_26
    add-int/lit8 v5, v5, 0x1

    .line 1062
    .line 1063
    goto :goto_1b

    .line 1064
    :cond_27
    iget v5, v0, Landroidx/fragment/app/d1;->s:I

    .line 1065
    .line 1066
    const/4 v7, 0x1

    .line 1067
    invoke-virtual {v0, v5, v7}, Landroidx/fragment/app/d1;->L(IZ)V

    .line 1068
    .line 1069
    .line 1070
    new-instance v5, Ljava/util/HashSet;

    .line 1071
    .line 1072
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    move/from16 v7, p3

    .line 1076
    .line 1077
    :goto_1e
    if-ge v7, v4, :cond_2a

    .line 1078
    .line 1079
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v8

    .line 1083
    check-cast v8, Landroidx/fragment/app/a;

    .line 1084
    .line 1085
    iget-object v8, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1086
    .line 1087
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v8

    .line 1091
    :cond_28
    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1092
    .line 1093
    .line 1094
    move-result v9

    .line 1095
    if-eqz v9, :cond_29

    .line 1096
    .line 1097
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v9

    .line 1101
    check-cast v9, Landroidx/fragment/app/m1;

    .line 1102
    .line 1103
    iget-object v9, v9, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 1104
    .line 1105
    if-eqz v9, :cond_28

    .line 1106
    .line 1107
    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1108
    .line 1109
    if-eqz v9, :cond_28

    .line 1110
    .line 1111
    invoke-static {v9, v0}, Landroidx/fragment/app/n;->h(Landroid/view/ViewGroup;Landroidx/fragment/app/d1;)Landroidx/fragment/app/n;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v9

    .line 1115
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1116
    .line 1117
    .line 1118
    goto :goto_1f

    .line 1119
    :cond_29
    add-int/lit8 v7, v7, 0x1

    .line 1120
    .line 1121
    goto :goto_1e

    .line 1122
    :cond_2a
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v5

    .line 1126
    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1127
    .line 1128
    .line 1129
    move-result v7

    .line 1130
    if-eqz v7, :cond_2b

    .line 1131
    .line 1132
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v7

    .line 1136
    check-cast v7, Landroidx/fragment/app/n;

    .line 1137
    .line 1138
    iput-boolean v1, v7, Landroidx/fragment/app/n;->d:Z

    .line 1139
    .line 1140
    invoke-virtual {v7}, Landroidx/fragment/app/n;->i()V

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v7}, Landroidx/fragment/app/n;->d()V

    .line 1144
    .line 1145
    .line 1146
    goto :goto_20

    .line 1147
    :cond_2b
    move/from16 v1, p3

    .line 1148
    .line 1149
    :goto_21
    if-ge v1, v4, :cond_2d

    .line 1150
    .line 1151
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v5

    .line 1155
    check-cast v5, Landroidx/fragment/app/a;

    .line 1156
    .line 1157
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v7

    .line 1161
    check-cast v7, Ljava/lang/Boolean;

    .line 1162
    .line 1163
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1164
    .line 1165
    .line 1166
    move-result v7

    .line 1167
    if-eqz v7, :cond_2c

    .line 1168
    .line 1169
    iget v7, v5, Landroidx/fragment/app/a;->r:I

    .line 1170
    .line 1171
    if-ltz v7, :cond_2c

    .line 1172
    .line 1173
    iput v3, v5, Landroidx/fragment/app/a;->r:I

    .line 1174
    .line 1175
    :cond_2c
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1176
    .line 1177
    .line 1178
    add-int/lit8 v1, v1, 0x1

    .line 1179
    .line 1180
    goto :goto_21

    .line 1181
    :cond_2d
    return-void

    .line 1182
    nop

    .line 1183
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final B(I)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget v4, v3, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 22
    .line 23
    if-ne v4, p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroidx/fragment/app/k1;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v3, v1, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    iget v1, v3, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 56
    .line 57
    if-ne v1, p1, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 v3, 0x0

    .line 61
    :goto_1
    return-object v3
.end method

.method public final C(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroidx/fragment/app/k1;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v3, v1, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    iget-object v1, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    :cond_4
    const/4 v3, 0x0

    .line 76
    :goto_1
    return-object v3
.end method

.method public final D(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-gtz v0, :cond_1

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/d1;->u:Landroidx/fragment/app/m0;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/m0;->o()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/fragment/app/d1;->u:Landroidx/fragment/app/m0;

    .line 21
    .line 22
    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/fragment/app/m0;->n(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_2
    return-object v1
.end method

.method public final E()Landroidx/fragment/app/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/d1;->E()Landroidx/fragment/app/w0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->x:Landroidx/fragment/app/w0;

    .line 13
    .line 14
    return-object v0
.end method

.method public final F()Lgf/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/d1;->F()Lgf/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->y:Lgf/g;

    .line 13
    .line 14
    return-object v0
.end method

.method public final G(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 21
    .line 22
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 23
    .line 24
    xor-int/2addr v0, v1

    .line 25
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->a0(Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final I()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/d1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/d1;->I()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    return v1
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/d1;->E:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/d1;->F:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public final L(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 2
    .line 3
    if-nez v0, :cond_1

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
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "No activity"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 18
    .line 19
    iget p2, p0, Landroidx/fragment/app/d1;->s:I

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput p1, p0, Landroidx/fragment/app/d1;->s:I

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 27
    .line 28
    iget-object p2, p1, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p1, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/fragment/app/k1;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/fragment/app/k1;->i()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroidx/fragment/app/k1;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/fragment/app/k1;->i()V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 88
    .line 89
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 90
    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 100
    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    iget-object v2, p1, Landroidx/fragment/app/l1;->c:Ljava/util/HashMap;

    .line 104
    .line 105
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_6

    .line 112
    .line 113
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/fragment/app/k1;->l()Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/l1;->i(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-virtual {p1, v0}, Landroidx/fragment/app/l1;->h(Landroidx/fragment/app/k1;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->b0()V

    .line 127
    .line 128
    .line 129
    iget-boolean p1, p0, Landroidx/fragment/app/d1;->D:Z

    .line 130
    .line 131
    if-eqz p1, :cond_8

    .line 132
    .line 133
    iget-object p1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 134
    .line 135
    if-eqz p1, :cond_8

    .line 136
    .line 137
    iget p2, p0, Landroidx/fragment/app/d1;->s:I

    .line 138
    .line 139
    const/4 v0, 0x7

    .line 140
    if-ne p2, v0, :cond_8

    .line 141
    .line 142
    check-cast p1, Landroidx/fragment/app/i0;

    .line 143
    .line 144
    iget-object p1, p1, Landroidx/fragment/app/i0;->e:Lq/i;

    .line 145
    .line 146
    invoke-virtual {p1}, Lq/i;->invalidateOptionsMenu()V

    .line 147
    .line 148
    .line 149
    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Landroidx/fragment/app/d1;->D:Z

    .line 151
    .line 152
    :cond_8
    return-void
.end method

.method public final M()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/d1;->E:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/d1;->F:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 12
    .line 13
    iput-boolean v0, v1, Landroidx/fragment/app/g1;->i:Z

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method

.method public final N()Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/d1;->O(II)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final O(II)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/d1;->y(Z)Z

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/d1;->x(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/fragment/app/d1;->w:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/d1;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/d1;->N()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/d1;->I:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/fragment/app/d1;->J:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, v1, v2, p1, p2}, Landroidx/fragment/app/d1;->P(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iput-boolean v0, p0, Landroidx/fragment/app/d1;->b:Z

    .line 37
    .line 38
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/d1;->I:Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/fragment/app/d1;->J:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/d1;->S(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d0()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->u()V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 61
    .line 62
    iget-object p2, p2, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p2, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    return p1
.end method

.method public final P(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p4, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    const/4 p4, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p4, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_a

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_5

    .line 21
    :cond_1
    if-gez p3, :cond_3

    .line 22
    .line 23
    if-eqz p4, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    goto :goto_5

    .line 27
    :cond_2
    iget-object p3, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    add-int/lit8 v3, p3, -0x1

    .line 34
    .line 35
    goto :goto_5

    .line 36
    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v2, v0

    .line 43
    :goto_1
    if-ltz v2, :cond_5

    .line 44
    .line 45
    iget-object v4, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroidx/fragment/app/a;

    .line 52
    .line 53
    if-ltz p3, :cond_4

    .line 54
    .line 55
    iget v4, v4, Landroidx/fragment/app/a;->r:I

    .line 56
    .line 57
    if-ne p3, v4, :cond_4

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    :goto_2
    if-gez v2, :cond_7

    .line 64
    .line 65
    :cond_6
    :goto_3
    move v3, v2

    .line 66
    goto :goto_5

    .line 67
    :cond_7
    if-eqz p4, :cond_8

    .line 68
    .line 69
    :goto_4
    if-lez v2, :cond_6

    .line 70
    .line 71
    iget-object p4, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 72
    .line 73
    add-int/lit8 v3, v2, -0x1

    .line 74
    .line 75
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    check-cast p4, Landroidx/fragment/app/a;

    .line 80
    .line 81
    if-ltz p3, :cond_6

    .line 82
    .line 83
    iget p4, p4, Landroidx/fragment/app/a;->r:I

    .line 84
    .line 85
    if-ne p3, p4, :cond_6

    .line 86
    .line 87
    add-int/lit8 v2, v2, -0x1

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_8
    iget-object p3, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    sub-int/2addr p3, v0

    .line 97
    if-ne v2, p3, :cond_9

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_a
    :goto_5
    if-gez v3, :cond_b

    .line 104
    .line 105
    return v1

    .line 106
    :cond_b
    iget-object p3, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    sub-int/2addr p3, v0

    .line 113
    :goto_6
    if-lt p3, v3, :cond_c

    .line 114
    .line 115
    iget-object p4, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    check-cast p4, Landroidx/fragment/app/a;

    .line 122
    .line 123
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 p3, p3, -0x1

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_c
    return v0
.end method

.method public final Q(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "Fragment "

    .line 14
    .line 15
    const-string v0, " is not currently in the FragmentManager"

    .line 16
    .line 17
    invoke-static {p2, p3, v0}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->c0(Ljava/lang/IllegalStateException;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    throw p1
.end method

.method public final R(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    if-nez v0, :cond_4

    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 28
    .line 29
    iget-object v1, v0, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 40
    .line 41
    invoke-static {p1}, Landroidx/fragment/app/d1;->H(Landroidx/fragment/app/Fragment;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iput-boolean v1, p0, Landroidx/fragment/app/d1;->D:Z

    .line 49
    .line 50
    :cond_3
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->a0(Landroidx/fragment/app/Fragment;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p1
.end method

.method public final S(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

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
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/fragment/app/a;

    .line 31
    .line 32
    iget-boolean v3, v3, Landroidx/fragment/app/a;->o:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    if-eq v2, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/d1;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    :goto_1
    if-ge v2, v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/fragment/app/a;

    .line 74
    .line 75
    iget-boolean v3, v3, Landroidx/fragment/app/a;->o:Z

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/d1;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 86
    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-eq v2, v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/d1;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 93
    .line 94
    .line 95
    :cond_5
    return-void

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string p2, "Internal error with the back stack records"

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :goto_2
    throw p1

    .line 105
    :goto_3
    goto :goto_2
.end method

.method public final T(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/String;

    .line 24
    .line 25
    const-string v4, "result_"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    iget-object v5, v0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 40
    .line 41
    iget-object v5, v5, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/j0;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x7

    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v5, v0, Landroidx/fragment/app/d1;->k:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/lang/String;

    .line 85
    .line 86
    const-string v5, "fragment_"

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    iget-object v6, v0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 101
    .line 102
    iget-object v6, v6, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/j0;

    .line 103
    .line 104
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 109
    .line 110
    .line 111
    const/16 v6, 0x9

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-object v3, v0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 122
    .line 123
    iget-object v4, v3, Landroidx/fragment/app/l1;->c:Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 129
    .line 130
    .line 131
    const-string v2, "state"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Landroidx/fragment/app/f1;

    .line 138
    .line 139
    if-nez v1, :cond_4

    .line 140
    .line 141
    return-void

    .line 142
    :cond_4
    iget-object v4, v3, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 145
    .line 146
    .line 147
    iget-object v5, v1, Landroidx/fragment/app/f1;->a:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    const/4 v7, 0x2

    .line 158
    iget-object v8, v0, Landroidx/fragment/app/d1;->l:Landroidx/fragment/app/k0;

    .line 159
    .line 160
    const/4 v9, 0x0

    .line 161
    const-string v10, "FragmentManager"

    .line 162
    .line 163
    if-eqz v6, :cond_9

    .line 164
    .line 165
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    check-cast v6, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v3, v6, v9}, Landroidx/fragment/app/l1;->i(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    if-eqz v6, :cond_5

    .line 176
    .line 177
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    check-cast v9, Landroidx/fragment/app/i1;

    .line 182
    .line 183
    iget-object v11, v0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 184
    .line 185
    iget-object v9, v9, Landroidx/fragment/app/i1;->b:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v11, v11, Landroidx/fragment/app/g1;->d:Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 194
    .line 195
    if-eqz v9, :cond_7

    .line 196
    .line 197
    invoke-static {v10, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-eqz v11, :cond_6

    .line 202
    .line 203
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    :cond_6
    new-instance v11, Landroidx/fragment/app/k1;

    .line 207
    .line 208
    invoke-direct {v11, v8, v3, v9, v6}, Landroidx/fragment/app/k1;-><init>(Landroidx/fragment/app/k0;Landroidx/fragment/app/l1;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_7
    new-instance v8, Landroidx/fragment/app/k1;

    .line 213
    .line 214
    iget-object v9, v0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 215
    .line 216
    iget-object v9, v9, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/j0;

    .line 217
    .line 218
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 219
    .line 220
    .line 221
    move-result-object v14

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/d1;->E()Landroidx/fragment/app/w0;

    .line 223
    .line 224
    .line 225
    move-result-object v15

    .line 226
    iget-object v12, v0, Landroidx/fragment/app/d1;->l:Landroidx/fragment/app/k0;

    .line 227
    .line 228
    iget-object v13, v0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 229
    .line 230
    move-object v11, v8

    .line 231
    move-object/from16 v16, v6

    .line 232
    .line 233
    invoke-direct/range {v11 .. v16}, Landroidx/fragment/app/k1;-><init>(Landroidx/fragment/app/k0;Landroidx/fragment/app/l1;Ljava/lang/ClassLoader;Landroidx/fragment/app/w0;Landroid/os/Bundle;)V

    .line 234
    .line 235
    .line 236
    :goto_3
    iget-object v8, v11, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 237
    .line 238
    iput-object v6, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 239
    .line 240
    iput-object v0, v8, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 241
    .line 242
    invoke-static {v10, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_8

    .line 247
    .line 248
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    :cond_8
    iget-object v6, v0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 252
    .line 253
    iget-object v6, v6, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/j0;

    .line 254
    .line 255
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-virtual {v11, v6}, Landroidx/fragment/app/k1;->j(Ljava/lang/ClassLoader;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v11}, Landroidx/fragment/app/l1;->g(Landroidx/fragment/app/k1;)V

    .line 263
    .line 264
    .line 265
    iget v6, v0, Landroidx/fragment/app/d1;->s:I

    .line 266
    .line 267
    iput v6, v11, Landroidx/fragment/app/k1;->e:I

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_9
    iget-object v2, v0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    new-instance v5, Ljava/util/ArrayList;

    .line 276
    .line 277
    iget-object v2, v2, Landroidx/fragment/app/g1;->d:Ljava/util/HashMap;

    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    const/4 v6, 0x1

    .line 295
    if-eqz v5, :cond_c

    .line 296
    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 302
    .line 303
    iget-object v11, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    if-eqz v11, :cond_a

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_a
    invoke-static {v10, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-eqz v11, :cond_b

    .line 317
    .line 318
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    iget-object v11, v1, Landroidx/fragment/app/f1;->a:Ljava/util/ArrayList;

    .line 322
    .line 323
    if-eqz v11, :cond_b

    .line 324
    .line 325
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    :cond_b
    iget-object v11, v0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 329
    .line 330
    invoke-virtual {v11, v5}, Landroidx/fragment/app/g1;->e(Landroidx/fragment/app/Fragment;)V

    .line 331
    .line 332
    .line 333
    iput-object v0, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 334
    .line 335
    new-instance v11, Landroidx/fragment/app/k1;

    .line 336
    .line 337
    invoke-direct {v11, v8, v3, v5}, Landroidx/fragment/app/k1;-><init>(Landroidx/fragment/app/k0;Landroidx/fragment/app/l1;Landroidx/fragment/app/Fragment;)V

    .line 338
    .line 339
    .line 340
    iput v6, v11, Landroidx/fragment/app/k1;->e:I

    .line 341
    .line 342
    invoke-virtual {v11}, Landroidx/fragment/app/k1;->i()V

    .line 343
    .line 344
    .line 345
    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 346
    .line 347
    invoke-virtual {v11}, Landroidx/fragment/app/k1;->i()V

    .line 348
    .line 349
    .line 350
    goto :goto_4

    .line 351
    :cond_c
    iget-object v2, v1, Landroidx/fragment/app/f1;->b:Ljava/util/ArrayList;

    .line 352
    .line 353
    iget-object v4, v3, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 356
    .line 357
    .line 358
    if-eqz v2, :cond_f

    .line 359
    .line 360
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_f

    .line 369
    .line 370
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    check-cast v4, Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v3, v4}, Landroidx/fragment/app/l1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    if-eqz v5, :cond_e

    .line 381
    .line 382
    invoke-static {v10, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    if-eqz v4, :cond_d

    .line 387
    .line 388
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    :cond_d
    invoke-virtual {v3, v5}, Landroidx/fragment/app/l1;->a(Landroidx/fragment/app/Fragment;)V

    .line 392
    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 396
    .line 397
    const-string v2, "No instantiated fragment for ("

    .line 398
    .line 399
    const-string v3, ")"

    .line 400
    .line 401
    invoke-static {v2, v4, v3}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw v1

    .line 409
    :cond_f
    iget-object v2, v1, Landroidx/fragment/app/f1;->c:[Landroidx/fragment/app/b;

    .line 410
    .line 411
    if-eqz v2, :cond_17

    .line 412
    .line 413
    new-instance v2, Ljava/util/ArrayList;

    .line 414
    .line 415
    iget-object v5, v1, Landroidx/fragment/app/f1;->c:[Landroidx/fragment/app/b;

    .line 416
    .line 417
    array-length v5, v5

    .line 418
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    .line 420
    .line 421
    iput-object v2, v0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 422
    .line 423
    const/4 v2, 0x0

    .line 424
    :goto_6
    iget-object v5, v1, Landroidx/fragment/app/f1;->c:[Landroidx/fragment/app/b;

    .line 425
    .line 426
    array-length v8, v5

    .line 427
    if-ge v2, v8, :cond_16

    .line 428
    .line 429
    aget-object v5, v5, v2

    .line 430
    .line 431
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    new-instance v8, Landroidx/fragment/app/a;

    .line 435
    .line 436
    invoke-direct {v8, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 437
    .line 438
    .line 439
    const/4 v9, 0x0

    .line 440
    const/4 v11, 0x0

    .line 441
    :goto_7
    iget-object v12, v5, Landroidx/fragment/app/b;->a:[I

    .line 442
    .line 443
    array-length v13, v12

    .line 444
    if-ge v9, v13, :cond_12

    .line 445
    .line 446
    new-instance v13, Landroidx/fragment/app/m1;

    .line 447
    .line 448
    invoke-direct {v13}, Landroidx/fragment/app/m1;-><init>()V

    .line 449
    .line 450
    .line 451
    add-int/lit8 v14, v9, 0x1

    .line 452
    .line 453
    aget v15, v12, v9

    .line 454
    .line 455
    iput v15, v13, Landroidx/fragment/app/m1;->a:I

    .line 456
    .line 457
    invoke-static {v10, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 458
    .line 459
    .line 460
    move-result v15

    .line 461
    if-eqz v15, :cond_10

    .line 462
    .line 463
    invoke-virtual {v8}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    aget v15, v12, v14

    .line 467
    .line 468
    :cond_10
    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    .line 469
    .line 470
    .line 471
    move-result-object v15

    .line 472
    iget-object v4, v5, Landroidx/fragment/app/b;->c:[I

    .line 473
    .line 474
    aget v4, v4, v11

    .line 475
    .line 476
    aget-object v4, v15, v4

    .line 477
    .line 478
    iput-object v4, v13, Landroidx/fragment/app/m1;->h:Landroidx/lifecycle/n;

    .line 479
    .line 480
    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    iget-object v15, v5, Landroidx/fragment/app/b;->d:[I

    .line 485
    .line 486
    aget v15, v15, v11

    .line 487
    .line 488
    aget-object v4, v4, v15

    .line 489
    .line 490
    iput-object v4, v13, Landroidx/fragment/app/m1;->i:Landroidx/lifecycle/n;

    .line 491
    .line 492
    add-int/lit8 v4, v9, 0x2

    .line 493
    .line 494
    aget v14, v12, v14

    .line 495
    .line 496
    if-eqz v14, :cond_11

    .line 497
    .line 498
    const/4 v14, 0x1

    .line 499
    goto :goto_8

    .line 500
    :cond_11
    const/4 v14, 0x0

    .line 501
    :goto_8
    iput-boolean v14, v13, Landroidx/fragment/app/m1;->c:Z

    .line 502
    .line 503
    add-int/lit8 v14, v9, 0x3

    .line 504
    .line 505
    aget v4, v12, v4

    .line 506
    .line 507
    iput v4, v13, Landroidx/fragment/app/m1;->d:I

    .line 508
    .line 509
    add-int/lit8 v15, v9, 0x4

    .line 510
    .line 511
    aget v14, v12, v14

    .line 512
    .line 513
    iput v14, v13, Landroidx/fragment/app/m1;->e:I

    .line 514
    .line 515
    add-int/lit8 v16, v9, 0x5

    .line 516
    .line 517
    aget v15, v12, v15

    .line 518
    .line 519
    iput v15, v13, Landroidx/fragment/app/m1;->f:I

    .line 520
    .line 521
    add-int/lit8 v9, v9, 0x6

    .line 522
    .line 523
    aget v12, v12, v16

    .line 524
    .line 525
    iput v12, v13, Landroidx/fragment/app/m1;->g:I

    .line 526
    .line 527
    iput v4, v8, Landroidx/fragment/app/a;->b:I

    .line 528
    .line 529
    iput v14, v8, Landroidx/fragment/app/a;->c:I

    .line 530
    .line 531
    iput v15, v8, Landroidx/fragment/app/a;->d:I

    .line 532
    .line 533
    iput v12, v8, Landroidx/fragment/app/a;->e:I

    .line 534
    .line 535
    invoke-virtual {v8, v13}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/m1;)V

    .line 536
    .line 537
    .line 538
    add-int/lit8 v11, v11, 0x1

    .line 539
    .line 540
    goto :goto_7

    .line 541
    :cond_12
    iget v4, v5, Landroidx/fragment/app/b;->e:I

    .line 542
    .line 543
    iput v4, v8, Landroidx/fragment/app/a;->f:I

    .line 544
    .line 545
    iget-object v4, v5, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    .line 546
    .line 547
    iput-object v4, v8, Landroidx/fragment/app/a;->h:Ljava/lang/String;

    .line 548
    .line 549
    iput-boolean v6, v8, Landroidx/fragment/app/a;->g:Z

    .line 550
    .line 551
    iget v4, v5, Landroidx/fragment/app/b;->h:I

    .line 552
    .line 553
    iput v4, v8, Landroidx/fragment/app/a;->i:I

    .line 554
    .line 555
    iget-object v4, v5, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    .line 556
    .line 557
    iput-object v4, v8, Landroidx/fragment/app/a;->j:Ljava/lang/CharSequence;

    .line 558
    .line 559
    iget v4, v5, Landroidx/fragment/app/b;->j:I

    .line 560
    .line 561
    iput v4, v8, Landroidx/fragment/app/a;->k:I

    .line 562
    .line 563
    iget-object v4, v5, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    .line 564
    .line 565
    iput-object v4, v8, Landroidx/fragment/app/a;->l:Ljava/lang/CharSequence;

    .line 566
    .line 567
    iget-object v4, v5, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    .line 568
    .line 569
    iput-object v4, v8, Landroidx/fragment/app/a;->m:Ljava/util/ArrayList;

    .line 570
    .line 571
    iget-object v4, v5, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 572
    .line 573
    iput-object v4, v8, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    .line 574
    .line 575
    iget-boolean v4, v5, Landroidx/fragment/app/b;->n:Z

    .line 576
    .line 577
    iput-boolean v4, v8, Landroidx/fragment/app/a;->o:Z

    .line 578
    .line 579
    iget v4, v5, Landroidx/fragment/app/b;->g:I

    .line 580
    .line 581
    iput v4, v8, Landroidx/fragment/app/a;->r:I

    .line 582
    .line 583
    const/4 v4, 0x0

    .line 584
    :goto_9
    iget-object v9, v5, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 585
    .line 586
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 587
    .line 588
    .line 589
    move-result v11

    .line 590
    if-ge v4, v11, :cond_14

    .line 591
    .line 592
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v9

    .line 596
    check-cast v9, Ljava/lang/String;

    .line 597
    .line 598
    if-eqz v9, :cond_13

    .line 599
    .line 600
    iget-object v11, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 601
    .line 602
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v11

    .line 606
    check-cast v11, Landroidx/fragment/app/m1;

    .line 607
    .line 608
    invoke-virtual {v3, v9}, Landroidx/fragment/app/l1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 609
    .line 610
    .line 611
    move-result-object v9

    .line 612
    iput-object v9, v11, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    .line 613
    .line 614
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 615
    .line 616
    goto :goto_9

    .line 617
    :cond_14
    invoke-virtual {v8, v6}, Landroidx/fragment/app/a;->c(I)V

    .line 618
    .line 619
    .line 620
    invoke-static {v10, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    if-eqz v4, :cond_15

    .line 625
    .line 626
    invoke-virtual {v8}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    new-instance v4, Landroidx/fragment/app/x1;

    .line 630
    .line 631
    invoke-direct {v4}, Landroidx/fragment/app/x1;-><init>()V

    .line 632
    .line 633
    .line 634
    new-instance v5, Ljava/io/PrintWriter;

    .line 635
    .line 636
    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 637
    .line 638
    .line 639
    const-string v4, "  "

    .line 640
    .line 641
    const/4 v11, 0x0

    .line 642
    invoke-virtual {v8, v4, v5, v11}, Landroidx/fragment/app/a;->g(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 646
    .line 647
    .line 648
    goto :goto_a

    .line 649
    :cond_15
    const/4 v11, 0x0

    .line 650
    :goto_a
    iget-object v4, v0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 651
    .line 652
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    add-int/lit8 v2, v2, 0x1

    .line 656
    .line 657
    goto/16 :goto_6

    .line 658
    .line 659
    :cond_16
    const/4 v11, 0x0

    .line 660
    goto :goto_b

    .line 661
    :cond_17
    const/4 v11, 0x0

    .line 662
    iput-object v9, v0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 663
    .line 664
    :goto_b
    iget-object v2, v0, Landroidx/fragment/app/d1;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 665
    .line 666
    iget v4, v1, Landroidx/fragment/app/f1;->d:I

    .line 667
    .line 668
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 669
    .line 670
    .line 671
    iget-object v2, v1, Landroidx/fragment/app/f1;->e:Ljava/lang/String;

    .line 672
    .line 673
    if-eqz v2, :cond_18

    .line 674
    .line 675
    invoke-virtual {v3, v2}, Landroidx/fragment/app/l1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    iput-object v2, v0, Landroidx/fragment/app/d1;->w:Landroidx/fragment/app/Fragment;

    .line 680
    .line 681
    invoke-virtual {v0, v2}, Landroidx/fragment/app/d1;->q(Landroidx/fragment/app/Fragment;)V

    .line 682
    .line 683
    .line 684
    :cond_18
    iget-object v2, v1, Landroidx/fragment/app/f1;->f:Ljava/util/ArrayList;

    .line 685
    .line 686
    if-eqz v2, :cond_19

    .line 687
    .line 688
    const/4 v4, 0x0

    .line 689
    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 690
    .line 691
    .line 692
    move-result v3

    .line 693
    if-ge v4, v3, :cond_19

    .line 694
    .line 695
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    check-cast v3, Ljava/lang/String;

    .line 700
    .line 701
    iget-object v5, v1, Landroidx/fragment/app/f1;->g:Ljava/util/ArrayList;

    .line 702
    .line 703
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v5

    .line 707
    check-cast v5, Landroidx/fragment/app/c;

    .line 708
    .line 709
    iget-object v6, v0, Landroidx/fragment/app/d1;->j:Ljava/util/Map;

    .line 710
    .line 711
    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    add-int/lit8 v4, v4, 0x1

    .line 715
    .line 716
    goto :goto_c

    .line 717
    :cond_19
    new-instance v2, Ljava/util/ArrayDeque;

    .line 718
    .line 719
    iget-object v1, v1, Landroidx/fragment/app/f1;->h:Ljava/util/ArrayList;

    .line 720
    .line 721
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 722
    .line 723
    .line 724
    iput-object v2, v0, Landroidx/fragment/app/d1;->C:Ljava/util/ArrayDeque;

    .line 725
    .line 726
    return-void
.end method

.method public final U()Landroid/os/Bundle;
    .locals 11

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->e()Ljava/util/HashSet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/fragment/app/n;

    .line 26
    .line 27
    iget-boolean v4, v2, Landroidx/fragment/app/n;->e:Z

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iput-boolean v3, v2, Landroidx/fragment/app/n;->e:Z

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/fragment/app/n;->d()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->e()Ljava/util/HashSet;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroidx/fragment/app/n;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/fragment/app/n;->g()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0, v1}, Landroidx/fragment/app/d1;->y(Z)Z

    .line 63
    .line 64
    .line 65
    iput-boolean v1, p0, Landroidx/fragment/app/d1;->E:Z

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 68
    .line 69
    iput-boolean v1, v2, Landroidx/fragment/app/g1;->i:Z

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    .line 77
    .line 78
    iget-object v4, v1, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/4 v6, 0x2

    .line 100
    if-eqz v5, :cond_4

    .line 101
    .line 102
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Landroidx/fragment/app/k1;

    .line 107
    .line 108
    if-eqz v5, :cond_3

    .line 109
    .line 110
    iget-object v7, v5, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 111
    .line 112
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroidx/fragment/app/k1;->l()Landroid/os/Bundle;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v1, v8, v5}, Landroidx/fragment/app/l1;->i(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 119
    .line 120
    .line 121
    iget-object v5, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    const-string v5, "FragmentManager"

    .line 127
    .line 128
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_3

    .line 133
    .line 134
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    iget-object v5, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 138
    .line 139
    if-eqz v5, :cond_3

    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 146
    .line 147
    iget-object v1, v1, Landroidx/fragment/app/l1;->c:Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_5

    .line 154
    .line 155
    goto/16 :goto_8

    .line 156
    .line 157
    :cond_5
    iget-object v4, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 158
    .line 159
    iget-object v5, v4, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 160
    .line 161
    monitor-enter v5

    .line 162
    :try_start_0
    iget-object v7, v4, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    const/4 v8, 0x0

    .line 169
    if-eqz v7, :cond_6

    .line 170
    .line 171
    monitor-exit v5

    .line 172
    move-object v7, v8

    .line 173
    goto :goto_4

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    goto/16 :goto_9

    .line 176
    .line 177
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    .line 178
    .line 179
    iget-object v9, v4, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .line 187
    .line 188
    iget-object v4, v4, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_8

    .line 199
    .line 200
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 205
    .line 206
    iget-object v10, v9, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    const-string v10, "FragmentManager"

    .line 212
    .line 213
    invoke-static {v10, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    if-eqz v10, :cond_7

    .line 218
    .line 219
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_8
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :goto_4
    iget-object v4, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 225
    .line 226
    if-eqz v4, :cond_a

    .line 227
    .line 228
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-lez v4, :cond_a

    .line 233
    .line 234
    new-array v8, v4, [Landroidx/fragment/app/b;

    .line 235
    .line 236
    :goto_5
    if-ge v3, v4, :cond_a

    .line 237
    .line 238
    new-instance v5, Landroidx/fragment/app/b;

    .line 239
    .line 240
    iget-object v9, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    check-cast v9, Landroidx/fragment/app/a;

    .line 247
    .line 248
    invoke-direct {v5, v9}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    .line 249
    .line 250
    .line 251
    aput-object v5, v8, v3

    .line 252
    .line 253
    const-string v5, "FragmentManager"

    .line 254
    .line 255
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_9

    .line 260
    .line 261
    iget-object v5, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    if-eqz v5, :cond_9

    .line 268
    .line 269
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_a
    new-instance v3, Landroidx/fragment/app/f1;

    .line 276
    .line 277
    invoke-direct {v3}, Landroidx/fragment/app/f1;-><init>()V

    .line 278
    .line 279
    .line 280
    iput-object v2, v3, Landroidx/fragment/app/f1;->a:Ljava/util/ArrayList;

    .line 281
    .line 282
    iput-object v7, v3, Landroidx/fragment/app/f1;->b:Ljava/util/ArrayList;

    .line 283
    .line 284
    iput-object v8, v3, Landroidx/fragment/app/f1;->c:[Landroidx/fragment/app/b;

    .line 285
    .line 286
    iget-object v2, p0, Landroidx/fragment/app/d1;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    iput v2, v3, Landroidx/fragment/app/f1;->d:I

    .line 293
    .line 294
    iget-object v2, p0, Landroidx/fragment/app/d1;->w:Landroidx/fragment/app/Fragment;

    .line 295
    .line 296
    if-eqz v2, :cond_b

    .line 297
    .line 298
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 299
    .line 300
    iput-object v2, v3, Landroidx/fragment/app/f1;->e:Ljava/lang/String;

    .line 301
    .line 302
    :cond_b
    iget-object v2, v3, Landroidx/fragment/app/f1;->f:Ljava/util/ArrayList;

    .line 303
    .line 304
    iget-object v4, p0, Landroidx/fragment/app/d1;->j:Ljava/util/Map;

    .line 305
    .line 306
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 311
    .line 312
    .line 313
    iget-object v2, v3, Landroidx/fragment/app/f1;->g:Ljava/util/ArrayList;

    .line 314
    .line 315
    iget-object v4, p0, Landroidx/fragment/app/d1;->j:Ljava/util/Map;

    .line 316
    .line 317
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    .line 323
    .line 324
    new-instance v2, Ljava/util/ArrayList;

    .line 325
    .line 326
    iget-object v4, p0, Landroidx/fragment/app/d1;->C:Ljava/util/ArrayDeque;

    .line 327
    .line 328
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 329
    .line 330
    .line 331
    iput-object v2, v3, Landroidx/fragment/app/f1;->h:Ljava/util/ArrayList;

    .line 332
    .line 333
    const-string v2, "state"

    .line 334
    .line 335
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 336
    .line 337
    .line 338
    iget-object v2, p0, Landroidx/fragment/app/d1;->k:Ljava/util/Map;

    .line 339
    .line 340
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-eqz v3, :cond_c

    .line 353
    .line 354
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    check-cast v3, Ljava/lang/String;

    .line 359
    .line 360
    const-string v4, "result_"

    .line 361
    .line 362
    invoke-static {v4, v3}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    iget-object v5, p0, Landroidx/fragment/app/d1;->k:Ljava/util/Map;

    .line 367
    .line 368
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    check-cast v3, Landroid/os/Bundle;

    .line 373
    .line 374
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 375
    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_c
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-eqz v3, :cond_d

    .line 391
    .line 392
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Ljava/lang/String;

    .line 397
    .line 398
    const-string v4, "fragment_"

    .line 399
    .line 400
    invoke-static {v4, v3}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    check-cast v3, Landroid/os/Bundle;

    .line 409
    .line 410
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 411
    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_d
    :goto_8
    return-object v0

    .line 415
    :goto_9
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    goto :goto_b

    .line 417
    :goto_a
    throw v0

    .line 418
    :goto_b
    goto :goto_a
.end method

.method public final V(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/e0;
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/k1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object p1, v0, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 25
    .line 26
    iget p1, p1, Landroidx/fragment/app/Fragment;->mState:I

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    if-le p1, v2, :cond_0

    .line 30
    .line 31
    new-instance v1, Landroidx/fragment/app/e0;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/k1;->l()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v1, p1}, Landroidx/fragment/app/e0;-><init>(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object v1

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v2, "Fragment "

    .line 44
    .line 45
    const-string v3, " is not currently in the FragmentManager"

    .line 46
    .line 47
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/fragment/app/d1;->c0(Ljava/lang/IllegalStateException;)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public final W()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/fragment/app/o0;->c:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/fragment/app/d1;->M:Landroidx/fragment/app/o;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 23
    .line 24
    iget-object v1, v1, Landroidx/fragment/app/o0;->c:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/fragment/app/d1;->M:Landroidx/fragment/app/o;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d0()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public final X(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->D(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    .line 12
    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final Y(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/o0;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 20
    .line 21
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/n;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Fragment "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final Z(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/o0;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 22
    .line 23
    if-ne v0, p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Fragment "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->w:Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    iput-object p1, p0, Landroidx/fragment/app/d1;->w:Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/fragment/app/d1;->q(Landroidx/fragment/app/Fragment;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroidx/fragment/app/d1;->w:Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->q(Landroidx/fragment/app/Fragment;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k1;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, v0}, Ll1/d;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "FragmentManager"

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k1;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l1;->g(Landroidx/fragment/app/k1;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroidx/fragment/app/l1;->a(Landroidx/fragment/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 40
    .line 41
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 46
    .line 47
    :cond_2
    invoke-static {p1}, Landroidx/fragment/app/d1;->H(Landroidx/fragment/app/Fragment;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Landroidx/fragment/app/d1;->D:Z

    .line 55
    .line 56
    :cond_3
    return-object v0
.end method

.method public final a0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->D(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, v2

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v1

    .line 26
    if-lez v2, :cond_1

    .line 27
    .line 28
    const v1, 0x7f0b0628

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public final b(Landroidx/fragment/app/o0;Landroidx/fragment/app/m0;Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 2
    .line 3
    if-nez v0, :cond_11

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/fragment/app/d1;->u:Landroidx/fragment/app/m0;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/fragment/app/d1;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/x0;

    .line 16
    .line 17
    invoke-direct {v0, p3}, Landroidx/fragment/app/x0;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/h1;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    check-cast v0, Landroidx/fragment/app/h1;

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d0()V

    .line 39
    .line 40
    .line 41
    :cond_2
    instance-of p2, p1, Landroidx/activity/x;

    .line 42
    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    move-object p2, p1

    .line 46
    check-cast p2, Landroidx/activity/x;

    .line 47
    .line 48
    invoke-interface {p2}, Landroidx/activity/x;->a()Landroidx/activity/w;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Landroidx/fragment/app/d1;->g:Landroidx/activity/w;

    .line 53
    .line 54
    if-eqz p3, :cond_3

    .line 55
    .line 56
    move-object p2, p3

    .line 57
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/d1;->h:Landroidx/fragment/app/u0;

    .line 58
    .line 59
    invoke-virtual {v0, p2, v1}, Landroidx/activity/w;->a(Landroidx/lifecycle/t;Landroidx/fragment/app/u0;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    if-eqz p3, :cond_6

    .line 63
    .line 64
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/d1;

    .line 65
    .line 66
    iget-object p1, p1, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 67
    .line 68
    iget-object p2, p1, Landroidx/fragment/app/g1;->e:Ljava/util/HashMap;

    .line 69
    .line 70
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroidx/fragment/app/g1;

    .line 77
    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    new-instance v0, Landroidx/fragment/app/g1;

    .line 81
    .line 82
    iget-boolean p1, p1, Landroidx/fragment/app/g1;->g:Z

    .line 83
    .line 84
    invoke-direct {v0, p1}, Landroidx/fragment/app/g1;-><init>(Z)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_5
    iput-object v0, p0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    instance-of p2, p1, Landroidx/lifecycle/w0;

    .line 96
    .line 97
    if-eqz p2, :cond_8

    .line 98
    .line 99
    check-cast p1, Landroidx/lifecycle/w0;

    .line 100
    .line 101
    invoke-interface {p1}, Landroidx/lifecycle/w0;->getViewModelStore()Landroidx/lifecycle/v0;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance p2, Lv3/f;

    .line 106
    .line 107
    sget-object v0, Landroidx/fragment/app/g1;->j:Lm7/e;

    .line 108
    .line 109
    invoke-direct {p2, p1, v0}, Lv3/f;-><init>(Landroidx/lifecycle/v0;Landroidx/lifecycle/u0;)V

    .line 110
    .line 111
    .line 112
    const-class p1, Landroidx/fragment/app/g1;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p2, p1, v0}, Lv3/f;->w(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/r0;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Landroidx/fragment/app/g1;

    .line 131
    .line 132
    iput-object p1, p0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    const-string p2, "Local and anonymous classes can not be ViewModels"

    .line 138
    .line 139
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_8
    new-instance p1, Landroidx/fragment/app/g1;

    .line 144
    .line 145
    const/4 p2, 0x0

    .line 146
    invoke-direct {p1, p2}, Landroidx/fragment/app/g1;-><init>(Z)V

    .line 147
    .line 148
    .line 149
    iput-object p1, p0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 150
    .line 151
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->K()Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    iput-boolean p2, p1, Landroidx/fragment/app/g1;->i:Z

    .line 158
    .line 159
    iget-object p1, p0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 160
    .line 161
    iget-object p2, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 162
    .line 163
    iput-object p1, p2, Landroidx/fragment/app/l1;->d:Landroidx/fragment/app/g1;

    .line 164
    .line 165
    iget-object p1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 166
    .line 167
    instance-of p2, p1, Lb4/g;

    .line 168
    .line 169
    if-eqz p2, :cond_9

    .line 170
    .line 171
    if-nez p3, :cond_9

    .line 172
    .line 173
    check-cast p1, Lb4/g;

    .line 174
    .line 175
    invoke-interface {p1}, Lb4/g;->getSavedStateRegistry()Lb4/e;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance p2, Landroidx/fragment/app/f0;

    .line 180
    .line 181
    const/4 v0, 0x1

    .line 182
    invoke-direct {p2, v0, p0}, Landroidx/fragment/app/f0;-><init>(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    const-string v0, "android:support:fragments"

    .line 186
    .line 187
    invoke-virtual {p1, v0, p2}, Lb4/e;->c(Ljava/lang/String;Lb4/d;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Lb4/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-eqz p1, :cond_9

    .line 195
    .line 196
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->T(Landroid/os/Bundle;)V

    .line 197
    .line 198
    .line 199
    :cond_9
    iget-object p1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 200
    .line 201
    instance-of p2, p1, Landroidx/activity/result/h;

    .line 202
    .line 203
    if-eqz p2, :cond_b

    .line 204
    .line 205
    check-cast p1, Landroidx/activity/result/h;

    .line 206
    .line 207
    invoke-interface {p1}, Landroidx/activity/result/h;->e()Landroidx/activity/result/g;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-eqz p3, :cond_a

    .line 212
    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 219
    .line 220
    const-string v1, ":"

    .line 221
    .line 222
    invoke-static {v0, v1, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    goto :goto_2

    .line 227
    :cond_a
    const-string p2, ""

    .line 228
    .line 229
    :goto_2
    const-string v0, "FragmentManager:"

    .line 230
    .line 231
    invoke-static {v0, p2}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    const-string v0, "StartActivityForResult"

    .line 236
    .line 237
    invoke-static {p2, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    new-instance v1, Landroidx/fragment/app/y0;

    .line 242
    .line 243
    const/4 v2, 0x2

    .line 244
    invoke-direct {v1, v2}, Landroidx/fragment/app/y0;-><init>(I)V

    .line 245
    .line 246
    .line 247
    new-instance v2, Landroidx/fragment/app/t0;

    .line 248
    .line 249
    const/4 v3, 0x1

    .line 250
    invoke-direct {v2, p0, v3}, Landroidx/fragment/app/t0;-><init>(Landroidx/fragment/app/d1;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/g;->d(Ljava/lang/String;Ln/a;Landroidx/activity/result/b;)Landroidx/activity/result/d;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iput-object v0, p0, Landroidx/fragment/app/d1;->z:Landroidx/activity/result/d;

    .line 258
    .line 259
    const-string v0, "StartIntentSenderForResult"

    .line 260
    .line 261
    invoke-static {p2, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    new-instance v1, Landroidx/fragment/app/y0;

    .line 266
    .line 267
    const/4 v2, 0x0

    .line 268
    invoke-direct {v1, v2}, Landroidx/fragment/app/y0;-><init>(I)V

    .line 269
    .line 270
    .line 271
    new-instance v2, Landroidx/fragment/app/t0;

    .line 272
    .line 273
    const/4 v3, 0x2

    .line 274
    invoke-direct {v2, p0, v3}, Landroidx/fragment/app/t0;-><init>(Landroidx/fragment/app/d1;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/g;->d(Ljava/lang/String;Ln/a;Landroidx/activity/result/b;)Landroidx/activity/result/d;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iput-object v0, p0, Landroidx/fragment/app/d1;->A:Landroidx/activity/result/d;

    .line 282
    .line 283
    const-string v0, "RequestPermissions"

    .line 284
    .line 285
    invoke-static {p2, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    new-instance v0, Landroidx/fragment/app/y0;

    .line 290
    .line 291
    const/4 v1, 0x1

    .line 292
    invoke-direct {v0, v1}, Landroidx/fragment/app/y0;-><init>(I)V

    .line 293
    .line 294
    .line 295
    new-instance v1, Landroidx/fragment/app/t0;

    .line 296
    .line 297
    const/4 v2, 0x0

    .line 298
    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/t0;-><init>(Landroidx/fragment/app/d1;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, p2, v0, v1}, Landroidx/activity/result/g;->d(Ljava/lang/String;Ln/a;Landroidx/activity/result/b;)Landroidx/activity/result/d;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    iput-object p1, p0, Landroidx/fragment/app/d1;->B:Landroidx/activity/result/d;

    .line 306
    .line 307
    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 308
    .line 309
    instance-of p2, p1, Ln0/j;

    .line 310
    .line 311
    if-eqz p2, :cond_c

    .line 312
    .line 313
    check-cast p1, Ln0/j;

    .line 314
    .line 315
    iget-object p2, p0, Landroidx/fragment/app/d1;->n:Landroidx/fragment/app/s0;

    .line 316
    .line 317
    invoke-interface {p1, p2}, Ln0/j;->b(Lw0/a;)V

    .line 318
    .line 319
    .line 320
    :cond_c
    iget-object p1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 321
    .line 322
    instance-of p2, p1, Ln0/k;

    .line 323
    .line 324
    if-eqz p2, :cond_d

    .line 325
    .line 326
    check-cast p1, Ln0/k;

    .line 327
    .line 328
    iget-object p2, p0, Landroidx/fragment/app/d1;->o:Landroidx/fragment/app/s0;

    .line 329
    .line 330
    invoke-interface {p1, p2}, Ln0/k;->f(Landroidx/fragment/app/s0;)V

    .line 331
    .line 332
    .line 333
    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 334
    .line 335
    instance-of p2, p1, Lm0/j0;

    .line 336
    .line 337
    if-eqz p2, :cond_e

    .line 338
    .line 339
    check-cast p1, Lm0/j0;

    .line 340
    .line 341
    iget-object p2, p0, Landroidx/fragment/app/d1;->p:Landroidx/fragment/app/s0;

    .line 342
    .line 343
    invoke-interface {p1, p2}, Lm0/j0;->h(Landroidx/fragment/app/s0;)V

    .line 344
    .line 345
    .line 346
    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 347
    .line 348
    instance-of p2, p1, Lm0/k0;

    .line 349
    .line 350
    if-eqz p2, :cond_f

    .line 351
    .line 352
    check-cast p1, Lm0/k0;

    .line 353
    .line 354
    iget-object p2, p0, Landroidx/fragment/app/d1;->q:Landroidx/fragment/app/s0;

    .line 355
    .line 356
    invoke-interface {p1, p2}, Lm0/k0;->g(Landroidx/fragment/app/s0;)V

    .line 357
    .line 358
    .line 359
    :cond_f
    iget-object p1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 360
    .line 361
    instance-of p2, p1, Lx0/q;

    .line 362
    .line 363
    if-eqz p2, :cond_10

    .line 364
    .line 365
    if-nez p3, :cond_10

    .line 366
    .line 367
    check-cast p1, Lx0/q;

    .line 368
    .line 369
    iget-object p2, p0, Landroidx/fragment/app/d1;->r:Landroidx/fragment/app/v0;

    .line 370
    .line 371
    invoke-interface {p1, p2}, Lx0/q;->i(Landroidx/fragment/app/v0;)V

    .line 372
    .line 373
    .line 374
    :cond_10
    return-void

    .line 375
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 376
    .line 377
    const-string p2, "Already attached"

    .line 378
    .line 379
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw p1
.end method

.method public final b0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->d()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/k1;

    .line 22
    .line 23
    iget-object v2, v1, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget-boolean v3, p0, Landroidx/fragment/app/d1;->b:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Landroidx/fragment/app/d1;->H:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/k1;->i()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public final c(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 21
    .line 22
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Landroidx/fragment/app/l1;->a(Landroidx/fragment/app/Fragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/d1;->H(Landroidx/fragment/app/Fragment;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Landroidx/fragment/app/d1;->D:Z

    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final c0(Ljava/lang/IllegalStateException;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/x1;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/fragment/app/x1;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/io/PrintWriter;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const-string v4, "  "

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    .line 23
    .line 24
    check-cast v0, Landroidx/fragment/app/i0;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/fragment/app/i0;->e:Lq/i;

    .line 27
    .line 28
    invoke-virtual {v0, v4, v3, v1, v2}, Landroidx/fragment/app/j0;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, v4, v3, v1, v0}, Landroidx/fragment/app/d1;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    :goto_0
    throw p1
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/d1;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/d1;->J:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/d1;->I:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/d1;->h:Landroidx/fragment/app/u0;

    .line 14
    .line 15
    iput-boolean v2, v1, Landroidx/fragment/app/u0;->a:Z

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/fragment/app/u0;->c:Landroidx/activity/v;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Lte/a;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, p0, Landroidx/fragment/app/d1;->h:Landroidx/fragment/app/u0;

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-lez v1, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    invoke-static {v1}, Landroidx/fragment/app/d1;->J(Landroidx/fragment/app/Fragment;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 v2, 0x0

    .line 54
    :goto_1
    iput-boolean v2, v0, Landroidx/fragment/app/u0;->a:Z

    .line 55
    .line 56
    iget-object v0, v0, Landroidx/fragment/app/u0;->c:Landroidx/activity/v;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-interface {v0}, Lte/a;->b()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void

    .line 64
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw v1
.end method

.method public final e()Ljava/util/HashSet;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/l1;->d()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/k1;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->F()Lgf/g;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "factory"

    .line 39
    .line 40
    invoke-static {v3, v4}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const v3, 0x7f0b02be

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    instance-of v5, v4, Landroidx/fragment/app/n;

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    check-cast v4, Landroidx/fragment/app/n;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v4, Landroidx/fragment/app/n;

    .line 58
    .line 59
    invoke-direct {v4, v2}, Landroidx/fragment/app/n;-><init>(Landroid/view/ViewGroup;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k1;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/k1;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Landroidx/fragment/app/k1;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/fragment/app/d1;->l:Landroidx/fragment/app/k0;

    .line 19
    .line 20
    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/k1;-><init>(Landroidx/fragment/app/k0;Landroidx/fragment/app/l1;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/j0;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Landroidx/fragment/app/k1;->j(Ljava/lang/ClassLoader;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Landroidx/fragment/app/d1;->s:I

    .line 35
    .line 36
    iput p1, v0, Landroidx/fragment/app/k1;->e:I

    .line 37
    .line 38
    return-object v0
.end method

.method public final g(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 16
    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 23
    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 36
    .line 37
    iget-object v1, v0, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 48
    .line 49
    invoke-static {p1}, Landroidx/fragment/app/d1;->H(Landroidx/fragment/app/Fragment;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iput-boolean v2, p0, Landroidx/fragment/app/d1;->D:Z

    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->a0(Landroidx/fragment/app/Fragment;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1

    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method public final h(ZLandroid/content/res/Configuration;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 4
    .line 5
    instance-of v0, v0, Ln0/j;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->c0(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/d1;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2, p2}, Landroidx/fragment/app/d1;->h(ZLandroid/content/res/Configuration;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    return-void
.end method

.method public final i(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/d1;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    return v1
.end method

.method public final j(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/d1;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/d1;->e:Ljava/util/ArrayList;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/d1;->e:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ge v1, p1, :cond_6

    .line 69
    .line 70
    iget-object p1, p0, Landroidx/fragment/app/d1;->e:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_5

    .line 85
    .line 86
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 87
    .line 88
    .line 89
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    iput-object v3, p0, Landroidx/fragment/app/d1;->e:Ljava/util/ArrayList;

    .line 93
    .line 94
    return v4
.end method

.method public final k()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/d1;->G:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/d1;->y(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->e()Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/fragment/app/n;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/fragment/app/n;->g()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 32
    .line 33
    instance-of v2, v1, Landroidx/lifecycle/w0;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v0, v3, Landroidx/fragment/app/l1;->d:Landroidx/fragment/app/g1;

    .line 40
    .line 41
    iget-boolean v0, v0, Landroidx/fragment/app/g1;->h:Z

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/j0;

    .line 45
    .line 46
    instance-of v2, v1, Landroid/app/Activity;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    xor-int/2addr v0, v1

    .line 55
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/fragment/app/d1;->j:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroidx/fragment/app/c;

    .line 78
    .line 79
    iget-object v1, v1, Landroidx/fragment/app/c;->a:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/String;

    .line 96
    .line 97
    iget-object v4, v3, Landroidx/fragment/app/l1;->d:Landroidx/fragment/app/g1;

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-virtual {v4, v2, v5}, Landroidx/fragment/app/g1;->d(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/4 v0, -0x1

    .line 105
    invoke-virtual {p0, v0}, Landroidx/fragment/app/d1;->t(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 109
    .line 110
    instance-of v1, v0, Ln0/k;

    .line 111
    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    check-cast v0, Ln0/k;

    .line 115
    .line 116
    iget-object v1, p0, Landroidx/fragment/app/d1;->o:Landroidx/fragment/app/s0;

    .line 117
    .line 118
    invoke-interface {v0, v1}, Ln0/k;->c(Landroidx/fragment/app/s0;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 122
    .line 123
    instance-of v1, v0, Ln0/j;

    .line 124
    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    check-cast v0, Ln0/j;

    .line 128
    .line 129
    iget-object v1, p0, Landroidx/fragment/app/d1;->n:Landroidx/fragment/app/s0;

    .line 130
    .line 131
    invoke-interface {v0, v1}, Ln0/j;->d(Landroidx/fragment/app/s0;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 135
    .line 136
    instance-of v1, v0, Lm0/j0;

    .line 137
    .line 138
    if-eqz v1, :cond_7

    .line 139
    .line 140
    check-cast v0, Lm0/j0;

    .line 141
    .line 142
    iget-object v1, p0, Landroidx/fragment/app/d1;->p:Landroidx/fragment/app/s0;

    .line 143
    .line 144
    invoke-interface {v0, v1}, Lm0/j0;->m(Landroidx/fragment/app/s0;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 148
    .line 149
    instance-of v1, v0, Lm0/k0;

    .line 150
    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    check-cast v0, Lm0/k0;

    .line 154
    .line 155
    iget-object v1, p0, Landroidx/fragment/app/d1;->q:Landroidx/fragment/app/s0;

    .line 156
    .line 157
    invoke-interface {v0, v1}, Lm0/k0;->l(Landroidx/fragment/app/s0;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 161
    .line 162
    instance-of v1, v0, Lx0/q;

    .line 163
    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    iget-object v1, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 167
    .line 168
    if-nez v1, :cond_9

    .line 169
    .line 170
    check-cast v0, Lx0/q;

    .line 171
    .line 172
    iget-object v1, p0, Landroidx/fragment/app/d1;->r:Landroidx/fragment/app/v0;

    .line 173
    .line 174
    invoke-interface {v0, v1}, Lx0/q;->k(Landroidx/fragment/app/v0;)V

    .line 175
    .line 176
    .line 177
    :cond_9
    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 179
    .line 180
    iput-object v0, p0, Landroidx/fragment/app/d1;->u:Landroidx/fragment/app/m0;

    .line 181
    .line 182
    iput-object v0, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 183
    .line 184
    iget-object v1, p0, Landroidx/fragment/app/d1;->g:Landroidx/activity/w;

    .line 185
    .line 186
    if-eqz v1, :cond_b

    .line 187
    .line 188
    iget-object v1, p0, Landroidx/fragment/app/d1;->h:Landroidx/fragment/app/u0;

    .line 189
    .line 190
    iget-object v1, v1, Landroidx/fragment/app/u0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_a

    .line 201
    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Landroidx/activity/c;

    .line 207
    .line 208
    invoke-interface {v2}, Landroidx/activity/c;->cancel()V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_a
    iput-object v0, p0, Landroidx/fragment/app/d1;->g:Landroidx/activity/w;

    .line 213
    .line 214
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/d1;->z:Landroidx/activity/result/d;

    .line 215
    .line 216
    if-eqz v0, :cond_c

    .line 217
    .line 218
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Landroidx/fragment/app/d1;->A:Landroidx/activity/result/d;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Landroidx/fragment/app/d1;->B:Landroidx/activity/result/d;

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 229
    .line 230
    .line 231
    :cond_c
    return-void
.end method

.method public final l(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 4
    .line 5
    instance-of v0, v0, Ln0/k;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->c0(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/d1;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2}, Landroidx/fragment/app/d1;->l(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    return-void
.end method

.method public final m(ZZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 4
    .line 5
    instance-of v0, v0, Lm0/j0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->c0(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/d1;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/d1;->m(ZZ)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->e()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/d1;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/d1;->n()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final o(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/d1;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    return v1
.end method

.method public final p(Landroid/view/Menu;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/d1;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method public final q(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l1;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final r(ZZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 4
    .line 5
    instance-of v0, v0, Lm0/k0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->c0(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/d1;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/d1;->r(ZZ)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    return-void
.end method

.method public final s(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/d1;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v1
.end method

.method public final t(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/d1;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/fragment/app/k1;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iput p1, v3, Landroidx/fragment/app/k1;->e:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/d1;->L(IZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->e()Ljava/util/HashSet;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroidx/fragment/app/n;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/fragment/app/n;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/d1;->b:Z

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroidx/fragment/app/d1;->y(Z)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/d1;->b:Z

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :goto_3
    throw p1

    .line 73
    :goto_4
    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "FragmentManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    const-string v2, "}"

    .line 32
    .line 33
    const-string v3, "{"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "null"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-string v1, "}}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/d1;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/d1;->H:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->b0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "    "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v1, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v4, "Active Fragments:"

    .line 41
    .line 42
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroidx/fragment/app/k1;

    .line 64
    .line 65
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    if-eqz v4, :cond_0

    .line 69
    .line 70
    iget-object v4, v4, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 71
    .line 72
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-string v4, "null"

    .line 80
    .line 81
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object p2, v1, Landroidx/fragment/app/l1;->a:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    const/4 v1, 0x0

    .line 92
    if-lez p4, :cond_2

    .line 93
    .line 94
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v2, "Added Fragments:"

    .line 98
    .line 99
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    :goto_1
    if-ge v2, p4, :cond_2

    .line 104
    .line 105
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 110
    .line 111
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v4, "  #"

    .line 115
    .line 116
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 120
    .line 121
    .line 122
    const-string v4, ": "

    .line 123
    .line 124
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/d1;->e:Ljava/util/ArrayList;

    .line 138
    .line 139
    if-eqz p2, :cond_3

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-lez p2, :cond_3

    .line 146
    .line 147
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string p4, "Fragments Created Menus:"

    .line 151
    .line 152
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const/4 p4, 0x0

    .line 156
    :goto_2
    if-ge p4, p2, :cond_3

    .line 157
    .line 158
    iget-object v2, p0, Landroidx/fragment/app/d1;->e:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 165
    .line 166
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v3, "  #"

    .line 170
    .line 171
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 175
    .line 176
    .line 177
    const-string v3, ": "

    .line 178
    .line 179
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    add-int/lit8 p4, p4, 0x1

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 193
    .line 194
    if-eqz p2, :cond_4

    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-lez p2, :cond_4

    .line 201
    .line 202
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string p4, "Back Stack:"

    .line 206
    .line 207
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/4 p4, 0x0

    .line 211
    :goto_3
    if-ge p4, p2, :cond_4

    .line 212
    .line 213
    iget-object v2, p0, Landroidx/fragment/app/d1;->d:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Landroidx/fragment/app/a;

    .line 220
    .line 221
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v3, "  #"

    .line 225
    .line 226
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 230
    .line 231
    .line 232
    const-string v3, ": "

    .line 233
    .line 234
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const/4 v3, 0x1

    .line 245
    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->g(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 246
    .line 247
    .line 248
    add-int/lit8 p4, p4, 0x1

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string p4, "Back Stack Index: "

    .line 257
    .line 258
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object p4, p0, Landroidx/fragment/app/d1;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 262
    .line 263
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 264
    .line 265
    .line 266
    move-result p4

    .line 267
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object p2, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 278
    .line 279
    monitor-enter p2

    .line 280
    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result p4

    .line 286
    if-lez p4, :cond_5

    .line 287
    .line 288
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v0, "Pending Actions:"

    .line 292
    .line 293
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_4
    if-ge v1, p4, :cond_5

    .line 297
    .line 298
    iget-object v0, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Landroidx/fragment/app/b1;

    .line 305
    .line 306
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string v2, "  #"

    .line 310
    .line 311
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 315
    .line 316
    .line 317
    const-string v2, ": "

    .line 318
    .line 319
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    add-int/lit8 v1, v1, 0x1

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :catchall_0
    move-exception p1

    .line 329
    goto :goto_5

    .line 330
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string p2, "FragmentManager misc state:"

    .line 335
    .line 336
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string p2, "  mHost="

    .line 343
    .line 344
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object p2, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 348
    .line 349
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    const-string p2, "  mContainer="

    .line 356
    .line 357
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object p2, p0, Landroidx/fragment/app/d1;->u:Landroidx/fragment/app/m0;

    .line 361
    .line 362
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    iget-object p2, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 366
    .line 367
    if-eqz p2, :cond_6

    .line 368
    .line 369
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-string p2, "  mParent="

    .line 373
    .line 374
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object p2, p0, Landroidx/fragment/app/d1;->v:Landroidx/fragment/app/Fragment;

    .line 378
    .line 379
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    const-string p2, "  mCurState="

    .line 386
    .line 387
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    iget p2, p0, Landroidx/fragment/app/d1;->s:I

    .line 391
    .line 392
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 393
    .line 394
    .line 395
    const-string p2, " mStateSaved="

    .line 396
    .line 397
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-boolean p2, p0, Landroidx/fragment/app/d1;->E:Z

    .line 401
    .line 402
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 403
    .line 404
    .line 405
    const-string p2, " mStopped="

    .line 406
    .line 407
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget-boolean p2, p0, Landroidx/fragment/app/d1;->F:Z

    .line 411
    .line 412
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 413
    .line 414
    .line 415
    const-string p2, " mDestroyed="

    .line 416
    .line 417
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    iget-boolean p2, p0, Landroidx/fragment/app/d1;->G:Z

    .line 421
    .line 422
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 423
    .line 424
    .line 425
    iget-boolean p2, p0, Landroidx/fragment/app/d1;->D:Z

    .line 426
    .line 427
    if-eqz p2, :cond_7

    .line 428
    .line 429
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    const-string p1, "  mNeedMenuInvalidate="

    .line 433
    .line 434
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-boolean p1, p0, Landroidx/fragment/app/d1;->D:Z

    .line 438
    .line 439
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 440
    .line 441
    .line 442
    :cond_7
    return-void

    .line 443
    :goto_5
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    goto :goto_7

    .line 445
    :goto_6
    throw p1

    .line 446
    :goto_7
    goto :goto_6
.end method

.method public final w(Landroidx/fragment/app/b1;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/fragment/app/d1;->G:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "FragmentManager has been destroyed"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "FragmentManager has not been attached to a host."

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->K()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "Can not perform this action after onSaveInstanceState"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "Activity has been destroyed"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->W()V

    .line 69
    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p1
.end method

.method public final x(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/d1;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/fragment/app/d1;->G:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/fragment/app/o0;->c:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-ne v0, v1, :cond_5

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->K()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v0, "Can not perform this action after onSaveInstanceState"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/d1;->I:Ljava/util/ArrayList;

    .line 61
    .line 62
    if-nez p1, :cond_4

    .line 63
    .line 64
    new-instance p1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Landroidx/fragment/app/d1;->I:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance p1, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Landroidx/fragment/app/d1;->J:Ljava/util/ArrayList;

    .line 77
    .line 78
    :cond_4
    return-void

    .line 79
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v0, "Must be called from main thread of fragment host"

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v0, "FragmentManager is already executing transactions"

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public final y(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d1;->x(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/d1;->I:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/d1;->J:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const/4 v6, 0x0

    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_4

    .line 26
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    :goto_1
    if-ge v5, v4, :cond_1

    .line 35
    .line 36
    iget-object v7, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Landroidx/fragment/app/b1;

    .line 43
    .line 44
    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/b1;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 45
    .line 46
    .line 47
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    or-int/2addr v6, v7

    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 60
    .line 61
    iget-object v1, v1, Landroidx/fragment/app/o0;->c:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/fragment/app/d1;->M:Landroidx/fragment/app/o;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :goto_2
    if-eqz v6, :cond_2

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Landroidx/fragment/app/d1;->b:Z

    .line 73
    .line 74
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/d1;->I:Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-object v2, p0, Landroidx/fragment/app/d1;->J:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/d1;->S(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_2
    move-exception p1

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d()V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d0()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->u()V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 97
    .line 98
    iget-object p1, p1, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 110
    .line 111
    .line 112
    return v0

    .line 113
    :goto_3
    :try_start_4
    iget-object v0, p0, Landroidx/fragment/app/d1;->a:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 119
    .line 120
    iget-object v0, v0, Landroidx/fragment/app/o0;->c:Landroid/os/Handler;

    .line 121
    .line 122
    iget-object v1, p0, Landroidx/fragment/app/d1;->M:Landroidx/fragment/app/o;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    goto :goto_6

    .line 130
    :goto_5
    throw p1

    .line 131
    :goto_6
    goto :goto_5
.end method

.method public final z(Landroidx/fragment/app/a;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/d1;->t:Landroidx/fragment/app/o0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/d1;->G:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/d1;->x(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Landroidx/fragment/app/d1;->I:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/fragment/app/d1;->J:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Landroidx/fragment/app/d1;->b:Z

    .line 24
    .line 25
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/d1;->I:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object p2, p0, Landroidx/fragment/app/d1;->J:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/d1;->S(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d0()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->u()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 42
    .line 43
    iget-object p1, p1, Landroidx/fragment/app/l1;->b:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/d1;->d()V

    .line 60
    .line 61
    .line 62
    throw p1
.end method
