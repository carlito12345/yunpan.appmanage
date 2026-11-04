.class public final Lf2/x0;
.super Lf2/a;
.source "SourceFile"


# instance fields
.field public final h:Lua/i8;

.field public final i:La1/d;

.field public final j:Lb2/g;

.field public final k:Lha/j2;

.field public final l:I

.field public final m:Lr1/p;

.field public n:Z

.field public o:J

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lw1/x;

.field public t:Lr1/y;


# direct methods
.method public constructor <init>(Lr1/y;Lua/i8;La1/d;Lb2/g;Lha/j2;ILr1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf2/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf2/x0;->t:Lr1/y;

    .line 5
    .line 6
    iput-object p2, p0, Lf2/x0;->h:Lua/i8;

    .line 7
    .line 8
    iput-object p3, p0, Lf2/x0;->i:La1/d;

    .line 9
    .line 10
    iput-object p4, p0, Lf2/x0;->j:Lb2/g;

    .line 11
    .line 12
    iput-object p5, p0, Lf2/x0;->k:Lha/j2;

    .line 13
    .line 14
    iput p6, p0, Lf2/x0;->l:I

    .line 15
    .line 16
    iput-object p7, p0, Lf2/x0;->m:Lr1/p;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lf2/x0;->n:Z

    .line 20
    .line 21
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    iput-wide p1, p0, Lf2/x0;->o:J

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lf2/c0;Ls4/a;J)Lf2/a0;
    .locals 17

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v15, Lf2/x0;->h:Lua/i8;

    .line 6
    .line 7
    new-instance v2, Lw1/k;

    .line 8
    .line 9
    iget-object v3, v1, Lua/i8;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, La0/h;

    .line 12
    .line 13
    new-instance v4, Lw1/m;

    .line 14
    .line 15
    iget v5, v3, La0/h;->b:I

    .line 16
    .line 17
    iget v6, v3, La0/h;->c:I

    .line 18
    .line 19
    iget-object v3, v3, La0/h;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lua/i8;

    .line 22
    .line 23
    invoke-direct {v4, v5, v6, v3}, Lw1/m;-><init>(IILua/i8;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v1, Lua/i8;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v2, v1, v4}, Lw1/k;-><init>(Landroid/content/Context;Lw1/h;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v15, Lf2/x0;->s:Lw1/x;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lw1/k;->f(Lw1/x;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lf2/x0;->g()Lr1/y;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v1, v1, Lr1/y;->b:Lr1/v;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v16, Lf2/u0;

    .line 50
    .line 51
    iget-object v3, v15, Lf2/a;->g:Lz1/i;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v3, Lv3/f;

    .line 57
    .line 58
    iget-object v4, v15, Lf2/x0;->i:La1/d;

    .line 59
    .line 60
    iget-object v4, v4, La1/d;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v4, Ll2/r;

    .line 63
    .line 64
    invoke-direct {v3, v4}, Lv3/f;-><init>(Ll2/r;)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Lb2/d;

    .line 68
    .line 69
    iget-object v4, v15, Lf2/a;->d:Lb2/d;

    .line 70
    .line 71
    iget-object v4, v4, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    invoke-direct {v5, v4, v6, v0}, Lb2/d;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILf2/c0;)V

    .line 75
    .line 76
    .line 77
    new-instance v7, Lb2/d;

    .line 78
    .line 79
    iget-object v4, v15, Lf2/a;->c:Lb2/d;

    .line 80
    .line 81
    iget-object v4, v4, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    .line 83
    invoke-direct {v7, v4, v6, v0}, Lb2/d;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILf2/c0;)V

    .line 84
    .line 85
    .line 86
    iget-wide v8, v1, Lr1/v;->e:J

    .line 87
    .line 88
    invoke-static {v8, v9}, Lu1/f0;->G(J)J

    .line 89
    .line 90
    .line 91
    move-result-wide v12

    .line 92
    iget v10, v15, Lf2/x0;->l:I

    .line 93
    .line 94
    iget-object v11, v15, Lf2/x0;->m:Lr1/p;

    .line 95
    .line 96
    iget-object v1, v1, Lr1/v;->a:Landroid/net/Uri;

    .line 97
    .line 98
    iget-object v4, v15, Lf2/x0;->j:Lb2/g;

    .line 99
    .line 100
    iget-object v6, v15, Lf2/x0;->k:Lha/j2;

    .line 101
    .line 102
    const/4 v14, 0x0

    .line 103
    move-object/from16 v0, v16

    .line 104
    .line 105
    move-object/from16 v8, p0

    .line 106
    .line 107
    move-object/from16 v9, p2

    .line 108
    .line 109
    invoke-direct/range {v0 .. v14}, Lf2/u0;-><init>(Landroid/net/Uri;Lw1/h;Lv3/f;Lb2/g;Lb2/d;Lha/j2;Lb2/d;Lf2/x0;Ls4/a;ILr1/p;JLj2/a;)V

    .line 110
    .line 111
    .line 112
    return-object v16
