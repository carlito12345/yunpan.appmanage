.class public final Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "container"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    .line 29
    .line 30
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x15

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lx0/f1;->b(Landroid/view/ViewGroup;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const v1, 0x7f0b02e1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    invoke-static {v0}, Lx0/b1;->k(Landroid/view/View;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 53
    :goto_1
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_7

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    :goto_2
    if-ge v3, p0, :cond_7

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_5

    .line 80
    .line 81
    invoke-static {v1, p1}, Landroidx/fragment/app/n;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_6
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_7

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_7
    :goto_3
    return-void
.end method

.method public static e(La0/e;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lx0/b1;->k(Landroid/view/View;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    invoke-static {p0, v2}, Landroidx/fragment/app/n;->e(La0/e;Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method public static final h(Landroid/view/ViewGroup;Landroidx/fragment/app/d1;)Landroidx/fragment/app/n;
    .locals 2

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fragmentManager"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/d1;->F()Lgf/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "fragmentManager.specialEffectsControllerFactory"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0b02be

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v1, v0, Landroidx/fragment/app/n;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    check-cast v0, Landroidx/fragment/app/n;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Landroidx/fragment/app/n;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Landroid/view/ViewGroup;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-object v0
.end method

.method public static j(La0/e;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, La0/e;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lb8/l;

    .line 6
    .line 7
    invoke-virtual {p0}, Lb8/l;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/View;

    .line 28
    .line 29
    invoke-static {v0}, Lx0/b1;->k(Landroid/view/View;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Landroidx/fragment/app/c2;Landroidx/fragment/app/b2;Landroidx/fragment/app/k1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lt0/g;

    .line 5
    .line 6
    invoke-direct {v1}, Lt0/g;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p3, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    const-string v3, "fragmentStateManager.fragment"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/fragment/app/n;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z1;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/z1;->c(Landroidx/fragment/app/c2;Landroidx/fragment/app/b2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_1
    new-instance v2, Landroidx/fragment/app/z1;

    .line 30
    .line 31
    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/z1;-><init>(Landroidx/fragment/app/c2;Landroidx/fragment/app/b2;Landroidx/fragment/app/k1;Lt0/g;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance p1, Landroidx/fragment/app/y1;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/y1;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/z1;I)V

    .line 43
    .line 44
    .line 45
    iget-object p2, v2, Landroidx/fragment/app/z1;->d:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance p1, Landroidx/fragment/app/y1;

    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/y1;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/z1;I)V

    .line 54
    .line 55
    .line 56
    iget-object p2, v2, Landroidx/fragment/app/z1;->d:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_0
    monitor-exit v0

    .line 64
    throw p1
.end method

.method public final c(Ljava/util/ArrayList;Z)V
    .locals 39

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    sget-object v5, Landroidx/fragment/app/c2;->b:Landroidx/fragment/app/c2;

    .line 16
    .line 17
    const-string v9, "operation.fragment.mView"

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v10, v4

    .line 26
    check-cast v10, Landroidx/fragment/app/z1;

    .line 27
    .line 28
    iget-object v11, v10, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 31
    .line 32
    invoke-static {v11, v9}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v11}, Lcom/bumptech/glide/d;->f(Landroid/view/View;)Landroidx/fragment/app/c2;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    if-ne v11, v5, :cond_0

    .line 40
    .line 41
    iget-object v10, v10, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 42
    .line 43
    if-eq v10, v5, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v4, 0x0

    .line 47
    :goto_0
    move-object v10, v4

    .line 48
    check-cast v10, Landroidx/fragment/app/z1;

    .line 49
    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    move-object v11, v4

    .line 69
    check-cast v11, Landroidx/fragment/app/z1;

    .line 70
    .line 71
    iget-object v12, v11, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 72
    .line 73
    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 74
    .line 75
    invoke-static {v12, v9}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v12}, Lcom/bumptech/glide/d;->f(Landroid/view/View;)Landroidx/fragment/app/c2;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    if-eq v12, v5, :cond_2

    .line 83
    .line 84
    iget-object v11, v11, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 85
    .line 86
    if-ne v11, v5, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/4 v4, 0x0

    .line 90
    :goto_1
    move-object v11, v4

    .line 91
    check-cast v11, Landroidx/fragment/app/z1;

    .line 92
    .line 93
    const-string v12, "FragmentManager"

    .line 94
    .line 95
    const/4 v13, 0x2

    .line 96
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    if-eqz v10, :cond_4

    .line 103
    .line 104
    invoke-virtual {v10}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    :cond_4
    if-eqz v11, :cond_5

    .line 108
    .line 109
    invoke-virtual {v11}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    new-instance v4, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-static/range {p1 .. p1}, Lje/j;->n0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    if-nez v15, :cond_57

    .line 131
    .line 132
    invoke-static/range {p1 .. p1}, Lje/k;->k0(Ljava/util/List;)I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    check-cast v15, Landroidx/fragment/app/z1;

    .line 141
    .line 142
    iget-object v15, v15, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 143
    .line 144
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v16

    .line 148
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v17

    .line 152
    if-eqz v17, :cond_6

    .line 153
    .line 154
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v17

    .line 158
    move-object/from16 v13, v17

    .line 159
    .line 160
    check-cast v13, Landroidx/fragment/app/z1;

    .line 161
    .line 162
    iget-object v13, v13, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 163
    .line 164
    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/a0;

    .line 165
    .line 166
    iget-object v8, v15, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/a0;

    .line 167
    .line 168
    iget v7, v8, Landroidx/fragment/app/a0;->b:I

    .line 169
    .line 170
    iput v7, v13, Landroidx/fragment/app/a0;->b:I

    .line 171
    .line 172
    iget v7, v8, Landroidx/fragment/app/a0;->c:I

    .line 173
    .line 174
    iput v7, v13, Landroidx/fragment/app/a0;->c:I

    .line 175
    .line 176
    iget v7, v8, Landroidx/fragment/app/a0;->d:I

    .line 177
    .line 178
    iput v7, v13, Landroidx/fragment/app/a0;->d:I

    .line 179
    .line 180
    iget v7, v8, Landroidx/fragment/app/a0;->e:I

    .line 181
    .line 182
    iput v7, v13, Landroidx/fragment/app/a0;->e:I

    .line 183
    .line 184
    const/4 v13, 0x2

    .line 185
    goto :goto_2

    .line 186
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_9

    .line 195
    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v7, Landroidx/fragment/app/z1;

    .line 201
    .line 202
    new-instance v13, Lt0/g;

    .line 203
    .line 204
    invoke-direct {v13}, Lt0/g;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Landroidx/fragment/app/z1;->d()V

    .line 208
    .line 209
    .line 210
    iget-object v15, v7, Landroidx/fragment/app/z1;->e:Ljava/util/LinkedHashSet;

    .line 211
    .line 212
    invoke-interface {v15, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    new-instance v8, Landroidx/fragment/app/i;

    .line 216
    .line 217
    invoke-direct {v8, v7, v13, v1}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/z1;Lt0/g;Z)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    new-instance v8, Lt0/g;

    .line 224
    .line 225
    invoke-direct {v8}, Lt0/g;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7}, Landroidx/fragment/app/z1;->d()V

    .line 229
    .line 230
    .line 231
    invoke-interface {v15, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    new-instance v13, Landroidx/fragment/app/k;

    .line 235
    .line 236
    if-eqz v1, :cond_8

    .line 237
    .line 238
    if-ne v7, v10, :cond_7

    .line 239
    .line 240
    :goto_4
    const/4 v15, 0x1

    .line 241
    goto :goto_5

    .line 242
    :cond_7
    const/4 v15, 0x0

    .line 243
    goto :goto_5

    .line 244
    :cond_8
    if-ne v7, v11, :cond_7

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :goto_5
    invoke-direct {v13, v7, v8, v1, v15}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/z1;Lt0/g;ZZ)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    new-instance v8, Landroidx/fragment/app/d;

    .line 254
    .line 255
    invoke-direct {v8, v14, v7, v6}, Landroidx/fragment/app/d;-><init>(Ljava/util/ArrayList;Landroidx/fragment/app/z1;Landroidx/fragment/app/n;)V

    .line 256
    .line 257
    .line 258
    iget-object v7, v7, Landroidx/fragment/app/z1;->d:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_9
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 265
    .line 266
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 267
    .line 268
    .line 269
    new-instance v0, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    :cond_a
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    if-eqz v13, :cond_b

    .line 283
    .line 284
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v13

    .line 288
    move-object v15, v13

    .line 289
    check-cast v15, Landroidx/fragment/app/k;

    .line 290
    .line 291
    invoke-virtual {v15}, Landroidx/fragment/app/j;->b()Z

    .line 292
    .line 293
    .line 294
    move-result v15

    .line 295
    if-nez v15, :cond_a

    .line 296
    .line 297
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :cond_c
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    if-eqz v13, :cond_d

    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    move-object v15, v13

    .line 321
    check-cast v15, Landroidx/fragment/app/k;

    .line 322
    .line 323
    invoke-virtual {v15}, Landroidx/fragment/app/k;->c()Landroidx/fragment/app/v1;

    .line 324
    .line 325
    .line 326
    move-result-object v15

    .line 327
    if-eqz v15, :cond_c

    .line 328
    .line 329
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const/4 v8, 0x0

    .line 338
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    if-eqz v13, :cond_10

    .line 343
    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v13

    .line 348
    check-cast v13, Landroidx/fragment/app/k;

    .line 349
    .line 350
    invoke-virtual {v13}, Landroidx/fragment/app/k;->c()Landroidx/fragment/app/v1;

    .line 351
    .line 352
    .line 353
    move-result-object v15

    .line 354
    if-eqz v8, :cond_f

    .line 355
    .line 356
    if-ne v15, v8, :cond_e

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v1, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 362
    .line 363
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v1, v13, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/z1;

    .line 367
    .line 368
    iget-object v1, v1, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v1, " returned Transition "

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    iget-object v1, v13, Landroidx/fragment/app/k;->c:Ljava/lang/Object;

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v1, " which uses a different Transition type than other Fragments."

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw v1

    .line 402
    :cond_f
    :goto_9
    move-object v8, v15

    .line 403
    goto :goto_8

    .line 404
    :cond_10
    sget-object v13, Landroidx/fragment/app/c2;->c:Landroidx/fragment/app/c2;

    .line 405
    .line 406
    iget-object v15, v6, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    .line 407
    .line 408
    if-nez v8, :cond_12

    .line 409
    .line 410
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-eqz v1, :cond_11

    .line 419
    .line 420
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    check-cast v1, Landroidx/fragment/app/k;

    .line 425
    .line 426
    iget-object v2, v1, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/z1;

    .line 427
    .line 428
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 429
    .line 430
    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1}, Landroidx/fragment/app/j;->a()V

    .line 434
    .line 435
    .line 436
    goto :goto_a

    .line 437
    :cond_11
    move-object/from16 v25, v3

    .line 438
    .line 439
    move-object v8, v7

    .line 440
    move-object/from16 v26, v10

    .line 441
    .line 442
    move-object/from16 v27, v11

    .line 443
    .line 444
    move-object v7, v12

    .line 445
    move-object/from16 v31, v13

    .line 446
    .line 447
    move-object/from16 v29, v14

    .line 448
    .line 449
    :goto_b
    const/4 v9, 0x1

    .line 450
    const/4 v10, 0x0

    .line 451
    goto/16 :goto_2a

    .line 452
    .line 453
    :cond_12
    new-instance v0, Landroid/view/View;

    .line 454
    .line 455
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 460
    .line 461
    .line 462
    new-instance v2, Landroid/graphics/Rect;

    .line 463
    .line 464
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 465
    .line 466
    .line 467
    new-instance v6, Ljava/util/ArrayList;

    .line 468
    .line 469
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .line 471
    .line 472
    move-object/from16 v25, v3

    .line 473
    .line 474
    new-instance v3, Ljava/util/ArrayList;

    .line 475
    .line 476
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .line 478
    .line 479
    move-object/from16 v26, v5

    .line 480
    .line 481
    new-instance v5, La0/e;

    .line 482
    .line 483
    invoke-direct {v5}, La0/e;-><init>()V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 487
    .line 488
    .line 489
    move-result-object v27

    .line 490
    move-object/from16 v29, v14

    .line 491
    .line 492
    const/4 v14, 0x0

    .line 493
    const/16 v28, 0x0

    .line 494
    .line 495
    const/16 v30, 0x0

    .line 496
    .line 497
    :goto_c
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    .line 498
    .line 499
    .line 500
    move-result v19

    .line 501
    if-eqz v19, :cond_22

    .line 502
    .line 503
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v19

    .line 507
    move-object/from16 v31, v13

    .line 508
    .line 509
    move-object/from16 v13, v19

    .line 510
    .line 511
    check-cast v13, Landroidx/fragment/app/k;

    .line 512
    .line 513
    iget-object v13, v13, Landroidx/fragment/app/k;->e:Ljava/lang/Object;

    .line 514
    .line 515
    if-eqz v13, :cond_21

    .line 516
    .line 517
    if-eqz v10, :cond_21

    .line 518
    .line 519
    if-eqz v11, :cond_21

    .line 520
    .line 521
    invoke-virtual {v8, v13}, Landroidx/fragment/app/v1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v13

    .line 525
    invoke-virtual {v8, v13}, Landroidx/fragment/app/v1;->r(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v14

    .line 529
    iget-object v13, v11, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 530
    .line 531
    move-object/from16 v32, v9

    .line 532
    .line 533
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 534
    .line 535
    .line 536
    move-result-object v9

    .line 537
    move-object/from16 v33, v4

    .line 538
    .line 539
    const-string v4, "lastIn.fragment.sharedElementSourceNames"

    .line 540
    .line 541
    invoke-static {v9, v4}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    iget-object v4, v10, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 545
    .line 546
    move-object/from16 v34, v7

    .line 547
    .line 548
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    move-object/from16 v35, v0

    .line 553
    .line 554
    const-string v0, "firstOut.fragment.sharedElementSourceNames"

    .line 555
    .line 556
    invoke-static {v7, v0}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    move-object/from16 v36, v2

    .line 564
    .line 565
    const-string v2, "firstOut.fragment.sharedElementTargetNames"

    .line 566
    .line 567
    invoke-static {v0, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    move-object/from16 v37, v8

    .line 575
    .line 576
    const/4 v8, 0x0

    .line 577
    :goto_d
    if-ge v8, v2, :cond_14

    .line 578
    .line 579
    move/from16 v19, v2

    .line 580
    .line 581
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    move-object/from16 v20, v0

    .line 590
    .line 591
    const/4 v0, -0x1

    .line 592
    if-eq v2, v0, :cond_13

    .line 593
    .line 594
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {v9, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    :cond_13
    const/4 v0, 0x1

    .line 602
    add-int/2addr v8, v0

    .line 603
    move/from16 v2, v19

    .line 604
    .line 605
    move-object/from16 v0, v20

    .line 606
    .line 607
    goto :goto_d

    .line 608
    :cond_14
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    const-string v2, "lastIn.fragment.sharedElementTargetNames"

    .line 613
    .line 614
    invoke-static {v0, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    if-nez v1, :cond_15

    .line 618
    .line 619
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lm0/r0;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lm0/r0;

    .line 623
    .line 624
    .line 625
    new-instance v2, Lie/b;

    .line 626
    .line 627
    const/4 v7, 0x0

    .line 628
    invoke-direct {v2, v7, v7}, Lie/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    goto :goto_e

    .line 632
    :cond_15
    const/4 v7, 0x0

    .line 633
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lm0/r0;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lm0/r0;

    .line 637
    .line 638
    .line 639
    new-instance v2, Lie/b;

    .line 640
    .line 641
    invoke-direct {v2, v7, v7}, Lie/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    :goto_e
    iget-object v7, v2, Lie/b;->a:Ljava/lang/Object;

    .line 645
    .line 646
    if-nez v7, :cond_20

    .line 647
    .line 648
    iget-object v2, v2, Lie/b;->b:Ljava/lang/Object;

    .line 649
    .line 650
    if-nez v2, :cond_1f

    .line 651
    .line 652
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    const/4 v7, 0x0

    .line 657
    :goto_f
    if-ge v7, v2, :cond_16

    .line 658
    .line 659
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v8

    .line 663
    check-cast v8, Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v19

    .line 669
    move/from16 v20, v2

    .line 670
    .line 671
    move-object/from16 v2, v19

    .line 672
    .line 673
    check-cast v2, Ljava/lang/String;

    .line 674
    .line 675
    invoke-virtual {v5, v8, v2}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    const/4 v2, 0x1

    .line 679
    add-int/2addr v7, v2

    .line 680
    move/from16 v2, v20

    .line 681
    .line 682
    goto :goto_f

    .line 683
    :cond_16
    const/4 v2, 0x2

    .line 684
    invoke-static {v12, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 685
    .line 686
    .line 687
    move-result v7

    .line 688
    if-eqz v7, :cond_18

    .line 689
    .line 690
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 695
    .line 696
    .line 697
    move-result v7

    .line 698
    if-eqz v7, :cond_17

    .line 699
    .line 700
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v7

    .line 704
    check-cast v7, Ljava/lang/String;

    .line 705
    .line 706
    goto :goto_10

    .line 707
    :cond_17
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 712
    .line 713
    .line 714
    move-result v7

    .line 715
    if-eqz v7, :cond_18

    .line 716
    .line 717
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v7

    .line 721
    check-cast v7, Ljava/lang/String;

    .line 722
    .line 723
    goto :goto_11

    .line 724
    :cond_18
    new-instance v2, La0/e;

    .line 725
    .line 726
    invoke-direct {v2}, La0/e;-><init>()V

    .line 727
    .line 728
    .line 729
    iget-object v7, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 730
    .line 731
    const-string v8, "firstOut.fragment.mView"

    .line 732
    .line 733
    invoke-static {v7, v8}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    invoke-static {v2, v7}, Landroidx/fragment/app/n;->e(La0/e;Landroid/view/View;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v2, v9}, La0/e;->m(Ljava/util/Collection;)Z

    .line 740
    .line 741
    .line 742
    invoke-virtual {v2}, La0/e;->keySet()Ljava/util/Set;

    .line 743
    .line 744
    .line 745
    move-result-object v7

    .line 746
    invoke-virtual {v5, v7}, La0/e;->m(Ljava/util/Collection;)Z

    .line 747
    .line 748
    .line 749
    new-instance v7, La0/e;

    .line 750
    .line 751
    invoke-direct {v7}, La0/e;-><init>()V

    .line 752
    .line 753
    .line 754
    iget-object v8, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 755
    .line 756
    move-object/from16 v38, v12

    .line 757
    .line 758
    const-string v12, "lastIn.fragment.mView"

    .line 759
    .line 760
    invoke-static {v8, v12}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    invoke-static {v7, v8}, Landroidx/fragment/app/n;->e(La0/e;Landroid/view/View;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v7, v0}, La0/e;->m(Ljava/util/Collection;)Z

    .line 767
    .line 768
    .line 769
    invoke-virtual {v5}, La0/e;->values()Ljava/util/Collection;

    .line 770
    .line 771
    .line 772
    move-result-object v8

    .line 773
    invoke-virtual {v7, v8}, La0/e;->m(Ljava/util/Collection;)Z

    .line 774
    .line 775
    .line 776
    sget-object v8, Landroidx/fragment/app/n1;->a:Landroidx/fragment/app/t1;

    .line 777
    .line 778
    iget v8, v5, La0/t;->c:I

    .line 779
    .line 780
    const/4 v12, 0x1

    .line 781
    sub-int/2addr v8, v12

    .line 782
    const/4 v12, -0x1

    .line 783
    :goto_12
    if-ge v12, v8, :cond_1a

    .line 784
    .line 785
    invoke-virtual {v5, v8}, La0/t;->j(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v16

    .line 789
    move-object/from16 v12, v16

    .line 790
    .line 791
    check-cast v12, Ljava/lang/String;

    .line 792
    .line 793
    invoke-virtual {v7, v12}, La0/t;->containsKey(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v12

    .line 797
    if-nez v12, :cond_19

    .line 798
    .line 799
    invoke-virtual {v5, v8}, La0/t;->h(I)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    :cond_19
    const/4 v12, -0x1

    .line 803
    add-int/2addr v8, v12

    .line 804
    goto :goto_12

    .line 805
    :cond_1a
    invoke-virtual {v5}, La0/e;->keySet()Ljava/util/Set;

    .line 806
    .line 807
    .line 808
    move-result-object v8

    .line 809
    invoke-static {v2, v8}, Landroidx/fragment/app/n;->j(La0/e;Ljava/util/Collection;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v5}, La0/e;->values()Ljava/util/Collection;

    .line 813
    .line 814
    .line 815
    move-result-object v8

    .line 816
    invoke-static {v7, v8}, Landroidx/fragment/app/n;->j(La0/e;Ljava/util/Collection;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v5}, La0/t;->isEmpty()Z

    .line 820
    .line 821
    .line 822
    move-result v8

    .line 823
    if-eqz v8, :cond_1b

    .line 824
    .line 825
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 829
    .line 830
    .line 831
    move-object/from16 v13, v31

    .line 832
    .line 833
    move-object/from16 v9, v32

    .line 834
    .line 835
    move-object/from16 v4, v33

    .line 836
    .line 837
    move-object/from16 v7, v34

    .line 838
    .line 839
    move-object/from16 v0, v35

    .line 840
    .line 841
    move-object/from16 v2, v36

    .line 842
    .line 843
    move-object/from16 v8, v37

    .line 844
    .line 845
    move-object/from16 v12, v38

    .line 846
    .line 847
    const/4 v14, 0x0

    .line 848
    goto/16 :goto_c

    .line 849
    .line 850
    :cond_1b
    if-eqz v1, :cond_1c

    .line 851
    .line 852
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lm0/r0;

    .line 853
    .line 854
    .line 855
    goto :goto_13

    .line 856
    :cond_1c
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lm0/r0;

    .line 857
    .line 858
    .line 859
    :goto_13
    new-instance v4, Landroidx/fragment/app/g;

    .line 860
    .line 861
    invoke-direct {v4, v11, v10, v1, v7}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/z1;Landroidx/fragment/app/z1;ZLa0/e;)V

    .line 862
    .line 863
    .line 864
    invoke-static {v15, v4}, Lx0/a0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v2}, La0/e;->values()Ljava/util/Collection;

    .line 868
    .line 869
    .line 870
    move-result-object v4

    .line 871
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 872
    .line 873
    .line 874
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 875
    .line 876
    .line 877
    move-result v4

    .line 878
    if-nez v4, :cond_1d

    .line 879
    .line 880
    const/4 v4, 0x0

    .line 881
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v8

    .line 885
    check-cast v8, Ljava/lang/String;

    .line 886
    .line 887
    invoke-virtual {v2, v8}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    check-cast v2, Landroid/view/View;

    .line 892
    .line 893
    move-object/from16 v4, v37

    .line 894
    .line 895
    invoke-virtual {v4, v2, v14}, Landroidx/fragment/app/v1;->m(Landroid/view/View;Ljava/lang/Object;)V

    .line 896
    .line 897
    .line 898
    move-object/from16 v28, v2

    .line 899
    .line 900
    goto :goto_14

    .line 901
    :cond_1d
    move-object/from16 v4, v37

    .line 902
    .line 903
    :goto_14
    invoke-virtual {v7}, La0/e;->values()Ljava/util/Collection;

    .line 904
    .line 905
    .line 906
    move-result-object v2

    .line 907
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 908
    .line 909
    .line 910
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 911
    .line 912
    .line 913
    move-result v2

    .line 914
    if-nez v2, :cond_1e

    .line 915
    .line 916
    const/4 v2, 0x0

    .line 917
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    check-cast v0, Ljava/lang/String;

    .line 922
    .line 923
    invoke-virtual {v7, v0}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    check-cast v0, Landroid/view/View;

    .line 928
    .line 929
    if-eqz v0, :cond_1e

    .line 930
    .line 931
    new-instance v2, Landroidx/fragment/app/h;

    .line 932
    .line 933
    move-object/from16 v7, v36

    .line 934
    .line 935
    invoke-direct {v2, v4, v0, v7}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/v1;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 936
    .line 937
    .line 938
    invoke-static {v15, v2}, Lx0/a0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 939
    .line 940
    .line 941
    move-object/from16 v0, v35

    .line 942
    .line 943
    const/16 v30, 0x1

    .line 944
    .line 945
    goto :goto_15

    .line 946
    :cond_1e
    move-object/from16 v7, v36

    .line 947
    .line 948
    move-object/from16 v0, v35

    .line 949
    .line 950
    :goto_15
    invoke-virtual {v4, v14, v0, v6}, Landroidx/fragment/app/v1;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 951
    .line 952
    .line 953
    const/16 v21, 0x0

    .line 954
    .line 955
    const/16 v22, 0x0

    .line 956
    .line 957
    move-object/from16 v19, v4

    .line 958
    .line 959
    move-object/from16 v20, v14

    .line 960
    .line 961
    move-object/from16 v23, v14

    .line 962
    .line 963
    move-object/from16 v24, v3

    .line 964
    .line 965
    invoke-virtual/range {v19 .. v24}, Landroidx/fragment/app/v1;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 966
    .line 967
    .line 968
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 969
    .line 970
    move-object/from16 v8, v34

    .line 971
    .line 972
    invoke-interface {v8, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    invoke-interface {v8, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    :goto_16
    move-object v2, v7

    .line 979
    move-object v7, v8

    .line 980
    move-object/from16 v13, v31

    .line 981
    .line 982
    move-object/from16 v9, v32

    .line 983
    .line 984
    move-object/from16 v12, v38

    .line 985
    .line 986
    move-object v8, v4

    .line 987
    move-object/from16 v4, v33

    .line 988
    .line 989
    goto/16 :goto_c

    .line 990
    .line 991
    :cond_1f
    new-instance v0, Ljava/lang/ClassCastException;

    .line 992
    .line 993
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 994
    .line 995
    .line 996
    throw v0

    .line 997
    :cond_20
    new-instance v0, Ljava/lang/ClassCastException;

    .line 998
    .line 999
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 1000
    .line 1001
    .line 1002
    throw v0

    .line 1003
    :cond_21
    move-object/from16 v33, v4

    .line 1004
    .line 1005
    move-object v4, v8

    .line 1006
    move-object/from16 v32, v9

    .line 1007
    .line 1008
    move-object/from16 v38, v12

    .line 1009
    .line 1010
    const/4 v12, -0x1

    .line 1011
    move-object v8, v7

    .line 1012
    move-object v7, v2

    .line 1013
    goto :goto_16

    .line 1014
    :cond_22
    move-object/from16 v33, v4

    .line 1015
    .line 1016
    move-object v4, v8

    .line 1017
    move-object/from16 v32, v9

    .line 1018
    .line 1019
    move-object/from16 v38, v12

    .line 1020
    .line 1021
    move-object/from16 v31, v13

    .line 1022
    .line 1023
    move-object v8, v7

    .line 1024
    move-object v7, v2

    .line 1025
    new-instance v1, Ljava/util/ArrayList;

    .line 1026
    .line 1027
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v2

    .line 1034
    const/4 v9, 0x0

    .line 1035
    const/4 v12, 0x0

    .line 1036
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1037
    .line 1038
    .line 1039
    move-result v13

    .line 1040
    if-eqz v13, :cond_2f

    .line 1041
    .line 1042
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v13

    .line 1046
    check-cast v13, Landroidx/fragment/app/k;

    .line 1047
    .line 1048
    invoke-virtual {v13}, Landroidx/fragment/app/j;->b()Z

    .line 1049
    .line 1050
    .line 1051
    move-result v16

    .line 1052
    move-object/from16 p2, v2

    .line 1053
    .line 1054
    iget-object v2, v13, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/z1;

    .line 1055
    .line 1056
    if-eqz v16, :cond_23

    .line 1057
    .line 1058
    move-object/from16 v16, v5

    .line 1059
    .line 1060
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1061
    .line 1062
    invoke-interface {v8, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v13}, Landroidx/fragment/app/j;->a()V

    .line 1066
    .line 1067
    .line 1068
    goto :goto_19

    .line 1069
    :cond_23
    move-object/from16 v16, v5

    .line 1070
    .line 1071
    iget-object v5, v13, Landroidx/fragment/app/k;->c:Ljava/lang/Object;

    .line 1072
    .line 1073
    invoke-virtual {v4, v5}, Landroidx/fragment/app/v1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v5

    .line 1077
    if-eqz v14, :cond_25

    .line 1078
    .line 1079
    if-eq v2, v10, :cond_24

    .line 1080
    .line 1081
    if-ne v2, v11, :cond_25

    .line 1082
    .line 1083
    :cond_24
    const/16 v19, 0x1

    .line 1084
    .line 1085
    goto :goto_18

    .line 1086
    :cond_25
    const/16 v19, 0x0

    .line 1087
    .line 1088
    :goto_18
    if-nez v5, :cond_27

    .line 1089
    .line 1090
    if-nez v19, :cond_26

    .line 1091
    .line 1092
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1093
    .line 1094
    invoke-interface {v8, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v13}, Landroidx/fragment/app/j;->a()V

    .line 1098
    .line 1099
    .line 1100
    :cond_26
    :goto_19
    move-object/from16 v2, p2

    .line 1101
    .line 1102
    move-object/from16 v5, v16

    .line 1103
    .line 1104
    goto :goto_17

    .line 1105
    :cond_27
    move-object/from16 v27, v11

    .line 1106
    .line 1107
    new-instance v11, Ljava/util/ArrayList;

    .line 1108
    .line 1109
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    .line 1111
    .line 1112
    move-object/from16 v34, v14

    .line 1113
    .line 1114
    iget-object v14, v2, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 1115
    .line 1116
    move-object/from16 v35, v12

    .line 1117
    .line 1118
    iget-object v12, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1119
    .line 1120
    move-object/from16 v36, v9

    .line 1121
    .line 1122
    move-object/from16 v9, v32

    .line 1123
    .line 1124
    invoke-static {v12, v9}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    invoke-static {v12, v11}, Landroidx/fragment/app/n;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1128
    .line 1129
    .line 1130
    if-eqz v19, :cond_29

    .line 1131
    .line 1132
    if-ne v2, v10, :cond_28

    .line 1133
    .line 1134
    invoke-static {v6}, Lje/j;->o0(Ljava/util/ArrayList;)Ljava/util/Set;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v12

    .line 1138
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1139
    .line 1140
    .line 1141
    goto :goto_1a

    .line 1142
    :cond_28
    invoke-static {v3}, Lje/j;->o0(Ljava/util/ArrayList;)Ljava/util/Set;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v12

    .line 1146
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1147
    .line 1148
    .line 1149
    :cond_29
    :goto_1a
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v12

    .line 1153
    if-eqz v12, :cond_2a

    .line 1154
    .line 1155
    invoke-virtual {v4, v0, v5}, Landroidx/fragment/app/v1;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 1156
    .line 1157
    .line 1158
    move-object/from16 v19, v0

    .line 1159
    .line 1160
    move-object/from16 v32, v9

    .line 1161
    .line 1162
    move-object/from16 v9, v31

    .line 1163
    .line 1164
    goto :goto_1b

    .line 1165
    :cond_2a
    invoke-virtual {v4, v5, v11}, Landroidx/fragment/app/v1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1166
    .line 1167
    .line 1168
    const/16 v23, 0x0

    .line 1169
    .line 1170
    const/16 v24, 0x0

    .line 1171
    .line 1172
    move-object/from16 v19, v4

    .line 1173
    .line 1174
    move-object/from16 v20, v5

    .line 1175
    .line 1176
    move-object/from16 v21, v5

    .line 1177
    .line 1178
    move-object/from16 v22, v11

    .line 1179
    .line 1180
    invoke-virtual/range {v19 .. v24}, Landroidx/fragment/app/v1;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1181
    .line 1182
    .line 1183
    iget-object v12, v2, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 1184
    .line 1185
    move-object/from16 v32, v9

    .line 1186
    .line 1187
    move-object/from16 v9, v31

    .line 1188
    .line 1189
    if-ne v12, v9, :cond_2b

    .line 1190
    .line 1191
    move-object/from16 v12, v29

    .line 1192
    .line 1193
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    move-object/from16 v19, v0

    .line 1197
    .line 1198
    new-instance v0, Ljava/util/ArrayList;

    .line 1199
    .line 1200
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v12, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1204
    .line 1205
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    iget-object v12, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1209
    .line 1210
    invoke-virtual {v4, v5, v12, v0}, Landroidx/fragment/app/v1;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1211
    .line 1212
    .line 1213
    new-instance v0, Landroidx/fragment/app/t;

    .line 1214
    .line 1215
    const/4 v12, 0x1

    .line 1216
    invoke-direct {v0, v12, v11}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-static {v15, v0}, Lx0/a0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1220
    .line 1221
    .line 1222
    goto :goto_1b

    .line 1223
    :cond_2b
    move-object/from16 v19, v0

    .line 1224
    .line 1225
    :goto_1b
    iget-object v0, v2, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 1226
    .line 1227
    move-object/from16 v12, v26

    .line 1228
    .line 1229
    if-ne v0, v12, :cond_2d

    .line 1230
    .line 1231
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1232
    .line 1233
    .line 1234
    if-eqz v30, :cond_2c

    .line 1235
    .line 1236
    invoke-virtual {v4, v5, v7}, Landroidx/fragment/app/v1;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1237
    .line 1238
    .line 1239
    :cond_2c
    move-object/from16 v0, v28

    .line 1240
    .line 1241
    goto :goto_1c

    .line 1242
    :cond_2d
    move-object/from16 v0, v28

    .line 1243
    .line 1244
    invoke-virtual {v4, v0, v5}, Landroidx/fragment/app/v1;->m(Landroid/view/View;Ljava/lang/Object;)V

    .line 1245
    .line 1246
    .line 1247
    :goto_1c
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1248
    .line 1249
    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    .line 1251
    .line 1252
    iget-boolean v2, v13, Landroidx/fragment/app/k;->d:Z

    .line 1253
    .line 1254
    if-eqz v2, :cond_2e

    .line 1255
    .line 1256
    move-object/from16 v2, v36

    .line 1257
    .line 1258
    invoke-virtual {v4, v2, v5}, Landroidx/fragment/app/v1;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v2

    .line 1262
    move-object/from16 v28, v0

    .line 1263
    .line 1264
    move-object/from16 v31, v9

    .line 1265
    .line 1266
    move-object/from16 v26, v12

    .line 1267
    .line 1268
    move-object/from16 v5, v16

    .line 1269
    .line 1270
    move-object/from16 v0, v19

    .line 1271
    .line 1272
    move-object/from16 v11, v27

    .line 1273
    .line 1274
    move-object/from16 v14, v34

    .line 1275
    .line 1276
    move-object/from16 v12, v35

    .line 1277
    .line 1278
    move-object v9, v2

    .line 1279
    :goto_1d
    move-object/from16 v2, p2

    .line 1280
    .line 1281
    goto/16 :goto_17

    .line 1282
    .line 1283
    :cond_2e
    move-object/from16 v11, v35

    .line 1284
    .line 1285
    move-object/from16 v2, v36

    .line 1286
    .line 1287
    invoke-virtual {v4, v11, v5}, Landroidx/fragment/app/v1;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v5

    .line 1291
    move-object/from16 v28, v0

    .line 1292
    .line 1293
    move-object/from16 v31, v9

    .line 1294
    .line 1295
    move-object/from16 v26, v12

    .line 1296
    .line 1297
    move-object/from16 v0, v19

    .line 1298
    .line 1299
    move-object/from16 v11, v27

    .line 1300
    .line 1301
    move-object/from16 v14, v34

    .line 1302
    .line 1303
    move-object v9, v2

    .line 1304
    move-object v12, v5

    .line 1305
    move-object/from16 v5, v16

    .line 1306
    .line 1307
    goto :goto_1d

    .line 1308
    :cond_2f
    move-object/from16 v16, v5

    .line 1309
    .line 1310
    move-object v2, v9

    .line 1311
    move-object/from16 v27, v11

    .line 1312
    .line 1313
    move-object v11, v12

    .line 1314
    move-object/from16 v9, v31

    .line 1315
    .line 1316
    invoke-virtual {v4, v2, v11, v14}, Landroidx/fragment/app/v1;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    if-nez v0, :cond_30

    .line 1321
    .line 1322
    move-object/from16 v31, v9

    .line 1323
    .line 1324
    move-object/from16 v26, v10

    .line 1325
    .line 1326
    move-object/from16 v7, v38

    .line 1327
    .line 1328
    goto/16 :goto_b

    .line 1329
    .line 1330
    :cond_30
    new-instance v2, Ljava/util/ArrayList;

    .line 1331
    .line 1332
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v5

    .line 1339
    :cond_31
    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1340
    .line 1341
    .line 1342
    move-result v7

    .line 1343
    if-eqz v7, :cond_32

    .line 1344
    .line 1345
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v7

    .line 1349
    move-object v11, v7

    .line 1350
    check-cast v11, Landroidx/fragment/app/k;

    .line 1351
    .line 1352
    invoke-virtual {v11}, Landroidx/fragment/app/j;->b()Z

    .line 1353
    .line 1354
    .line 1355
    move-result v11

    .line 1356
    if-nez v11, :cond_31

    .line 1357
    .line 1358
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    .line 1360
    .line 1361
    goto :goto_1e

    .line 1362
    :cond_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v2

    .line 1366
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1367
    .line 1368
    .line 1369
    move-result v5

    .line 1370
    if-eqz v5, :cond_39

    .line 1371
    .line 1372
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v5

    .line 1376
    check-cast v5, Landroidx/fragment/app/k;

    .line 1377
    .line 1378
    iget-object v7, v5, Landroidx/fragment/app/k;->c:Ljava/lang/Object;

    .line 1379
    .line 1380
    iget-object v11, v5, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/z1;

    .line 1381
    .line 1382
    move-object/from16 v12, v27

    .line 1383
    .line 1384
    if-eqz v14, :cond_34

    .line 1385
    .line 1386
    if-eq v11, v10, :cond_33

    .line 1387
    .line 1388
    if-ne v11, v12, :cond_34

    .line 1389
    .line 1390
    :cond_33
    const/4 v13, 0x1

    .line 1391
    goto :goto_20

    .line 1392
    :cond_34
    const/4 v13, 0x0

    .line 1393
    :goto_20
    if-nez v7, :cond_36

    .line 1394
    .line 1395
    if-eqz v13, :cond_35

    .line 1396
    .line 1397
    goto :goto_21

    .line 1398
    :cond_35
    move-object/from16 v7, v38

    .line 1399
    .line 1400
    goto :goto_22

    .line 1401
    :cond_36
    :goto_21
    invoke-static {v15}, Lx0/b1;->m(Landroid/view/View;)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v7

    .line 1405
    if-nez v7, :cond_38

    .line 1406
    .line 1407
    move-object/from16 v7, v38

    .line 1408
    .line 1409
    const/4 v13, 0x2

    .line 1410
    invoke-static {v7, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1411
    .line 1412
    .line 1413
    move-result v19

    .line 1414
    if-eqz v19, :cond_37

    .line 1415
    .line 1416
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v11}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    :cond_37
    invoke-virtual {v5}, Landroidx/fragment/app/j;->a()V

    .line 1423
    .line 1424
    .line 1425
    goto :goto_22

    .line 1426
    :cond_38
    move-object/from16 v7, v38

    .line 1427
    .line 1428
    new-instance v13, Landroidx/fragment/app/h;

    .line 1429
    .line 1430
    invoke-direct {v13, v5, v11}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/k;Landroidx/fragment/app/z1;)V

    .line 1431
    .line 1432
    .line 1433
    iget-object v5, v5, Landroidx/fragment/app/j;->b:Lt0/g;

    .line 1434
    .line 1435
    invoke-virtual {v4, v0, v5, v13}, Landroidx/fragment/app/v1;->o(Ljava/lang/Object;Lt0/g;Landroidx/fragment/app/h;)V

    .line 1436
    .line 1437
    .line 1438
    :goto_22
    move-object/from16 v38, v7

    .line 1439
    .line 1440
    move-object/from16 v27, v12

    .line 1441
    .line 1442
    goto :goto_1f

    .line 1443
    :cond_39
    move-object/from16 v12, v27

    .line 1444
    .line 1445
    move-object/from16 v7, v38

    .line 1446
    .line 1447
    invoke-static {v15}, Lx0/b1;->m(Landroid/view/View;)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v2

    .line 1451
    if-nez v2, :cond_3a

    .line 1452
    .line 1453
    move-object/from16 v31, v9

    .line 1454
    .line 1455
    move-object/from16 v26, v10

    .line 1456
    .line 1457
    move-object/from16 v27, v12

    .line 1458
    .line 1459
    goto/16 :goto_b

    .line 1460
    .line 1461
    :cond_3a
    const/4 v2, 0x4

    .line 1462
    invoke-static {v2, v1}, Landroidx/fragment/app/n1;->a(ILjava/util/ArrayList;)V

    .line 1463
    .line 1464
    .line 1465
    new-instance v2, Ljava/util/ArrayList;

    .line 1466
    .line 1467
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1471
    .line 1472
    .line 1473
    move-result v5

    .line 1474
    const/4 v11, 0x0

    .line 1475
    :goto_23
    if-ge v11, v5, :cond_3b

    .line 1476
    .line 1477
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v13

    .line 1481
    check-cast v13, Landroid/view/View;

    .line 1482
    .line 1483
    move/from16 p2, v5

    .line 1484
    .line 1485
    invoke-static {v13}, Lx0/b1;->k(Landroid/view/View;)Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v5

    .line 1489
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    .line 1491
    .line 1492
    const/4 v5, 0x0

    .line 1493
    invoke-static {v13, v5}, Lx0/b1;->D(Landroid/view/View;Ljava/lang/String;)V

    .line 1494
    .line 1495
    .line 1496
    const/4 v5, 0x1

    .line 1497
    add-int/2addr v11, v5

    .line 1498
    move/from16 v5, p2

    .line 1499
    .line 1500
    goto :goto_23

    .line 1501
    :cond_3b
    const/4 v5, 0x2

    .line 1502
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v11

    .line 1506
    if-eqz v11, :cond_3d

    .line 1507
    .line 1508
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v5

    .line 1512
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1513
    .line 1514
    .line 1515
    move-result v11

    .line 1516
    if-eqz v11, :cond_3c

    .line 1517
    .line 1518
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v11

    .line 1522
    const-string v13, "sharedElementFirstOutViews"

    .line 1523
    .line 1524
    invoke-static {v11, v13}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    check-cast v11, Landroid/view/View;

    .line 1528
    .line 1529
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    invoke-static {v11}, Lx0/b1;->k(Landroid/view/View;)Ljava/lang/String;

    .line 1533
    .line 1534
    .line 1535
    goto :goto_24

    .line 1536
    :cond_3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v5

    .line 1540
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1541
    .line 1542
    .line 1543
    move-result v11

    .line 1544
    if-eqz v11, :cond_3d

    .line 1545
    .line 1546
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v11

    .line 1550
    const-string v13, "sharedElementLastInViews"

    .line 1551
    .line 1552
    invoke-static {v11, v13}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1553
    .line 1554
    .line 1555
    check-cast v11, Landroid/view/View;

    .line 1556
    .line 1557
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    invoke-static {v11}, Lx0/b1;->k(Landroid/view/View;)Ljava/lang/String;

    .line 1561
    .line 1562
    .line 1563
    goto :goto_25

    .line 1564
    :cond_3d
    invoke-virtual {v4, v15, v0}, Landroidx/fragment/app/v1;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1568
    .line 1569
    .line 1570
    move-result v0

    .line 1571
    new-instance v5, Ljava/util/ArrayList;

    .line 1572
    .line 1573
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .line 1575
    .line 1576
    const/4 v11, 0x0

    .line 1577
    :goto_26
    if-ge v11, v0, :cond_41

    .line 1578
    .line 1579
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v13

    .line 1583
    check-cast v13, Landroid/view/View;

    .line 1584
    .line 1585
    move-object/from16 v27, v12

    .line 1586
    .line 1587
    invoke-static {v13}, Lx0/b1;->k(Landroid/view/View;)Ljava/lang/String;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v12

    .line 1591
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    .line 1593
    .line 1594
    if-nez v12, :cond_3f

    .line 1595
    .line 1596
    move-object/from16 v31, v9

    .line 1597
    .line 1598
    move-object/from16 v26, v10

    .line 1599
    .line 1600
    :cond_3e
    :goto_27
    const/4 v9, 0x1

    .line 1601
    goto :goto_29

    .line 1602
    :cond_3f
    move-object/from16 v26, v10

    .line 1603
    .line 1604
    const/4 v10, 0x0

    .line 1605
    invoke-static {v13, v10}, Lx0/b1;->D(Landroid/view/View;Ljava/lang/String;)V

    .line 1606
    .line 1607
    .line 1608
    move-object/from16 v13, v16

    .line 1609
    .line 1610
    invoke-virtual {v13, v12}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v16

    .line 1614
    move-object/from16 v10, v16

    .line 1615
    .line 1616
    check-cast v10, Ljava/lang/String;

    .line 1617
    .line 1618
    move-object/from16 v16, v13

    .line 1619
    .line 1620
    const/4 v13, 0x0

    .line 1621
    :goto_28
    move-object/from16 v31, v9

    .line 1622
    .line 1623
    if-ge v13, v0, :cond_3e

    .line 1624
    .line 1625
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v9

    .line 1629
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1630
    .line 1631
    .line 1632
    move-result v9

    .line 1633
    if-eqz v9, :cond_40

    .line 1634
    .line 1635
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v9

    .line 1639
    check-cast v9, Landroid/view/View;

    .line 1640
    .line 1641
    invoke-static {v9, v12}, Lx0/b1;->D(Landroid/view/View;Ljava/lang/String;)V

    .line 1642
    .line 1643
    .line 1644
    goto :goto_27

    .line 1645
    :cond_40
    const/4 v9, 0x1

    .line 1646
    add-int/2addr v13, v9

    .line 1647
    move-object/from16 v9, v31

    .line 1648
    .line 1649
    goto :goto_28

    .line 1650
    :goto_29
    add-int/2addr v11, v9

    .line 1651
    move-object/from16 v10, v26

    .line 1652
    .line 1653
    move-object/from16 v12, v27

    .line 1654
    .line 1655
    move-object/from16 v9, v31

    .line 1656
    .line 1657
    goto :goto_26

    .line 1658
    :cond_41
    move-object/from16 v31, v9

    .line 1659
    .line 1660
    move-object/from16 v26, v10

    .line 1661
    .line 1662
    move-object/from16 v27, v12

    .line 1663
    .line 1664
    const/4 v9, 0x1

    .line 1665
    new-instance v10, Landroidx/fragment/app/u1;

    .line 1666
    .line 1667
    move-object/from16 v19, v10

    .line 1668
    .line 1669
    move/from16 v20, v0

    .line 1670
    .line 1671
    move-object/from16 v21, v3

    .line 1672
    .line 1673
    move-object/from16 v22, v2

    .line 1674
    .line 1675
    move-object/from16 v23, v6

    .line 1676
    .line 1677
    move-object/from16 v24, v5

    .line 1678
    .line 1679
    invoke-direct/range {v19 .. v24}, Landroidx/fragment/app/u1;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1680
    .line 1681
    .line 1682
    invoke-static {v15, v10}, Lx0/a0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1683
    .line 1684
    .line 1685
    const/4 v10, 0x0

    .line 1686
    invoke-static {v10, v1}, Landroidx/fragment/app/n1;->a(ILjava/util/ArrayList;)V

    .line 1687
    .line 1688
    .line 1689
    invoke-virtual {v4, v14, v6, v3}, Landroidx/fragment/app/v1;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1690
    .line 1691
    .line 1692
    :goto_2a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1693
    .line 1694
    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    .line 1695
    .line 1696
    .line 1697
    move-result v6

    .line 1698
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v11

    .line 1702
    new-instance v12, Ljava/util/ArrayList;

    .line 1703
    .line 1704
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v13

    .line 1711
    const/4 v14, 0x0

    .line 1712
    :goto_2b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 1713
    .line 1714
    .line 1715
    move-result v0

    .line 1716
    const-string v5, "context"

    .line 1717
    .line 1718
    if-eqz v0, :cond_4a

    .line 1719
    .line 1720
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v0

    .line 1724
    move-object v4, v0

    .line 1725
    check-cast v4, Landroidx/fragment/app/i;

    .line 1726
    .line 1727
    invoke-virtual {v4}, Landroidx/fragment/app/j;->b()Z

    .line 1728
    .line 1729
    .line 1730
    move-result v0

    .line 1731
    if-eqz v0, :cond_42

    .line 1732
    .line 1733
    invoke-virtual {v4}, Landroidx/fragment/app/j;->a()V

    .line 1734
    .line 1735
    .line 1736
    goto :goto_2b

    .line 1737
    :cond_42
    invoke-static {v11, v5}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1738
    .line 1739
    .line 1740
    invoke-virtual {v4, v11}, Landroidx/fragment/app/i;->c(Landroid/content/Context;)Landroidx/fragment/app/k0;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v0

    .line 1744
    if-nez v0, :cond_43

    .line 1745
    .line 1746
    invoke-virtual {v4}, Landroidx/fragment/app/j;->a()V

    .line 1747
    .line 1748
    .line 1749
    goto :goto_2b

    .line 1750
    :cond_43
    iget-object v0, v0, Landroidx/fragment/app/k0;->b:Ljava/lang/Object;

    .line 1751
    .line 1752
    move-object v5, v0

    .line 1753
    check-cast v5, Landroid/animation/Animator;

    .line 1754
    .line 1755
    if-nez v5, :cond_44

    .line 1756
    .line 1757
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    .line 1759
    .line 1760
    goto :goto_2b

    .line 1761
    :cond_44
    iget-object v3, v4, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/z1;

    .line 1762
    .line 1763
    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v0

    .line 1767
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1768
    .line 1769
    invoke-static {v0, v1}, Lue/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1770
    .line 1771
    .line 1772
    move-result v0

    .line 1773
    iget-object v1, v3, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 1774
    .line 1775
    if-eqz v0, :cond_46

    .line 1776
    .line 1777
    const/4 v0, 0x2

    .line 1778
    invoke-static {v7, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1779
    .line 1780
    .line 1781
    move-result v2

    .line 1782
    if-eqz v2, :cond_45

    .line 1783
    .line 1784
    if-eqz v1, :cond_45

    .line 1785
    .line 1786
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 1787
    .line 1788
    .line 1789
    :cond_45
    invoke-virtual {v4}, Landroidx/fragment/app/j;->a()V

    .line 1790
    .line 1791
    .line 1792
    goto :goto_2b

    .line 1793
    :cond_46
    iget-object v0, v3, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 1794
    .line 1795
    move-object/from16 v14, v31

    .line 1796
    .line 1797
    if-ne v0, v14, :cond_47

    .line 1798
    .line 1799
    const/16 v16, 0x1

    .line 1800
    .line 1801
    goto :goto_2c

    .line 1802
    :cond_47
    const/16 v16, 0x0

    .line 1803
    .line 1804
    :goto_2c
    move-object/from16 v2, v29

    .line 1805
    .line 1806
    if-eqz v16, :cond_48

    .line 1807
    .line 1808
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1809
    .line 1810
    .line 1811
    :cond_48
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1812
    .line 1813
    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1814
    .line 1815
    .line 1816
    new-instance v0, Landroidx/fragment/app/l;

    .line 1817
    .line 1818
    move-object/from16 p1, v0

    .line 1819
    .line 1820
    move-object/from16 p2, v1

    .line 1821
    .line 1822
    move-object/from16 v1, p0

    .line 1823
    .line 1824
    move-object/from16 v17, v2

    .line 1825
    .line 1826
    move-object/from16 v2, p2

    .line 1827
    .line 1828
    move-object/from16 v18, v3

    .line 1829
    .line 1830
    move/from16 v3, v16

    .line 1831
    .line 1832
    move-object/from16 v16, v4

    .line 1833
    .line 1834
    move-object/from16 v4, v18

    .line 1835
    .line 1836
    move-object v9, v5

    .line 1837
    move-object/from16 v5, v16

    .line 1838
    .line 1839
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/n;Landroid/view/View;ZLandroidx/fragment/app/z1;Landroidx/fragment/app/i;)V

    .line 1840
    .line 1841
    .line 1842
    invoke-virtual {v9, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1843
    .line 1844
    .line 1845
    move-object/from16 v0, p2

    .line 1846
    .line 1847
    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    .line 1851
    .line 1852
    .line 1853
    const/4 v0, 0x2

    .line 1854
    invoke-static {v7, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1855
    .line 1856
    .line 1857
    move-result v1

    .line 1858
    if-eqz v1, :cond_49

    .line 1859
    .line 1860
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 1861
    .line 1862
    .line 1863
    :cond_49
    new-instance v0, Landroidx/fragment/app/e;

    .line 1864
    .line 1865
    move-object/from16 v1, v18

    .line 1866
    .line 1867
    invoke-direct {v0, v9, v1}, Landroidx/fragment/app/e;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/z1;)V

    .line 1868
    .line 1869
    .line 1870
    move-object/from16 v1, v16

    .line 1871
    .line 1872
    iget-object v1, v1, Landroidx/fragment/app/j;->b:Lt0/g;

    .line 1873
    .line 1874
    invoke-virtual {v1, v0}, Lt0/g;->a(Lt0/f;)V

    .line 1875
    .line 1876
    .line 1877
    move-object/from16 v31, v14

    .line 1878
    .line 1879
    move-object/from16 v29, v17

    .line 1880
    .line 1881
    const/4 v9, 0x1

    .line 1882
    const/4 v14, 0x1

    .line 1883
    goto/16 :goto_2b

    .line 1884
    .line 1885
    :cond_4a
    move-object/from16 v17, v29

    .line 1886
    .line 1887
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v8

    .line 1891
    :goto_2d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1892
    .line 1893
    .line 1894
    move-result v0

    .line 1895
    if-eqz v0, :cond_53

    .line 1896
    .line 1897
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v0

    .line 1901
    move-object v9, v0

    .line 1902
    check-cast v9, Landroidx/fragment/app/i;

    .line 1903
    .line 1904
    iget-object v4, v9, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/z1;

    .line 1905
    .line 1906
    iget-object v0, v4, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 1907
    .line 1908
    if-eqz v6, :cond_4c

    .line 1909
    .line 1910
    const/4 v1, 0x2

    .line 1911
    invoke-static {v7, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1912
    .line 1913
    .line 1914
    move-result v2

    .line 1915
    if-eqz v2, :cond_4b

    .line 1916
    .line 1917
    if-eqz v0, :cond_4b

    .line 1918
    .line 1919
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 1920
    .line 1921
    .line 1922
    :cond_4b
    invoke-virtual {v9}, Landroidx/fragment/app/j;->a()V

    .line 1923
    .line 1924
    .line 1925
    goto :goto_2d

    .line 1926
    :cond_4c
    if-eqz v14, :cond_4e

    .line 1927
    .line 1928
    const/4 v1, 0x2

    .line 1929
    invoke-static {v7, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1930
    .line 1931
    .line 1932
    move-result v2

    .line 1933
    if-eqz v2, :cond_4d

    .line 1934
    .line 1935
    if-eqz v0, :cond_4d

    .line 1936
    .line 1937
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 1938
    .line 1939
    .line 1940
    :cond_4d
    invoke-virtual {v9}, Landroidx/fragment/app/j;->a()V

    .line 1941
    .line 1942
    .line 1943
    goto :goto_2d

    .line 1944
    :cond_4e
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1945
    .line 1946
    invoke-static {v11, v5}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1947
    .line 1948
    .line 1949
    invoke-virtual {v9, v11}, Landroidx/fragment/app/i;->c(Landroid/content/Context;)Landroidx/fragment/app/k0;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v0

    .line 1953
    const-string v2, "Required value was null."

    .line 1954
    .line 1955
    if-eqz v0, :cond_52

    .line 1956
    .line 1957
    iget-object v0, v0, Landroidx/fragment/app/k0;->a:Ljava/lang/Cloneable;

    .line 1958
    .line 1959
    check-cast v0, Landroid/view/animation/Animation;

    .line 1960
    .line 1961
    if-eqz v0, :cond_51

    .line 1962
    .line 1963
    iget-object v2, v4, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 1964
    .line 1965
    sget-object v3, Landroidx/fragment/app/c2;->a:Landroidx/fragment/app/c2;

    .line 1966
    .line 1967
    if-eq v2, v3, :cond_4f

    .line 1968
    .line 1969
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1970
    .line 1971
    .line 1972
    invoke-virtual {v9}, Landroidx/fragment/app/j;->a()V

    .line 1973
    .line 1974
    .line 1975
    move-object/from16 v10, p0

    .line 1976
    .line 1977
    goto :goto_2e

    .line 1978
    :cond_4f
    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1979
    .line 1980
    .line 1981
    new-instance v2, Landroidx/fragment/app/l0;

    .line 1982
    .line 1983
    invoke-direct {v2, v0, v15, v1}, Landroidx/fragment/app/l0;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1984
    .line 1985
    .line 1986
    new-instance v0, Landroidx/fragment/app/m;

    .line 1987
    .line 1988
    move-object/from16 v10, p0

    .line 1989
    .line 1990
    invoke-direct {v0, v4, v10, v1, v9}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/z1;Landroidx/fragment/app/n;Landroid/view/View;Landroidx/fragment/app/i;)V

    .line 1991
    .line 1992
    .line 1993
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1994
    .line 1995
    .line 1996
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1997
    .line 1998
    .line 1999
    const/4 v0, 0x2

    .line 2000
    invoke-static {v7, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2001
    .line 2002
    .line 2003
    move-result v2

    .line 2004
    if-eqz v2, :cond_50

    .line 2005
    .line 2006
    invoke-virtual {v4}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 2007
    .line 2008
    .line 2009
    :cond_50
    :goto_2e
    new-instance v12, Landroidx/fragment/app/f;

    .line 2010
    .line 2011
    const/4 v13, 0x0

    .line 2012
    move-object v0, v12

    .line 2013
    move-object/from16 v2, p0

    .line 2014
    .line 2015
    move-object v3, v9

    .line 2016
    move-object/from16 v16, v5

    .line 2017
    .line 2018
    move v5, v13

    .line 2019
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2020
    .line 2021
    .line 2022
    iget-object v0, v9, Landroidx/fragment/app/j;->b:Lt0/g;

    .line 2023
    .line 2024
    invoke-virtual {v0, v12}, Lt0/g;->a(Lt0/f;)V

    .line 2025
    .line 2026
    .line 2027
    move-object/from16 v5, v16

    .line 2028
    .line 2029
    goto/16 :goto_2d

    .line 2030
    .line 2031
    :cond_51
    move-object/from16 v10, p0

    .line 2032
    .line 2033
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2034
    .line 2035
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2036
    .line 2037
    .line 2038
    throw v0

    .line 2039
    :cond_52
    move-object/from16 v10, p0

    .line 2040
    .line 2041
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2042
    .line 2043
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2044
    .line 2045
    .line 2046
    throw v0

    .line 2047
    :cond_53
    move-object/from16 v10, p0

    .line 2048
    .line 2049
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v0

    .line 2053
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2054
    .line 2055
    .line 2056
    move-result v1

    .line 2057
    if-eqz v1, :cond_54

    .line 2058
    .line 2059
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v1

    .line 2063
    check-cast v1, Landroidx/fragment/app/z1;

    .line 2064
    .line 2065
    iget-object v2, v1, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 2066
    .line 2067
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2068
    .line 2069
    iget-object v1, v1, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 2070
    .line 2071
    const-string v3, "view"

    .line 2072
    .line 2073
    invoke-static {v2, v3}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2074
    .line 2075
    .line 2076
    invoke-virtual {v1, v2}, Landroidx/fragment/app/c2;->a(Landroid/view/View;)V

    .line 2077
    .line 2078
    .line 2079
    goto :goto_2f

    .line 2080
    :cond_54
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 2081
    .line 2082
    .line 2083
    const/4 v0, 0x2

    .line 2084
    invoke-static {v7, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2085
    .line 2086
    .line 2087
    move-result v0

    .line 2088
    if-eqz v0, :cond_56

    .line 2089
    .line 2090
    if-eqz v26, :cond_55

    .line 2091
    .line 2092
    invoke-virtual/range {v26 .. v26}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 2093
    .line 2094
    .line 2095
    :cond_55
    if-eqz v27, :cond_56

    .line 2096
    .line 2097
    invoke-virtual/range {v27 .. v27}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 2098
    .line 2099
    .line 2100
    :cond_56
    return-void

    .line 2101
    :cond_57
    move-object v10, v6

    .line 2102
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2103
    .line 2104
    const-string v1, "List is empty."

    .line 2105
    .line 2106
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 2107
    .line 2108
    .line 2109
    goto :goto_31

    .line 2110
    :goto_30
    throw v0

    .line 2111
    :goto_31
    goto :goto_30
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/n;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-static {v0}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/n;->g()V

    .line 16
    .line 17
    .line 18
    iput-boolean v1, p0, Landroidx/fragment/app/n;->d:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_6

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-static {v2}, Lje/j;->n0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroidx/fragment/app/z1;

    .line 58
    .line 59
    const-string v4, "FragmentManager"

    .line 60
    .line 61
    const/4 v5, 0x2

    .line 62
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/z1;->a()V

    .line 74
    .line 75
    .line 76
    iget-boolean v4, v3, Landroidx/fragment/app/z1;->g:Z

    .line 77
    .line 78
    if-nez v4, :cond_2

    .line 79
    .line 80
    iget-object v4, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v1

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/n;->k()V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-static {v2}, Lje/j;->n0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_5

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroidx/fragment/app/z1;

    .line 122
    .line 123
    invoke-virtual {v4}, Landroidx/fragment/app/z1;->d()V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    iget-boolean v3, p0, Landroidx/fragment/app/n;->d:Z

    .line 128
    .line 129
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/n;->c(Ljava/util/ArrayList;Z)V

    .line 130
    .line 131
    .line 132
    iput-boolean v1, p0, Landroidx/fragment/app/n;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    :cond_6
    monitor-exit v0

    .line 135
    return-void

    .line 136
    :goto_2
    monitor-exit v0

    .line 137
    goto :goto_4

    .line 138
    :goto_3
    throw v1

    .line 139
    :goto_4
    goto :goto_3
.end method

.method public final f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z1;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

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
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v2, v1

    .line 18
    check-cast v2, Landroidx/fragment/app/z1;

    .line 19
    .line 20
    iget-object v3, v2, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    invoke-static {v3, p1}, Lue/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget-boolean v2, v2, Landroidx/fragment/app/z1;->f:Z

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    check-cast v1, Landroidx/fragment/app/z1;

    .line 35
    .line 36
    return-object v1
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-static {v0}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/n;->k()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/z1;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroidx/fragment/app/z1;->d()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_5

    .line 37
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {v2}, Lje/j;->n0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x2

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroidx/fragment/app/z1;

    .line 59
    .line 60
    const-string v5, "FragmentManager"

    .line 61
    .line 62
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    iget-object v4, p0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    .line 72
    .line 73
    invoke-static {v4}, Landroid/support/v4/media/session/a;->A(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    if-eqz v3, :cond_2

    .line 77
    .line 78
    invoke-virtual {v3}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/z1;->a()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-static {v2}, Lje/j;->n0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Landroidx/fragment/app/z1;

    .line 106
    .line 107
    const-string v5, "FragmentManager"

    .line 108
    .line 109
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_5

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    iget-object v5, p0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    .line 119
    .line 120
    invoke-static {v5}, Landroid/support/v4/media/session/a;->A(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :goto_4
    if-eqz v3, :cond_5

    .line 124
    .line 125
    invoke-virtual {v3}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/z1;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    monitor-exit v1

    .line 133
    return-void

    .line 134
    :goto_5
    monitor-exit v1

    .line 135
    goto :goto_7

    .line 136
    :goto_6
    throw v0

    .line 137
    :goto_7
    goto :goto_6
.end method

.method public final i()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/n;->k()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v4, v2

    .line 29
    check-cast v4, Landroidx/fragment/app/z1;

    .line 30
    .line 31
    iget-object v5, v4, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 34
    .line 35
    const-string v6, "operation.fragment.mView"

    .line 36
    .line 37
    invoke-static {v5, v6}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v5}, Lcom/bumptech/glide/d;->f(Landroid/view/View;)Landroidx/fragment/app/c2;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iget-object v4, v4, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 45
    .line 46
    sget-object v6, Landroidx/fragment/app/c2;->b:Landroidx/fragment/app/c2;

    .line 47
    .line 48
    if-ne v4, v6, :cond_0

    .line 49
    .line 50
    if-eq v5, v6, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    move-object v2, v3

    .line 56
    :goto_0
    check-cast v2, Landroidx/fragment/app/z1;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v3, v2, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 61
    .line 62
    :cond_2
    if-eqz v3, :cond_3

    .line 63
    .line 64
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 v1, 0x0

    .line 70
    :goto_1
    iput-boolean v1, p0, Landroidx/fragment/app/n;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_2
    monitor-exit v0

    .line 75
    goto :goto_4

    .line 76
    :goto_3
    throw v1

    .line 77
    :goto_4
    goto :goto_3
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/fragment/app/z1;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/fragment/app/z1;->b:Landroidx/fragment/app/b2;

    .line 20
    .line 21
    sget-object v3, Landroidx/fragment/app/b2;->b:Landroidx/fragment/app/b2;

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    iget-object v2, v1, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "fragment.requireView()"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    if-eq v2, v3, :cond_2

    .line 44
    .line 45
    const/16 v3, 0x8

    .line 46
    .line 47
    if-ne v2, v3, :cond_1

    .line 48
    .line 49
    sget-object v2, Landroidx/fragment/app/c2;->c:Landroidx/fragment/app/c2;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "Unknown visibility "

    .line 55
    .line 56
    invoke-static {v2, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    sget-object v2, Landroidx/fragment/app/c2;->d:Landroidx/fragment/app/c2;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    sget-object v2, Landroidx/fragment/app/c2;->b:Landroidx/fragment/app/c2;

    .line 68
    .line 69
    :goto_1
    sget-object v3, Landroidx/fragment/app/b2;->a:Landroidx/fragment/app/b2;

    .line 70
    .line 71
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/z1;->c(Landroidx/fragment/app/c2;Landroidx/fragment/app/b2;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    return-void
.end method
