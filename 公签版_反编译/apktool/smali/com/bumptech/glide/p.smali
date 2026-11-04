.class public Lcom/bumptech/glide/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/h;


# static fields
.field public static final k:Lw5/e;


# instance fields
.field public final a:Lcom/bumptech/glide/b;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/bumptech/glide/manager/g;

.field public final d:Lcom/bumptech/glide/manager/s;

.field public final e:Lcom/bumptech/glide/manager/l;

.field public final f:Lcom/bumptech/glide/manager/t;

.field public final g:Landroidx/activity/h;

.field public final h:Lcom/bumptech/glide/manager/b;

.field public final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public j:Lw5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw5/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lw5/e;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lw5/a;->d(Ljava/lang/Class;)Lw5/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lw5/e;

    .line 13
    .line 14
    invoke-virtual {v0}, Lw5/a;->j()Lw5/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lw5/e;

    .line 19
    .line 20
    sput-object v0, Lcom/bumptech/glide/p;->k:Lw5/e;

    .line 21
    .line 22
    new-instance v0, Lw5/e;

    .line 23
    .line 24
    invoke-direct {v0}, Lw5/e;-><init>()V

    .line 25
    .line 26
    .line 27
    const-class v1, Ls5/b;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lw5/a;->d(Ljava/lang/Class;)Lw5/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lw5/e;

    .line 34
    .line 35
    invoke-virtual {v0}, Lw5/a;->j()Lw5/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lw5/e;

    .line 40
    .line 41
    sget-object v0, Lh5/l;->c:Lh5/l;

    .line 42
    .line 43
    new-instance v1, Lw5/e;

    .line 44
    .line 45
    invoke-direct {v1}, Lw5/e;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lw5/a;->e(Lh5/l;)Lw5/a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lw5/e;

    .line 53
    .line 54
    invoke-virtual {v0}, Lw5/a;->p()Lw5/a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lw5/e;

    .line 59
    .line 60
    invoke-virtual {v0}, Lw5/a;->u()Lw5/a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lw5/e;

    .line 65
    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/manager/s;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/bumptech/glide/b;->f:Lm7/e;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/bumptech/glide/manager/t;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/bumptech/glide/manager/t;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/bumptech/glide/p;->f:Lcom/bumptech/glide/manager/t;

    .line 17
    .line 18
    new-instance v2, Landroidx/activity/h;

    .line 19
    .line 20
    const/4 v3, 0x6

    .line 21
    invoke-direct {v2, v3, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/bumptech/glide/p;->g:Landroidx/activity/h;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/b;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/bumptech/glide/p;->c:Lcom/bumptech/glide/manager/g;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/bumptech/glide/p;->e:Lcom/bumptech/glide/manager/l;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/bumptech/glide/p;->d:Lcom/bumptech/glide/manager/s;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/bumptech/glide/p;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    new-instance p4, Lcom/bumptech/glide/o;

    .line 41
    .line 42
    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/p;Lcom/bumptech/glide/manager/s;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 49
    .line 50
    invoke-static {p3, v0}, Ln0/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    new-instance v0, Lcom/bumptech/glide/manager/c;

    .line 57
    .line 58
    invoke-direct {v0, p3, p4}, Lcom/bumptech/glide/manager/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/o;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lcom/bumptech/glide/manager/j;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/bumptech/glide/manager/j;-><init>()V

    .line 65
    .line 66
    .line 67
    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/p;->h:Lcom/bumptech/glide/manager/b;

    .line 68
    .line 69
    iget-object p3, p1, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 70
    .line 71
    monitor-enter p3

    .line 72
    :try_start_0
    iget-object p4, p1, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p4

    .line 78
    if-nez p4, :cond_3

    .line 79
    .line 80
    iget-object p4, p1, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    sget-object p3, La6/q;->a:[C

    .line 87
    .line 88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    if-ne p3, p4, :cond_1

    .line 97
    .line 98
    const/4 p3, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const/4 p3, 0x0

    .line 101
    :goto_1
    if-nez p3, :cond_2

    .line 102
    .line 103
    invoke-static {}, La6/q;->f()Landroid/os/Handler;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/g;->h(Lcom/bumptech/glide/manager/h;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/g;->h(Lcom/bumptech/glide/manager/h;)V

    .line 115
    .line 116
    .line 117
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 118
    .line 119
    iget-object p3, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/f;

    .line 120
    .line 121
    iget-object p3, p3, Lcom/bumptech/glide/f;->e:Ljava/util/List;

    .line 122
    .line 123
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .line 125
    .line 126
    iput-object p2, p0, Lcom/bumptech/glide/p;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/f;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/bumptech/glide/f;->a()Lw5/e;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/p;->x(Lw5/e;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    goto :goto_3

    .line 140
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    const-string p2, "Cannot register already registered manager"

    .line 143
    .line 144
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :goto_3
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p1
.end method


# virtual methods
.method public final declared-synchronized c()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/p;->f:Lcom/bumptech/glide/manager/t;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/t;->c()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/p;->p()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/p;->d:Lcom/bumptech/glide/manager/s;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/util/Set;

    .line 15
    .line 16
    invoke-static {v1}, La6/q;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lw5/c;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/s;->c(Lw5/c;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/bumptech/glide/p;->c:Lcom/bumptech/glide/manager/g;

    .line 48
    .line 49
    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/g;->l(Lcom/bumptech/glide/manager/h;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/p;->c:Lcom/bumptech/glide/manager/g;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/bumptech/glide/p;->h:Lcom/bumptech/glide/manager/b;

    .line 55
    .line 56
    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/g;->l(Lcom/bumptech/glide/manager/h;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/p;->g:Landroidx/activity/h;

    .line 60
    .line 61
    invoke-static {}, La6/q;->f()Landroid/os/Handler;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/b;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/b;->e(Lcom/bumptech/glide/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    goto :goto_2

    .line 78
    :goto_1
    throw v0

    .line 79
    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized e()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/p;->f:Lcom/bumptech/glide/manager/t;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/t;->e()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/p;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final declared-synchronized k()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/p;->w()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/p;->f:Lcom/bumptech/glide/manager/t;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/t;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public l(Ljava/lang/Class;)Lcom/bumptech/glide/m;
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/m;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/p;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/m;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/p;Ljava/lang/Class;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public m()Lcom/bumptech/glide/m;
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/p;->l(Ljava/lang/Class;)Lcom/bumptech/glide/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/bumptech/glide/p;->k:Lw5/e;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public n()Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/p;->l(Ljava/lang/Class;)Lcom/bumptech/glide/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o(Lx5/e;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/p;->y(Lx5/e;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-interface {p1}, Lx5/e;->g()Lw5/c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/b;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v0, v0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/bumptech/glide/p;

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Lcom/bumptech/glide/p;->y(Lx5/e;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    monitor-exit v2

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-interface {p1, v0}, Lx5/e;->j(Lw5/c;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Lw5/c;->clear()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p1

    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized p()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/p;->f:Lcom/bumptech/glide/manager/t;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->a:Ljava/util/Set;

    .line 5
    .line 6
    invoke-static {v0}, La6/q;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lx5/e;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/p;->f:Lcom/bumptech/glide/manager/t;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->a:Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_3

    .line 43
    :goto_2
    throw v0

    .line 44
    :goto_3
    goto :goto_2
.end method

.method public q()Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/p;->n()Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/m;->F()Lcom/bumptech/glide/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public r(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/p;->n()Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->G(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public s(Ljava/io/File;)Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/p;->n()Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->H(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public t(Ljava/lang/Object;)Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/p;->n()Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->I(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "{tracker="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/p;->d:Lcom/bumptech/glide/manager/s;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", treeNode="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/p;->e:Lcom/bumptech/glide/manager/l;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "}"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v0
.end method

.method public u(Ljava/lang/String;)Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/p;->n()Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->J(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final declared-synchronized v()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/p;->d:Lcom/bumptech/glide/manager/s;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/Set;

    .line 10
    .line 11
    invoke-static {v1}, La6/q;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lw5/c;

    .line 30
    .line 31
    invoke-interface {v2}, Lw5/c;->isRunning()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v2}, Lw5/c;->pause()V

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_2

    .line 53
    :goto_1
    throw v0

    .line 54
    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized w()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/p;->d:Lcom/bumptech/glide/manager/s;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/Set;

    .line 10
    .line 11
    invoke-static {v1}, La6/q;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lw5/c;

    .line 30
    .line 31
    invoke-interface {v2}, Lw5/c;->j()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v2}, Lw5/c;->isRunning()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Lw5/c;->h()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_2

    .line 59
    :goto_1
    throw v0

    .line 60
    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized x(Lw5/e;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lw5/a;->c()Lw5/a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Lw5/e;

    .line 7
    .line 8
    invoke-virtual {p1}, Lw5/a;->b()Lw5/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lw5/e;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bumptech/glide/p;->j:Lw5/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public final declared-synchronized y(Lx5/e;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lx5/e;->g()Lw5/c;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/p;->d:Lcom/bumptech/glide/manager/s;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/s;->c(Lw5/c;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bumptech/glide/p;->f:Lcom/bumptech/glide/manager/t;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->a:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-interface {p1, v0}, Lx5/e;->j(Lw5/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return v1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    monitor-exit p0

    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p1
.end method