.end method

.method public final declared-synchronized g()Lr1/y;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lf2/x0;->t:Lr1/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final i()V
    .locals 0

    .line 1
    return-void
.end method

.method public final k(Lw1/x;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf2/x0;->s:Lw1/x;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lf2/a;->g:Lz1/i;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lf2/x0;->j:Lb2/g;

    .line 16
    .line 17
    invoke-interface {v1, p1, v0}, Lb2/g;->g(Landroid/os/Looper;Lz1/i;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Lb2/g;->e()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lf2/x0;->s()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final m(Lf2/a0;)V
    .locals 7

    .line 1
    check-cast p1, Lf2/u0;

    .line 2
    .line 3
    iget-boolean v0, p1, Lf2/u0;->z:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lf2/u0;->w:[Lf2/b1;

    .line 9
    .line 10
    array-length v2, v0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    invoke-virtual {v4}, Lf2/b1;->i()V

    .line 17
    .line 18
    .line 19
    iget-object v5, v4, Lf2/b1;->h:La1/i;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    iget-object v6, v4, Lf2/b1;->e:Lb2/d;

    .line 24
    .line 25
    invoke-virtual {v5, v6}, La1/i;->C(Lb2/d;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v4, Lf2/b1;->h:La1/i;

    .line 29
    .line 30
    iput-object v1, v4, Lf2/b1;->g:Lr1/p;

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p1, Lf2/u0;->l:Li2/j;

    .line 36
    .line 37
    iget-object v2, v0, Li2/j;->b:Li2/h;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Li2/h;->a(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    new-instance v2, Landroidx/activity/h;

    .line 46
    .line 47
    const/16 v4, 0xb

    .line 48
    .line 49
    invoke-direct {v2, v4, p1}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Li2/j;->a:Lj2/a;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lj2/a;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, v0, Lj2/a;->b:Lha/jd;

    .line 58
    .line 59
    iget-object v0, v0, Lj2/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p1, Lf2/u0;->r:Landroid/os/Handler;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p1, Lf2/u0;->s:Lf2/z;

    .line 70
    .line 71
    iput-boolean v3, p1, Lf2/u0;->V:Z

    .line 72
    .line 73
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/x0;->j:Lb2/g;

    .line 2
    .line 3
    invoke-interface {v0}, Lb2/g;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized r(Lr1/y;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lf2/x0;->t:Lr1/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public final s()V
    .locals 7

    .line 1
    new-instance v6, Lf2/f1;

    .line 2
    .line 3
    iget-wide v1, p0, Lf2/x0;->o:J

    .line 4
    .line 5
    iget-boolean v3, p0, Lf2/x0;->p:Z

    .line 6
    .line 7
    iget-boolean v4, p0, Lf2/x0;->q:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lf2/x0;->g()Lr1/y;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lf2/f1;-><init>(JZZLr1/y;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lf2/x0;->n:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lf2/v0;

    .line 22
    .line 23
    invoke-direct {v0, v6}, Lf2/v0;-><init>(Lf2/f1;)V

    .line 24
    .line 25
    .line 26
    move-object v6, v0

    .line 27
    :cond_0
    invoke-virtual {p0, v6}, Lf2/a;->l(Lr1/q0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final t(JLl2/c0;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf2/x0;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p3}, Ll2/c0;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p3}, Ll2/c0;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Lf2/x0;->r:Z

    .line 19
    .line 20
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v2, p1, v0

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-wide p1, p0, Lf2/x0;->o:J

    .line 30
    .line 31
    :cond_1
    invoke-interface {p3}, Ll2/c0;->c()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    iget-boolean v0, p0, Lf2/x0;->n:Z

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-wide v0, p0, Lf2/x0;->o:J

    .line 40
    .line 41
    cmp-long v2, v0, p1

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    iget-boolean v0, p0, Lf2/x0;->p:Z

    .line 46
    .line 47
    if-ne v0, p3, :cond_2

    .line 48
    .line 49
    iget-boolean v0, p0, Lf2/x0;->q:Z

    .line 50
    .line 51
    if-ne v0, p4, :cond_2

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iput-wide p1, p0, Lf2/x0;->o:J

    .line 55
    .line 56
    iput-boolean p3, p0, Lf2/x0;->p:Z

    .line 57
    .line 58
    iput-boolean p4, p0, Lf2/x0;->q:Z

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lf2/x0;->n:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Lf2/x0;->s()V

    .line 64
    .line 65
    .line 66
    return-void
.end method
