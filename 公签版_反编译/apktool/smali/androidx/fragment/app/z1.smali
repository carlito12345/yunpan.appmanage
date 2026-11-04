.class public final Landroidx/fragment/app/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/fragment/app/c2;

.field public b:Landroidx/fragment/app/b2;

.field public final c:Landroidx/fragment/app/Fragment;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/LinkedHashSet;

.field public f:Z

.field public g:Z

.field public final h:Landroidx/fragment/app/k1;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c2;Landroidx/fragment/app/b2;Landroidx/fragment/app/k1;Lt0/g;)V
    .locals 2

    .line 1
    const-string v0, "fragmentStateManager"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p3, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    const-string v1, "fragmentStateManager.fragment"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "fragment"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/fragment/app/z1;->b:Landroidx/fragment/app/b2;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/fragment/app/z1;->d:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroidx/fragment/app/z1;->e:Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    new-instance p1, Landroidx/fragment/app/a2;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Landroidx/fragment/app/a2;-><init>(Landroidx/fragment/app/z1;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, p1}, Lt0/g;->a(Lt0/f;)V

    .line 47
    .line 48
    .line 49
    iput-object p3, p0, Landroidx/fragment/app/z1;->h:Landroidx/fragment/app/k1;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/z1;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/z1;->f:Z

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/fragment/app/z1;->e:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/z1;->b()V

    .line 18
    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lt0/g;

    .line 41
    .line 42
    monitor-enter v2

    .line 43
    :try_start_0
    iget-boolean v3, v2, Lt0/g;->a:Z

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    monitor-exit v2

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iput-boolean v0, v2, Lt0/g;->a:Z

    .line 52
    .line 53
    iput-boolean v0, v2, Lt0/g;->c:Z

    .line 54
    .line 55
    iget-object v3, v2, Lt0/g;->b:Lt0/f;

    .line 56
    .line 57
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const/4 v4, 0x0

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    :try_start_1
    invoke-interface {v3}, Lt0/f;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    monitor-enter v2

    .line 67
    :try_start_2
    iput-boolean v4, v2, Lt0/g;->c:Z

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 70
    .line 71
    .line 72
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    throw v0

    .line 74
    :catchall_2
    move-exception v0

    .line 75
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 76
    throw v0

    .line 77
    :cond_3
    :goto_1
    monitor-enter v2

    .line 78
    :try_start_4
    iput-boolean v4, v2, Lt0/g;->c:Z

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 81
    .line 82
    .line 83
    monitor-exit v2

    .line 84
    goto :goto_0

    .line 85
    :catchall_3
    move-exception v0

    .line 86
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 87
    throw v0

    .line 88
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    throw v0

    .line 90
    :cond_4
    :goto_3
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/z1;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const-string v0, "FragmentManager"

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroidx/fragment/app/z1;->g:Z

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/fragment/app/z1;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/z1;->h:Landroidx/fragment/app/k1;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/k1;->i()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final c(Landroidx/fragment/app/c2;Landroidx/fragment/app/b2;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    sget-object v0, Landroidx/fragment/app/c2;->a:Landroidx/fragment/app/c2;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    const-string v2, "FragmentManager"

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz p2, :cond_6

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    if-eq p2, p1, :cond_3

    .line 16
    .line 17
    if-eq p2, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroidx/fragment/app/z1;->b:Landroidx/fragment/app/b2;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    :cond_2
    iput-object v0, p0, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 42
    .line 43
    sget-object p1, Landroidx/fragment/app/b2;->c:Landroidx/fragment/app/b2;

    .line 44
    .line 45
    iput-object p1, p0, Landroidx/fragment/app/z1;->b:Landroidx/fragment/app/b2;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 49
    .line 50
    if-ne p1, v0, :cond_9

    .line 51
    .line 52
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/z1;->b:Landroidx/fragment/app/b2;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    :cond_5
    sget-object p1, Landroidx/fragment/app/c2;->b:Landroidx/fragment/app/c2;

    .line 69
    .line 70
    iput-object p1, p0, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 71
    .line 72
    sget-object p1, Landroidx/fragment/app/b2;->b:Landroidx/fragment/app/b2;

    .line 73
    .line 74
    iput-object p1, p0, Landroidx/fragment/app/z1;->b:Landroidx/fragment/app/b2;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    iget-object p2, p0, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 78
    .line 79
    if-eq p2, v0, :cond_9

    .line 80
    .line 81
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_8

    .line 86
    .line 87
    if-eqz v1, :cond_7

    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    :cond_7
    iget-object p2, p0, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    :cond_8
    iput-object p1, p0, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 101
    .line 102
    :cond_9
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z1;->b:Landroidx/fragment/app/b2;

    .line 2
    .line 3
    sget-object v1, Landroidx/fragment/app/b2;->b:Landroidx/fragment/app/b2;

    .line 4
    .line 5
    const-string v2, "FragmentManager"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const-string v4, "fragmentStateManager.fragment"

    .line 9
    .line 10
    iget-object v5, p0, Landroidx/fragment/app/z1;->h:Landroidx/fragment/app/k1;

    .line 11
    .line 12
    if-ne v0, v1, :cond_3

    .line 13
    .line 14
    iget-object v0, v5, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    invoke-static {v0, v4}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "this.fragment.requireView()"

    .line 49
    .line 50
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v5}, Landroidx/fragment/app/k1;->a()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    cmpg-float v2, v2, v3

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    const/4 v2, 0x4

    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    sget-object v1, Landroidx/fragment/app/b2;->c:Landroidx/fragment/app/b2;

    .line 93
    .line 94
    if-ne v0, v1, :cond_6

    .line 95
    .line 96
    iget-object v0, v5, Landroidx/fragment/app/k1;->c:Landroidx/fragment/app/Fragment;

    .line 97
    .line 98
    invoke-static {v0, v4}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v4, "fragment.requireView()"

    .line 106
    .line 107
    invoke-static {v1, v4}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Operation {"

    .line 10
    .line 11
    const-string v2, "} {finalState = "

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " lifecycleImpact = "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroidx/fragment/app/z1;->b:Landroidx/fragment/app/b2;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " fragment = "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v1, 0x7d

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
