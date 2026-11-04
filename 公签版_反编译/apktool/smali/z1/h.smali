.class public final Lz1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/b;


# instance fields
.field public A:I

.field public B:Z

.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lz1/g;

.field public final d:Landroid/media/metrics/PlaybackSession;

.field public final e:J

.field public final f:Lr1/p0;

.field public final g:Lr1/o0;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/HashMap;

.field public j:Ljava/lang/String;

.field public k:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public l:I

.field public m:I

.field public n:I

.field public o:Ly1/k;

.field public p:Lua/i8;

.field public q:Lua/i8;

.field public r:Lua/i8;

.field public s:Lr1/p;

.field public t:Lr1/p;

.field public u:Lr1/p;

.field public v:Z

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lz1/h;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lz1/h;->d:Landroid/media/metrics/PlaybackSession;

    .line 11
    .line 12
    invoke-static {}, Lu1/a;->h()Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lz1/h;->b:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    new-instance p1, Lr1/p0;

    .line 19
    .line 20
    invoke-direct {p1}, Lr1/p0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lz1/h;->f:Lr1/p0;

    .line 24
    .line 25
    new-instance p1, Lr1/o0;

    .line 26
    .line 27
    invoke-direct {p1}, Lr1/o0;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lz1/h;->g:Lr1/o0;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lz1/h;->i:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lz1/h;->h:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    iput-wide p1, p0, Lz1/h;->e:J

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lz1/h;->m:I

    .line 54
    .line 55
    iput p1, p0, Lz1/h;->n:I

    .line 56
    .line 57
    new-instance p1, Lz1/g;

    .line 58
    .line 59
    invoke-direct {p1}, Lz1/g;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lz1/h;->c:Lz1/g;

    .line 63
    .line 64
    iput-object p0, p1, Lz1/g;->d:Lz1/h;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lua/i8;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lua/i8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lz1/h;->c:Lz1/g;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, v0, Lz1/g;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-boolean v2, p0, Lz1/h;->B:Z

    .line 7
    .line 8
    if-eqz v2, :cond_3

    .line 9
    .line 10
    iget v2, p0, Lz1/h;->A:I

    .line 11
    .line 12
    invoke-static {v0, v2}, Lx0/d;->i(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 16
    .line 17
    iget v2, p0, Lz1/h;->y:I

    .line 18
    .line 19
    invoke-static {v0, v2}, Lx0/d;->y(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 23
    .line 24
    iget v2, p0, Lz1/h;->z:I

    .line 25
    .line 26
    invoke-static {v0, v2}, Lx0/d;->z(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lz1/h;->h:Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object v2, p0, Lz1/h;->j:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Long;

    .line 38
    .line 39
    iget-object v2, p0, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 40
    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    move-wide v5, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    :goto_0
    invoke-static {v2, v5, v6}, Lx0/d;->v(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lz1/h;->i:Ljava/util/HashMap;

    .line 55
    .line 56
    iget-object v2, p0, Lz1/h;->j:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Long;

    .line 63
    .line 64
    iget-object v2, p0, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    move-wide v5, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    :goto_1
    invoke-static {v2, v5, v6}, Lx0/d;->x(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    cmp-long v0, v5, v3

    .line 86
    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    const/4 v0, 0x0

    .line 92
    :goto_2
    invoke-static {v2, v0}, Lx0/d;->A(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 96
    .line 97
    invoke-static {v0}, Lx0/d;->f(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v2, Ls1/f;

    .line 102
    .line 103
    const/16 v3, 0x16

    .line 104
    .line 105
    invoke-direct {v2, p0, v3, v0}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lz1/h;->b:Ljava/util/concurrent/Executor;

    .line 109
    .line 110
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 115
    .line 116
    iput-object v0, p0, Lz1/h;->j:Ljava/lang/String;

    .line 117
    .line 118
    iput v1, p0, Lz1/h;->A:I

    .line 119
    .line 120
    iput v1, p0, Lz1/h;->y:I

    .line 121
    .line 122
    iput v1, p0, Lz1/h;->z:I

    .line 123
    .line 124
    iput-object v0, p0, Lz1/h;->s:Lr1/p;

    .line 125
    .line 126
    iput-object v0, p0, Lz1/h;->t:Lr1/p;

    .line 127
    .line 128
    iput-object v0, p0, Lz1/h;->u:Lr1/p;

    .line 129
    .line 130
    iput-boolean v1, p0, Lz1/h;->B:Z

    .line 131
    .line 132
    return-void
.end method

.method public final c(Lr1/q0;Lf2/c0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p2, p2, Lf2/c0;->a:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne p2, v1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v1, p0, Lz1/h;->g:Lr1/o0;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, p2, v1, v2}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 20
    .line 21
    .line 22
    iget p2, v1, Lr1/o0;->c:I

    .line 23
    .line 24
    iget-object v1, p0, Lz1/h;->f:Lr1/p0;

    .line 25
    .line 26
    invoke-virtual {p1, p2, v1}, Lr1/q0;->n(ILr1/p0;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v1, Lr1/p0;->c:Lr1/y;

    .line 30
    .line 31
    iget-object p1, p1, Lr1/y;->b:Lr1/v;

    .line 32
    .line 33
    const/4 p2, 0x2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v2, p1, Lr1/v;->a:Landroid/net/Uri;

    .line 39
    .line 40
    iget-object p1, p1, Lr1/v;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v2, p1}, Lu1/f0;->z(Landroid/net/Uri;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_5

    .line 47
    .line 48
    if-eq p1, v3, :cond_4

    .line 49
    .line 50
    if-eq p1, p2, :cond_3

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v2, 0x4

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    const/4 v2, 0x5

    .line 57
    goto :goto_0

    .line 58
    :cond_5
    const/4 v2, 0x3

    .line 59
    :goto_0
    invoke-static {v0, v2}, Lx0/d;->u(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 60
    .line 61
    .line 62
    iget-wide v4, v1, Lr1/p0;->l:J

    .line 63
    .line 64
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    cmp-long p1, v4, v6

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    iget-boolean p1, v1, Lr1/p0;->j:Z

    .line 74
    .line 75
    if-nez p1, :cond_6

    .line 76
    .line 77
    iget-boolean p1, v1, Lr1/p0;->h:Z

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    invoke-virtual {v1}, Lr1/p0;->a()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    iget-wide v4, v1, Lr1/p0;->l:J

    .line 88
    .line 89
    invoke-static {v4, v5}, Lu1/f0;->R(J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-static {v0, v4, v5}, Lx0/d;->j(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 94
    .line 95
    .line 96
    :cond_6
    invoke-virtual {v1}, Lr1/p0;->a()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_7
    const/4 p2, 0x1

    .line 104
    :goto_1
    invoke-static {v0, p2}, Lx0/d;->w(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 105
    .line 106
    .line 107
    iput-boolean v3, p0, Lz1/h;->B:Z

    .line 108
    .line 109
    return-void
.end method

.method public final d(Lr1/m0;Lua/i8;)V
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v1, v0, Lua/i8;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lr1/n;

    .line 8
    .line 9
    iget-object v1, v1, Lr1/n;->a:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v8, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, v0, Lua/i8;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lr1/n;

    .line 23
    .line 24
    iget-object v2, v2, Lr1/n;->a:Landroid/util/SparseBooleanArray;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/16 v9, 0xb

    .line 31
    .line 32
    if-ge v1, v2, :cond_7

    .line 33
    .line 34
    iget-object v2, v0, Lua/i8;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lr1/n;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lr1/n;->a(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, v0, Lua/i8;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lz1/a;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    if-nez v2, :cond_5

    .line 56
    .line 57
    iget-object v4, v7, Lz1/h;->c:Lz1/g;

    .line 58
    .line 59
    monitor-enter v4

    .line 60
    :try_start_0
    iget-object v2, v4, Lz1/g;->d:Lz1/h;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v2, v4, Lz1/g;->e:Lr1/q0;

    .line 66
    .line 67
    iget-object v5, v3, Lz1/a;->b:Lr1/q0;

    .line 68
    .line 69
    iput-object v5, v4, Lz1/g;->e:Lr1/q0;

    .line 70
    .line 71
    iget-object v5, v4, Lz1/g;->c:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_4

    .line 86
    .line 87
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Lz1/f;

    .line 92
    .line 93
    iget-object v9, v4, Lz1/g;->e:Lr1/q0;

    .line 94
    .line 95
    invoke-virtual {v6, v2, v9}, Lz1/f;->b(Lr1/q0;Lr1/q0;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_2

    .line 100
    .line 101
    invoke-virtual {v6, v3}, Lz1/f;->a(Lz1/a;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto :goto_3

    .line 110
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 111
    .line 112
    .line 113
    iget-object v9, v6, Lz1/f;->a:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v10, v4, Lz1/g;->f:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-eqz v9, :cond_3

    .line 122
    .line 123
    invoke-virtual {v4, v6}, Lz1/g;->a(Lz1/f;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    iget-boolean v9, v6, Lz1/f;->e:Z

    .line 127
    .line 128
    if-eqz v9, :cond_1

    .line 129
    .line 130
    iget-object v9, v4, Lz1/g;->d:Lz1/h;

    .line 131
    .line 132
    iget-object v6, v6, Lz1/f;->a:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v9, v3, v6}, Lz1/h;->f(Lz1/a;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    invoke-virtual {v4, v3}, Lz1/g;->e(Lz1/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    monitor-exit v4

    .line 142
    goto :goto_4

    .line 143
    :goto_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    throw v0

    .line 145
    :cond_5
    if-ne v2, v9, :cond_6

    .line 146
    .line 147
    iget-object v2, v7, Lz1/h;->c:Lz1/g;

    .line 148
    .line 149
    iget v4, v7, Lz1/h;->l:I

    .line 150
    .line 151
    invoke-virtual {v2, v3, v4}, Lz1/g;->g(Lz1/a;I)V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_6
    iget-object v2, v7, Lz1/h;->c:Lz1/g;

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Lz1/g;->f(Lz1/a;)V

    .line 158
    .line 159
    .line 160
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 165
    .line 166
    .line 167
    move-result-wide v10

    .line 168
    invoke-virtual {v0, v8}, Lua/i8;->o(I)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_8

    .line 173
    .line 174
    iget-object v1, v0, Lua/i8;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v1, Landroid/util/SparseArray;

    .line 177
    .line 178
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Lz1/a;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    iget-object v2, v7, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 188
    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    iget-object v2, v1, Lz1/a;->b:Lr1/q0;

    .line 192
    .line 193
    iget-object v1, v1, Lz1/a;->d:Lf2/c0;

    .line 194
    .line 195
    invoke-virtual {v7, v2, v1}, Lz1/h;->c(Lr1/q0;Lf2/c0;)V

    .line 196
    .line 197
    .line 198
    :cond_8
    const/4 v12, 0x2

    .line 199
    invoke-virtual {v0, v12}, Lua/i8;->o(I)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    const/4 v13, 0x1

    .line 204
    if-eqz v1, :cond_10

    .line 205
    .line 206
    iget-object v1, v7, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 207
    .line 208
    if-eqz v1, :cond_10

    .line 209
    .line 210
    move-object/from16 v1, p1

    .line 211
    .line 212
    check-cast v1, Ly1/x;

    .line 213
    .line 214
    invoke-virtual {v1}, Ly1/x;->F()Lr1/x0;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iget-object v1, v1, Lr1/x0;->a:Lu7/g0;

    .line 219
    .line 220
    invoke-virtual {v1, v8}, Lu7/g0;->o(I)Lu7/e0;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    :cond_9
    invoke-virtual {v1}, Lu7/e0;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_b

    .line 229
    .line 230
    invoke-virtual {v1}, Lu7/e0;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Lr1/w0;

    .line 235
    .line 236
    const/4 v3, 0x0

    .line 237
    :goto_5
    iget v4, v2, Lr1/w0;->a:I

    .line 238
    .line 239
    if-ge v3, v4, :cond_9

    .line 240
    .line 241
    iget-object v4, v2, Lr1/w0;->e:[Z

    .line 242
    .line 243
    aget-boolean v4, v4, v3

    .line 244
    .line 245
    if-eqz v4, :cond_a

    .line 246
    .line 247
    iget-object v4, v2, Lr1/w0;->b:Lr1/r0;

    .line 248
    .line 249
    iget-object v4, v4, Lr1/r0;->d:[Lr1/p;

    .line 250
    .line 251
    aget-object v4, v4, v3

    .line 252
    .line 253
    iget-object v4, v4, Lr1/p;->s:Lr1/l;

    .line 254
    .line 255
    if-eqz v4, :cond_a

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_b
    const/4 v4, 0x0

    .line 262
    :goto_6
    if-eqz v4, :cond_10

    .line 263
    .line 264
    iget-object v1, v7, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 265
    .line 266
    const/4 v2, 0x0

    .line 267
    :goto_7
    iget v3, v4, Lr1/l;->d:I

    .line 268
    .line 269
    if-ge v2, v3, :cond_f

    .line 270
    .line 271
    iget-object v3, v4, Lr1/l;->a:[Lr1/k;

    .line 272
    .line 273
    aget-object v3, v3, v2

    .line 274
    .line 275
    iget-object v3, v3, Lr1/k;->b:Ljava/util/UUID;

    .line 276
    .line 277
    sget-object v5, Lr1/f;->d:Ljava/util/UUID;

    .line 278
    .line 279
    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_c

    .line 284
    .line 285
    const/4 v2, 0x3

    .line 286
    goto :goto_8

    .line 287
    :cond_c
    sget-object v5, Lr1/f;->e:Ljava/util/UUID;

    .line 288
    .line 289
    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-eqz v5, :cond_d

    .line 294
    .line 295
    const/4 v2, 0x2

    .line 296
    goto :goto_8

    .line 297
    :cond_d
    sget-object v5, Lr1/f;->c:Ljava/util/UUID;

    .line 298
    .line 299
    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_e

    .line 304
    .line 305
    const/4 v2, 0x6

    .line 306
    goto :goto_8

    .line 307
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_f
    const/4 v2, 0x1

    .line 311
    :goto_8
    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 312
    .line 313
    .line 314
    :cond_10
    const/16 v1, 0x3f3

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Lua/i8;->o(I)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_11

    .line 321
    .line 322
    iget v1, v7, Lz1/h;->A:I

    .line 323
    .line 324
    add-int/2addr v1, v13

    .line 325
    iput v1, v7, Lz1/h;->A:I

    .line 326
    .line 327
    :cond_11
    iget-object v1, v7, Lz1/h;->o:Ly1/k;

    .line 328
    .line 329
    const/4 v14, 0x5

    .line 330
    const/4 v5, 0x4

    .line 331
    if-nez v1, :cond_12

    .line 332
    .line 333
    const/4 v1, 0x1

    .line 334
    const/4 v2, 0x2

    .line 335
    const/16 v5, 0xd

    .line 336
    .line 337
    const/16 v15, 0x9

    .line 338
    .line 339
    const/16 v19, 0x6

    .line 340
    .line 341
    const/16 v20, 0x7

    .line 342
    .line 343
    const/16 v21, 0x4

    .line 344
    .line 345
    goto/16 :goto_15

    .line 346
    .line 347
    :cond_12
    iget v3, v7, Lz1/h;->w:I

    .line 348
    .line 349
    if-ne v3, v5, :cond_13

    .line 350
    .line 351
    const/4 v3, 0x1

    .line 352
    goto :goto_9

    .line 353
    :cond_13
    const/4 v3, 0x0

    .line 354
    :goto_9
    iget v12, v1, Lr1/g0;->a:I

    .line 355
    .line 356
    const/16 v4, 0x3e9

    .line 357
    .line 358
    if-ne v12, v4, :cond_14

    .line 359
    .line 360
    new-instance v3, Leb/j;

    .line 361
    .line 362
    const/16 v4, 0x14

    .line 363
    .line 364
    invoke-direct {v3, v4, v8}, Leb/j;-><init>(II)V

    .line 365
    .line 366
    .line 367
    :goto_a
    const/16 v5, 0xd

    .line 368
    .line 369
    const/16 v15, 0x9

    .line 370
    .line 371
    :goto_b
    const/16 v19, 0x6

    .line 372
    .line 373
    const/16 v20, 0x7

    .line 374
    .line 375
    const/16 v21, 0x4

    .line 376
    .line 377
    goto/16 :goto_14

    .line 378
    .line 379
    :cond_14
    iget v4, v1, Ly1/k;->c:I

    .line 380
    .line 381
    if-ne v4, v13, :cond_15

    .line 382
    .line 383
    const/4 v4, 0x1

    .line 384
    goto :goto_c

    .line 385
    :cond_15
    const/4 v4, 0x0

    .line 386
    :goto_c
    iget v5, v1, Ly1/k;->g:I

    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    instance-of v15, v2, Ljava/io/IOException;

    .line 396
    .line 397
    const/16 v22, 0x19

    .line 398
    .line 399
    const/16 v23, 0x1a

    .line 400
    .line 401
    const/16 v6, 0x18

    .line 402
    .line 403
    const/16 v9, 0x1b

    .line 404
    .line 405
    const/16 v13, 0x17

    .line 406
    .line 407
    if-eqz v15, :cond_2a

    .line 408
    .line 409
    instance-of v4, v2, Lw1/s;

    .line 410
    .line 411
    if-eqz v4, :cond_16

    .line 412
    .line 413
    check-cast v2, Lw1/s;

    .line 414
    .line 415
    new-instance v3, Leb/j;

    .line 416
    .line 417
    iget v2, v2, Lw1/s;->c:I

    .line 418
    .line 419
    invoke-direct {v3, v14, v2}, Leb/j;-><init>(II)V

    .line 420
    .line 421
    .line 422
    goto :goto_a

    .line 423
    :cond_16
    instance-of v4, v2, Lw1/r;

    .line 424
    .line 425
    if-nez v4, :cond_17

    .line 426
    .line 427
    instance-of v4, v2, Lr1/f0;

    .line 428
    .line 429
    if-eqz v4, :cond_18

    .line 430
    .line 431
    :cond_17
    const/4 v2, 0x4

    .line 432
    const/4 v4, 0x7

    .line 433
    const/4 v5, 0x6

    .line 434
    const/16 v6, 0x8

    .line 435
    .line 436
    const/16 v15, 0x9

    .line 437
    .line 438
    goto/16 :goto_10

    .line 439
    .line 440
    :cond_18
    instance-of v3, v2, Lw1/q;

    .line 441
    .line 442
    if-nez v3, :cond_19

    .line 443
    .line 444
    instance-of v4, v2, Lw1/y;

    .line 445
    .line 446
    if-eqz v4, :cond_1a

    .line 447
    .line 448
    :cond_19
    const/16 v15, 0x9

    .line 449
    .line 450
    goto/16 :goto_f

    .line 451
    .line 452
    :cond_1a
    const/16 v3, 0x3ea

    .line 453
    .line 454
    if-ne v12, v3, :cond_1b

    .line 455
    .line 456
    new-instance v3, Leb/j;

    .line 457
    .line 458
    const/16 v2, 0x15

    .line 459
    .line 460
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 461
    .line 462
    .line 463
    goto :goto_a

    .line 464
    :cond_1b
    instance-of v3, v2, Lb2/b;

    .line 465
    .line 466
    if-eqz v3, :cond_22

    .line 467
    .line 468
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    instance-of v3, v2, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 476
    .line 477
    if-eqz v3, :cond_1c

    .line 478
    .line 479
    check-cast v2, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 480
    .line 481
    invoke-virtual {v2}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-static {v2}, Lu1/f0;->r(Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    invoke-static {v2}, Lu1/f0;->q(I)I

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    packed-switch v3, :pswitch_data_0

    .line 494
    .line 495
    .line 496
    const/16 v6, 0x1b

    .line 497
    .line 498
    goto :goto_d

    .line 499
    :pswitch_0
    const/16 v6, 0x1a

    .line 500
    .line 501
    goto :goto_d

    .line 502
    :pswitch_1
    const/16 v6, 0x19

    .line 503
    .line 504
    goto :goto_d

    .line 505
    :pswitch_2
    const/16 v6, 0x1c

    .line 506
    .line 507
    :goto_d
    :pswitch_3
    new-instance v3, Leb/j;

    .line 508
    .line 509
    invoke-direct {v3, v6, v2}, Leb/j;-><init>(II)V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_a

    .line 513
    .line 514
    :cond_1c
    instance-of v3, v2, Landroid/media/MediaDrmResetException;

    .line 515
    .line 516
    if-eqz v3, :cond_1d

    .line 517
    .line 518
    new-instance v3, Leb/j;

    .line 519
    .line 520
    invoke-direct {v3, v9, v8}, Leb/j;-><init>(II)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_a

    .line 524
    .line 525
    :cond_1d
    instance-of v3, v2, Landroid/media/NotProvisionedException;

    .line 526
    .line 527
    if-eqz v3, :cond_1e

    .line 528
    .line 529
    new-instance v3, Leb/j;

    .line 530
    .line 531
    invoke-direct {v3, v6, v8}, Leb/j;-><init>(II)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_a

    .line 535
    .line 536
    :cond_1e
    instance-of v3, v2, Landroid/media/DeniedByServerException;

    .line 537
    .line 538
    if-eqz v3, :cond_1f

    .line 539
    .line 540
    new-instance v3, Leb/j;

    .line 541
    .line 542
    const/16 v2, 0x1d

    .line 543
    .line 544
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_a

    .line 548
    .line 549
    :cond_1f
    instance-of v3, v2, Lb2/i;

    .line 550
    .line 551
    if-eqz v3, :cond_20

    .line 552
    .line 553
    new-instance v3, Leb/j;

    .line 554
    .line 555
    invoke-direct {v3, v13, v8}, Leb/j;-><init>(II)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_a

    .line 559
    .line 560
    :cond_20
    instance-of v2, v2, Lb2/a;

    .line 561
    .line 562
    if-eqz v2, :cond_21

    .line 563
    .line 564
    new-instance v3, Leb/j;

    .line 565
    .line 566
    const/16 v12, 0x1c

    .line 567
    .line 568
    invoke-direct {v3, v12, v8}, Leb/j;-><init>(II)V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_a

    .line 572
    .line 573
    :cond_21
    new-instance v3, Leb/j;

    .line 574
    .line 575
    const/16 v2, 0x1e

    .line 576
    .line 577
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_a

    .line 581
    .line 582
    :cond_22
    instance-of v3, v2, Lw1/n;

    .line 583
    .line 584
    if-eqz v3, :cond_24

    .line 585
    .line 586
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    instance-of v3, v3, Ljava/io/FileNotFoundException;

    .line 591
    .line 592
    if-eqz v3, :cond_24

    .line 593
    .line 594
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    instance-of v3, v2, Landroid/system/ErrnoException;

    .line 606
    .line 607
    if-eqz v3, :cond_23

    .line 608
    .line 609
    check-cast v2, Landroid/system/ErrnoException;

    .line 610
    .line 611
    iget v2, v2, Landroid/system/ErrnoException;->errno:I

    .line 612
    .line 613
    sget v3, Landroid/system/OsConstants;->EACCES:I

    .line 614
    .line 615
    if-ne v2, v3, :cond_23

    .line 616
    .line 617
    new-instance v3, Leb/j;

    .line 618
    .line 619
    const/16 v2, 0x20

    .line 620
    .line 621
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 622
    .line 623
    .line 624
    goto/16 :goto_a

    .line 625
    .line 626
    :cond_23
    new-instance v3, Leb/j;

    .line 627
    .line 628
    const/16 v2, 0x1f

    .line 629
    .line 630
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_a

    .line 634
    .line 635
    :cond_24
    new-instance v3, Leb/j;

    .line 636
    .line 637
    const/16 v15, 0x9

    .line 638
    .line 639
    invoke-direct {v3, v15, v8}, Leb/j;-><init>(II)V

    .line 640
    .line 641
    .line 642
    :goto_e
    const/16 v5, 0xd

    .line 643
    .line 644
    goto/16 :goto_b

    .line 645
    .line 646
    :goto_f
    iget-object v4, v7, Lz1/h;->a:Landroid/content/Context;

    .line 647
    .line 648
    invoke-static {v4}, Lu1/p;->a(Landroid/content/Context;)Lu1/p;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    invoke-virtual {v4}, Lu1/p;->b()I

    .line 653
    .line 654
    .line 655
    move-result v4

    .line 656
    const/4 v5, 0x1

    .line 657
    if-ne v4, v5, :cond_25

    .line 658
    .line 659
    new-instance v3, Leb/j;

    .line 660
    .line 661
    const/4 v2, 0x3

    .line 662
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 663
    .line 664
    .line 665
    goto :goto_e

    .line 666
    :cond_25
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    instance-of v5, v4, Ljava/net/UnknownHostException;

    .line 671
    .line 672
    if-eqz v5, :cond_26

    .line 673
    .line 674
    new-instance v3, Leb/j;

    .line 675
    .line 676
    const/4 v5, 0x6

    .line 677
    invoke-direct {v3, v5, v8}, Leb/j;-><init>(II)V

    .line 678
    .line 679
    .line 680
    goto :goto_e

    .line 681
    :cond_26
    const/4 v5, 0x6

    .line 682
    instance-of v4, v4, Ljava/net/SocketTimeoutException;

    .line 683
    .line 684
    if-eqz v4, :cond_27

    .line 685
    .line 686
    new-instance v3, Leb/j;

    .line 687
    .line 688
    const/4 v4, 0x7

    .line 689
    invoke-direct {v3, v4, v8}, Leb/j;-><init>(II)V

    .line 690
    .line 691
    .line 692
    goto :goto_e

    .line 693
    :cond_27
    const/4 v4, 0x7

    .line 694
    if-eqz v3, :cond_28

    .line 695
    .line 696
    check-cast v2, Lw1/q;

    .line 697
    .line 698
    iget v2, v2, Lw1/q;->b:I

    .line 699
    .line 700
    const/4 v3, 0x1

    .line 701
    if-ne v2, v3, :cond_28

    .line 702
    .line 703
    new-instance v3, Leb/j;

    .line 704
    .line 705
    const/4 v2, 0x4

    .line 706
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 707
    .line 708
    .line 709
    goto :goto_e

    .line 710
    :cond_28
    const/4 v2, 0x4

    .line 711
    new-instance v3, Leb/j;

    .line 712
    .line 713
    const/16 v6, 0x8

    .line 714
    .line 715
    invoke-direct {v3, v6, v8}, Leb/j;-><init>(II)V

    .line 716
    .line 717
    .line 718
    goto :goto_e

    .line 719
    :goto_10
    new-instance v9, Leb/j;

    .line 720
    .line 721
    if-eqz v3, :cond_29

    .line 722
    .line 723
    const/16 v3, 0xa

    .line 724
    .line 725
    goto :goto_11

    .line 726
    :cond_29
    const/16 v3, 0xb

    .line 727
    .line 728
    :goto_11
    invoke-direct {v9, v3, v8}, Leb/j;-><init>(II)V

    .line 729
    .line 730
    .line 731
    move-object v3, v9

    .line 732
    goto :goto_e

    .line 733
    :cond_2a
    const/16 v3, 0x8

    .line 734
    .line 735
    const/16 v12, 0x1c

    .line 736
    .line 737
    const/16 v15, 0x9

    .line 738
    .line 739
    const/16 v19, 0x6

    .line 740
    .line 741
    const/16 v20, 0x7

    .line 742
    .line 743
    const/16 v21, 0x4

    .line 744
    .line 745
    if-eqz v4, :cond_2c

    .line 746
    .line 747
    if-eqz v5, :cond_2b

    .line 748
    .line 749
    const/4 v3, 0x1

    .line 750
    if-ne v5, v3, :cond_2c

    .line 751
    .line 752
    :cond_2b
    new-instance v3, Leb/j;

    .line 753
    .line 754
    const/16 v2, 0x23

    .line 755
    .line 756
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 757
    .line 758
    .line 759
    :goto_12
    const/16 v5, 0xd

    .line 760
    .line 761
    goto/16 :goto_14

    .line 762
    .line 763
    :cond_2c
    if-eqz v4, :cond_2d

    .line 764
    .line 765
    const/4 v3, 0x3

    .line 766
    if-ne v5, v3, :cond_2d

    .line 767
    .line 768
    new-instance v3, Leb/j;

    .line 769
    .line 770
    const/16 v2, 0xf

    .line 771
    .line 772
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 773
    .line 774
    .line 775
    goto :goto_12

    .line 776
    :cond_2d
    if-eqz v4, :cond_2e

    .line 777
    .line 778
    const/4 v3, 0x2

    .line 779
    if-ne v5, v3, :cond_2e

    .line 780
    .line 781
    new-instance v3, Leb/j;

    .line 782
    .line 783
    invoke-direct {v3, v13, v8}, Leb/j;-><init>(II)V

    .line 784
    .line 785
    .line 786
    goto :goto_12

    .line 787
    :cond_2e
    instance-of v3, v2, Ld2/s;

    .line 788
    .line 789
    if-eqz v3, :cond_2f

    .line 790
    .line 791
    check-cast v2, Ld2/s;

    .line 792
    .line 793
    iget-object v2, v2, Ld2/s;->d:Ljava/lang/String;

    .line 794
    .line 795
    invoke-static {v2}, Lu1/f0;->r(Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    move-result v2

    .line 799
    new-instance v3, Leb/j;

    .line 800
    .line 801
    const/16 v5, 0xd

    .line 802
    .line 803
    invoke-direct {v3, v5, v2}, Leb/j;-><init>(II)V

    .line 804
    .line 805
    .line 806
    goto :goto_14

    .line 807
    :cond_2f
    const/16 v5, 0xd

    .line 808
    .line 809
    instance-of v3, v2, Ld2/p;

    .line 810
    .line 811
    const/16 v4, 0xe

    .line 812
    .line 813
    if-eqz v3, :cond_30

    .line 814
    .line 815
    check-cast v2, Ld2/p;

    .line 816
    .line 817
    new-instance v3, Leb/j;

    .line 818
    .line 819
    iget v2, v2, Ld2/p;->a:I

    .line 820
    .line 821
    invoke-direct {v3, v4, v2}, Leb/j;-><init>(II)V

    .line 822
    .line 823
    .line 824
    goto :goto_14

    .line 825
    :cond_30
    instance-of v3, v2, Ljava/lang/OutOfMemoryError;

    .line 826
    .line 827
    if-eqz v3, :cond_31

    .line 828
    .line 829
    new-instance v3, Leb/j;

    .line 830
    .line 831
    invoke-direct {v3, v4, v8}, Leb/j;-><init>(II)V

    .line 832
    .line 833
    .line 834
    goto :goto_14

    .line 835
    :cond_31
    instance-of v3, v2, La2/m0;

    .line 836
    .line 837
    if-eqz v3, :cond_32

    .line 838
    .line 839
    check-cast v2, La2/m0;

    .line 840
    .line 841
    new-instance v3, Leb/j;

    .line 842
    .line 843
    const/16 v2, 0x11

    .line 844
    .line 845
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 846
    .line 847
    .line 848
    goto :goto_14

    .line 849
    :cond_32
    instance-of v3, v2, La2/o0;

    .line 850
    .line 851
    if-eqz v3, :cond_33

    .line 852
    .line 853
    check-cast v2, La2/o0;

    .line 854
    .line 855
    new-instance v3, Leb/j;

    .line 856
    .line 857
    const/16 v4, 0x12

    .line 858
    .line 859
    iget v2, v2, La2/o0;->a:I

    .line 860
    .line 861
    invoke-direct {v3, v4, v2}, Leb/j;-><init>(II)V

    .line 862
    .line 863
    .line 864
    goto :goto_14

    .line 865
    :cond_33
    instance-of v3, v2, Landroid/media/MediaCodec$CryptoException;

    .line 866
    .line 867
    if-eqz v3, :cond_34

    .line 868
    .line 869
    check-cast v2, Landroid/media/MediaCodec$CryptoException;

    .line 870
    .line 871
    invoke-virtual {v2}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 872
    .line 873
    .line 874
    move-result v2

    .line 875
    invoke-static {v2}, Lu1/f0;->q(I)I

    .line 876
    .line 877
    .line 878
    move-result v3

    .line 879
    packed-switch v3, :pswitch_data_1

    .line 880
    .line 881
    .line 882
    const/16 v6, 0x1b

    .line 883
    .line 884
    goto :goto_13

    .line 885
    :pswitch_4
    const/16 v6, 0x1a

    .line 886
    .line 887
    goto :goto_13

    .line 888
    :pswitch_5
    const/16 v6, 0x19

    .line 889
    .line 890
    goto :goto_13

    .line 891
    :pswitch_6
    const/16 v6, 0x1c

    .line 892
    .line 893
    :goto_13
    :pswitch_7
    new-instance v3, Leb/j;

    .line 894
    .line 895
    invoke-direct {v3, v6, v2}, Leb/j;-><init>(II)V

    .line 896
    .line 897
    .line 898
    goto :goto_14

    .line 899
    :cond_34
    new-instance v3, Leb/j;

    .line 900
    .line 901
    const/16 v2, 0x16

    .line 902
    .line 903
    invoke-direct {v3, v2, v8}, Leb/j;-><init>(II)V

    .line 904
    .line 905
    .line 906
    :goto_14
    new-instance v2, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 907
    .line 908
    invoke-direct {v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    .line 909
    .line 910
    .line 911
    iget-wide v12, v7, Lz1/h;->e:J

    .line 912
    .line 913
    sub-long v12, v10, v12

    .line 914
    .line 915
    invoke-virtual {v2, v12, v13}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    iget v4, v3, Leb/j;->a:I

    .line 920
    .line 921
    invoke-virtual {v2, v4}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 922
    .line 923
    .line 924
    move-result-object v2

    .line 925
    iget v3, v3, Leb/j;->b:I

    .line 926
    .line 927
    invoke-virtual {v2, v3}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    invoke-virtual {v2, v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    invoke-virtual {v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    .line 936
    .line 937
    .line 938
    move-result-object v1

    .line 939
    new-instance v2, Ls1/f;

    .line 940
    .line 941
    const/16 v3, 0x15

    .line 942
    .line 943
    invoke-direct {v2, v7, v3, v1}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 944
    .line 945
    .line 946
    iget-object v1, v7, Lz1/h;->b:Ljava/util/concurrent/Executor;

    .line 947
    .line 948
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 949
    .line 950
    .line 951
    const/4 v1, 0x1

    .line 952
    iput-boolean v1, v7, Lz1/h;->B:Z

    .line 953
    .line 954
    const/4 v2, 0x0

    .line 955
    iput-object v2, v7, Lz1/h;->o:Ly1/k;

    .line 956
    .line 957
    const/4 v2, 0x2

    .line 958
    :goto_15
    invoke-virtual {v0, v2}, Lua/i8;->o(I)Z

    .line 959
    .line 960
    .line 961
    move-result v3

    .line 962
    if-eqz v3, :cond_35

    .line 963
    .line 964
    move-object/from16 v3, p1

    .line 965
    .line 966
    check-cast v3, Ly1/x;

    .line 967
    .line 968
    invoke-virtual {v3}, Ly1/x;->F()Lr1/x0;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    invoke-virtual {v3, v2}, Lr1/x0;->a(I)Z

    .line 973
    .line 974
    .line 975
    move-result v4

    .line 976
    invoke-virtual {v3, v1}, Lr1/x0;->a(I)Z

    .line 977
    .line 978
    .line 979
    move-result v9

    .line 980
    const/4 v6, 0x3

    .line 981
    invoke-virtual {v3, v6}, Lr1/x0;->a(I)Z

    .line 982
    .line 983
    .line 984
    move-result v12

    .line 985
    if-nez v4, :cond_36

    .line 986
    .line 987
    if-nez v9, :cond_36

    .line 988
    .line 989
    if-eqz v12, :cond_35

    .line 990
    .line 991
    goto :goto_16

    .line 992
    :cond_35
    const/16 v14, 0xa

    .line 993
    .line 994
    const/4 v15, 0x4

    .line 995
    const/16 v17, 0x7

    .line 996
    .line 997
    const/16 v18, 0x8

    .line 998
    .line 999
    const/16 v21, 0xd

    .line 1000
    .line 1001
    goto/16 :goto_1d

    .line 1002
    .line 1003
    :cond_36
    :goto_16
    if-nez v4, :cond_39

    .line 1004
    .line 1005
    iget-object v1, v7, Lz1/h;->s:Lr1/p;

    .line 1006
    .line 1007
    const/4 v13, 0x0

    .line 1008
    invoke-static {v1, v13}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v1

    .line 1012
    if-eqz v1, :cond_37

    .line 1013
    .line 1014
    goto :goto_18

    .line 1015
    :cond_37
    iget-object v1, v7, Lz1/h;->s:Lr1/p;

    .line 1016
    .line 1017
    if-nez v1, :cond_38

    .line 1018
    .line 1019
    const/16 v16, 0x1

    .line 1020
    .line 1021
    goto :goto_17

    .line 1022
    :cond_38
    const/16 v16, 0x0

    .line 1023
    .line 1024
    :goto_17
    iput-object v13, v7, Lz1/h;->s:Lr1/p;

    .line 1025
    .line 1026
    const/4 v2, 0x1

    .line 1027
    move-object/from16 v1, p0

    .line 1028
    .line 1029
    const/16 v17, 0x7

    .line 1030
    .line 1031
    const/16 v14, 0xa

    .line 1032
    .line 1033
    const/16 v18, 0x8

    .line 1034
    .line 1035
    move-wide v3, v10

    .line 1036
    const/4 v15, 0x4

    .line 1037
    const/16 v21, 0xd

    .line 1038
    .line 1039
    move-object v5, v13

    .line 1040
    move/from16 v6, v16

    .line 1041
    .line 1042
    invoke-virtual/range {v1 .. v6}, Lz1/h;->g(IJLr1/p;I)V

    .line 1043
    .line 1044
    .line 1045
    goto :goto_19

    .line 1046
    :cond_39
    const/4 v13, 0x0

    .line 1047
    :goto_18
    const/16 v14, 0xa

    .line 1048
    .line 1049
    const/4 v15, 0x4

    .line 1050
    const/16 v17, 0x7

    .line 1051
    .line 1052
    const/16 v18, 0x8

    .line 1053
    .line 1054
    const/16 v21, 0xd

    .line 1055
    .line 1056
    :goto_19
    if-nez v9, :cond_3c

    .line 1057
    .line 1058
    iget-object v1, v7, Lz1/h;->t:Lr1/p;

    .line 1059
    .line 1060
    invoke-static {v1, v13}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v1

    .line 1064
    if-eqz v1, :cond_3a

    .line 1065
    .line 1066
    goto :goto_1b

    .line 1067
    :cond_3a
    iget-object v1, v7, Lz1/h;->t:Lr1/p;

    .line 1068
    .line 1069
    if-nez v1, :cond_3b

    .line 1070
    .line 1071
    const/4 v6, 0x1

    .line 1072
    goto :goto_1a

    .line 1073
    :cond_3b
    const/4 v6, 0x0

    .line 1074
    :goto_1a
    iput-object v13, v7, Lz1/h;->t:Lr1/p;

    .line 1075
    .line 1076
    const/4 v2, 0x0

    .line 1077
    move-object/from16 v1, p0

    .line 1078
    .line 1079
    move-wide v3, v10

    .line 1080
    move-object v5, v13

    .line 1081
    invoke-virtual/range {v1 .. v6}, Lz1/h;->g(IJLr1/p;I)V

    .line 1082
    .line 1083
    .line 1084
    :cond_3c
    :goto_1b
    if-nez v12, :cond_3f

    .line 1085
    .line 1086
    iget-object v1, v7, Lz1/h;->u:Lr1/p;

    .line 1087
    .line 1088
    invoke-static {v1, v13}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v1

    .line 1092
    if-eqz v1, :cond_3d

    .line 1093
    .line 1094
    goto :goto_1d

    .line 1095
    :cond_3d
    iget-object v1, v7, Lz1/h;->u:Lr1/p;

    .line 1096
    .line 1097
    if-nez v1, :cond_3e

    .line 1098
    .line 1099
    const/4 v6, 0x1

    .line 1100
    goto :goto_1c

    .line 1101
    :cond_3e
    const/4 v6, 0x0

    .line 1102
    :goto_1c
    iput-object v13, v7, Lz1/h;->u:Lr1/p;

    .line 1103
    .line 1104
    const/4 v2, 0x2

    .line 1105
    move-object/from16 v1, p0

    .line 1106
    .line 1107
    move-wide v3, v10

    .line 1108
    move-object v5, v13

    .line 1109
    invoke-virtual/range {v1 .. v6}, Lz1/h;->g(IJLr1/p;I)V

    .line 1110
    .line 1111
    .line 1112
    :cond_3f
    :goto_1d
    iget-object v1, v7, Lz1/h;->p:Lua/i8;

    .line 1113
    .line 1114
    invoke-virtual {v7, v1}, Lz1/h;->a(Lua/i8;)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v1

    .line 1118
    if-eqz v1, :cond_42

    .line 1119
    .line 1120
    iget-object v1, v7, Lz1/h;->p:Lua/i8;

    .line 1121
    .line 1122
    iget-object v1, v1, Lua/i8;->c:Ljava/lang/Object;

    .line 1123
    .line 1124
    move-object v5, v1

    .line 1125
    check-cast v5, Lr1/p;

    .line 1126
    .line 1127
    iget v1, v5, Lr1/p;->w:I

    .line 1128
    .line 1129
    const/4 v2, -0x1

    .line 1130
    if-eq v1, v2, :cond_42

    .line 1131
    .line 1132
    iget-object v1, v7, Lz1/h;->s:Lr1/p;

    .line 1133
    .line 1134
    invoke-static {v1, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1135
    .line 1136
    .line 1137
    move-result v1

    .line 1138
    if-eqz v1, :cond_40

    .line 1139
    .line 1140
    :goto_1e
    const/4 v1, 0x0

    .line 1141
    goto :goto_20

    .line 1142
    :cond_40
    iget-object v1, v7, Lz1/h;->s:Lr1/p;

    .line 1143
    .line 1144
    if-nez v1, :cond_41

    .line 1145
    .line 1146
    const/4 v6, 0x1

    .line 1147
    goto :goto_1f

    .line 1148
    :cond_41
    const/4 v6, 0x0

    .line 1149
    :goto_1f
    iput-object v5, v7, Lz1/h;->s:Lr1/p;

    .line 1150
    .line 1151
    const/4 v2, 0x1

    .line 1152
    move-object/from16 v1, p0

    .line 1153
    .line 1154
    move-wide v3, v10

    .line 1155
    invoke-virtual/range {v1 .. v6}, Lz1/h;->g(IJLr1/p;I)V

    .line 1156
    .line 1157
    .line 1158
    goto :goto_1e

    .line 1159
    :goto_20
    iput-object v1, v7, Lz1/h;->p:Lua/i8;

    .line 1160
    .line 1161
    :cond_42
    iget-object v1, v7, Lz1/h;->q:Lua/i8;

    .line 1162
    .line 1163
    invoke-virtual {v7, v1}, Lz1/h;->a(Lua/i8;)Z

    .line 1164
    .line 1165
    .line 1166
    move-result v1

    .line 1167
    if-eqz v1, :cond_45

    .line 1168
    .line 1169
    iget-object v1, v7, Lz1/h;->q:Lua/i8;

    .line 1170
    .line 1171
    iget-object v1, v1, Lua/i8;->c:Ljava/lang/Object;

    .line 1172
    .line 1173
    move-object v5, v1

    .line 1174
    check-cast v5, Lr1/p;

    .line 1175
    .line 1176
    iget-object v1, v7, Lz1/h;->t:Lr1/p;

    .line 1177
    .line 1178
    invoke-static {v1, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1179
    .line 1180
    .line 1181
    move-result v1

    .line 1182
    if-eqz v1, :cond_43

    .line 1183
    .line 1184
    :goto_21
    const/4 v1, 0x0

    .line 1185
    goto :goto_23

    .line 1186
    :cond_43
    iget-object v1, v7, Lz1/h;->t:Lr1/p;

    .line 1187
    .line 1188
    if-nez v1, :cond_44

    .line 1189
    .line 1190
    const/4 v6, 0x1

    .line 1191
    goto :goto_22

    .line 1192
    :cond_44
    const/4 v6, 0x0

    .line 1193
    :goto_22
    iput-object v5, v7, Lz1/h;->t:Lr1/p;

    .line 1194
    .line 1195
    const/4 v2, 0x0

    .line 1196
    move-object/from16 v1, p0

    .line 1197
    .line 1198
    move-wide v3, v10

    .line 1199
    invoke-virtual/range {v1 .. v6}, Lz1/h;->g(IJLr1/p;I)V

    .line 1200
    .line 1201
    .line 1202
    goto :goto_21

    .line 1203
    :goto_23
    iput-object v1, v7, Lz1/h;->q:Lua/i8;

    .line 1204
    .line 1205
    :cond_45
    iget-object v1, v7, Lz1/h;->r:Lua/i8;

    .line 1206
    .line 1207
    invoke-virtual {v7, v1}, Lz1/h;->a(Lua/i8;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v1

    .line 1211
    if-eqz v1, :cond_48

    .line 1212
    .line 1213
    iget-object v1, v7, Lz1/h;->r:Lua/i8;

    .line 1214
    .line 1215
    iget-object v1, v1, Lua/i8;->c:Ljava/lang/Object;

    .line 1216
    .line 1217
    move-object v5, v1

    .line 1218
    check-cast v5, Lr1/p;

    .line 1219
    .line 1220
    iget-object v1, v7, Lz1/h;->u:Lr1/p;

    .line 1221
    .line 1222
    invoke-static {v1, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v1

    .line 1226
    if-eqz v1, :cond_46

    .line 1227
    .line 1228
    :goto_24
    const/4 v1, 0x0

    .line 1229
    goto :goto_26

    .line 1230
    :cond_46
    iget-object v1, v7, Lz1/h;->u:Lr1/p;

    .line 1231
    .line 1232
    if-nez v1, :cond_47

    .line 1233
    .line 1234
    const/4 v6, 0x1

    .line 1235
    goto :goto_25

    .line 1236
    :cond_47
    const/4 v6, 0x0

    .line 1237
    :goto_25
    iput-object v5, v7, Lz1/h;->u:Lr1/p;

    .line 1238
    .line 1239
    const/4 v2, 0x2

    .line 1240
    move-object/from16 v1, p0

    .line 1241
    .line 1242
    move-wide v3, v10

    .line 1243
    invoke-virtual/range {v1 .. v6}, Lz1/h;->g(IJLr1/p;I)V

    .line 1244
    .line 1245
    .line 1246
    goto :goto_24

    .line 1247
    :goto_26
    iput-object v1, v7, Lz1/h;->r:Lua/i8;

    .line 1248
    .line 1249
    :cond_48
    iget-object v1, v7, Lz1/h;->a:Landroid/content/Context;

    .line 1250
    .line 1251
    invoke-static {v1}, Lu1/p;->a(Landroid/content/Context;)Lu1/p;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v1

    .line 1255
    invoke-virtual {v1}, Lu1/p;->b()I

    .line 1256
    .line 1257
    .line 1258
    move-result v1

    .line 1259
    packed-switch v1, :pswitch_data_2

    .line 1260
    .line 1261
    .line 1262
    :pswitch_8
    const/4 v6, 0x1

    .line 1263
    goto :goto_27

    .line 1264
    :pswitch_9
    const/4 v6, 0x7

    .line 1265
    goto :goto_27

    .line 1266
    :pswitch_a
    const/16 v6, 0x8

    .line 1267
    .line 1268
    goto :goto_27

    .line 1269
    :pswitch_b
    const/4 v6, 0x3

    .line 1270
    goto :goto_27

    .line 1271
    :pswitch_c
    const/4 v6, 0x6

    .line 1272
    goto :goto_27

    .line 1273
    :pswitch_d
    const/4 v6, 0x5

    .line 1274
    goto :goto_27

    .line 1275
    :pswitch_e
    const/4 v6, 0x4

    .line 1276
    goto :goto_27

    .line 1277
    :pswitch_f
    const/4 v6, 0x2

    .line 1278
    goto :goto_27

    .line 1279
    :pswitch_10
    const/16 v6, 0x9

    .line 1280
    .line 1281
    goto :goto_27

    .line 1282
    :pswitch_11
    const/4 v6, 0x0

    .line 1283
    :goto_27
    iget v1, v7, Lz1/h;->n:I

    .line 1284
    .line 1285
    if-eq v6, v1, :cond_49

    .line 1286
    .line 1287
    iput v6, v7, Lz1/h;->n:I

    .line 1288
    .line 1289
    new-instance v1, Landroid/media/metrics/NetworkEvent$Builder;

    .line 1290
    .line 1291
    invoke-direct {v1}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v1, v6}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    iget-wide v2, v7, Lz1/h;->e:J

    .line 1299
    .line 1300
    sub-long v2, v10, v2

    .line 1301
    .line 1302
    invoke-virtual {v1, v2, v3}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v1

    .line 1306
    invoke-virtual {v1}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v1

    .line 1310
    new-instance v2, Ls1/f;

    .line 1311
    .line 1312
    const/16 v3, 0x14

    .line 1313
    .line 1314
    invoke-direct {v2, v7, v3, v1}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1315
    .line 1316
    .line 1317
    iget-object v1, v7, Lz1/h;->b:Ljava/util/concurrent/Executor;

    .line 1318
    .line 1319
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1320
    .line 1321
    .line 1322
    :cond_49
    move-object/from16 v1, p1

    .line 1323
    .line 1324
    check-cast v1, Ly1/x;

    .line 1325
    .line 1326
    invoke-virtual {v1}, Ly1/x;->J()I

    .line 1327
    .line 1328
    .line 1329
    move-result v2

    .line 1330
    const/4 v3, 0x2

    .line 1331
    if-eq v2, v3, :cond_4a

    .line 1332
    .line 1333
    iput-boolean v8, v7, Lz1/h;->v:Z

    .line 1334
    .line 1335
    :cond_4a
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 1336
    .line 1337
    .line 1338
    iget-object v2, v1, Ly1/x;->f1:Ly1/v0;

    .line 1339
    .line 1340
    iget-object v2, v2, Ly1/v0;->f:Ly1/k;

    .line 1341
    .line 1342
    if-nez v2, :cond_4b

    .line 1343
    .line 1344
    iput-boolean v8, v7, Lz1/h;->x:Z

    .line 1345
    .line 1346
    goto :goto_28

    .line 1347
    :cond_4b
    invoke-virtual {v0, v14}, Lua/i8;->o(I)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v2

    .line 1351
    if-eqz v2, :cond_4c

    .line 1352
    .line 1353
    const/4 v2, 0x1

    .line 1354
    iput-boolean v2, v7, Lz1/h;->x:Z

    .line 1355
    .line 1356
    :cond_4c
    :goto_28
    invoke-virtual {v1}, Ly1/x;->J()I

    .line 1357
    .line 1358
    .line 1359
    move-result v2

    .line 1360
    iget-boolean v3, v7, Lz1/h;->v:Z

    .line 1361
    .line 1362
    if-eqz v3, :cond_4d

    .line 1363
    .line 1364
    const/4 v1, 0x1

    .line 1365
    const/4 v9, 0x5

    .line 1366
    goto :goto_2b

    .line 1367
    :cond_4d
    iget-boolean v3, v7, Lz1/h;->x:Z

    .line 1368
    .line 1369
    if-eqz v3, :cond_4e

    .line 1370
    .line 1371
    const/4 v1, 0x1

    .line 1372
    const/16 v9, 0xd

    .line 1373
    .line 1374
    goto :goto_2b

    .line 1375
    :cond_4e
    if-ne v2, v15, :cond_4f

    .line 1376
    .line 1377
    const/4 v1, 0x1

    .line 1378
    const/16 v9, 0xb

    .line 1379
    .line 1380
    goto :goto_2b

    .line 1381
    :cond_4f
    const/16 v9, 0xc

    .line 1382
    .line 1383
    const/4 v3, 0x2

    .line 1384
    if-ne v2, v3, :cond_54

    .line 1385
    .line 1386
    iget v2, v7, Lz1/h;->m:I

    .line 1387
    .line 1388
    if-eqz v2, :cond_53

    .line 1389
    .line 1390
    if-eq v2, v3, :cond_53

    .line 1391
    .line 1392
    if-ne v2, v9, :cond_50

    .line 1393
    .line 1394
    goto :goto_2a

    .line 1395
    :cond_50
    invoke-virtual {v1}, Ly1/x;->I()Z

    .line 1396
    .line 1397
    .line 1398
    move-result v2

    .line 1399
    if-nez v2, :cond_51

    .line 1400
    .line 1401
    const/4 v1, 0x1

    .line 1402
    const/4 v9, 0x7

    .line 1403
    goto :goto_2b

    .line 1404
    :cond_51
    invoke-virtual {v1}, Ly1/x;->K()I

    .line 1405
    .line 1406
    .line 1407
    move-result v1

    .line 1408
    if-eqz v1, :cond_52

    .line 1409
    .line 1410
    const/16 v9, 0xa

    .line 1411
    .line 1412
    goto :goto_29

    .line 1413
    :cond_52
    const/4 v9, 0x6

    .line 1414
    :goto_29
    const/4 v1, 0x1

    .line 1415
    goto :goto_2b

    .line 1416
    :cond_53
    :goto_2a
    const/4 v1, 0x1

    .line 1417
    const/4 v9, 0x2

    .line 1418
    goto :goto_2b

    .line 1419
    :cond_54
    const/4 v3, 0x3

    .line 1420
    if-ne v2, v3, :cond_57

    .line 1421
    .line 1422
    invoke-virtual {v1}, Ly1/x;->I()Z

    .line 1423
    .line 1424
    .line 1425
    move-result v2

    .line 1426
    if-nez v2, :cond_55

    .line 1427
    .line 1428
    const/4 v1, 0x1

    .line 1429
    const/4 v9, 0x4

    .line 1430
    goto :goto_2b

    .line 1431
    :cond_55
    invoke-virtual {v1}, Ly1/x;->K()I

    .line 1432
    .line 1433
    .line 1434
    move-result v1

    .line 1435
    if-eqz v1, :cond_56

    .line 1436
    .line 1437
    const/16 v9, 0x9

    .line 1438
    .line 1439
    goto :goto_29

    .line 1440
    :cond_56
    const/4 v9, 0x3

    .line 1441
    goto :goto_29

    .line 1442
    :cond_57
    const/4 v1, 0x1

    .line 1443
    if-ne v2, v1, :cond_58

    .line 1444
    .line 1445
    iget v2, v7, Lz1/h;->m:I

    .line 1446
    .line 1447
    if-eqz v2, :cond_58

    .line 1448
    .line 1449
    goto :goto_2b

    .line 1450
    :cond_58
    iget v9, v7, Lz1/h;->m:I

    .line 1451
    .line 1452
    :goto_2b
    iget v2, v7, Lz1/h;->m:I

    .line 1453
    .line 1454
    if-eq v2, v9, :cond_59

    .line 1455
    .line 1456
    iput v9, v7, Lz1/h;->m:I

    .line 1457
    .line 1458
    iput-boolean v1, v7, Lz1/h;->B:Z

    .line 1459
    .line 1460
    new-instance v1, Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1461
    .line 1462
    invoke-direct {v1}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    .line 1463
    .line 1464
    .line 1465
    iget v2, v7, Lz1/h;->m:I

    .line 1466
    .line 1467
    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v1

    .line 1471
    iget-wide v2, v7, Lz1/h;->e:J

    .line 1472
    .line 1473
    sub-long/2addr v10, v2

    .line 1474
    invoke-virtual {v1, v10, v11}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v1

    .line 1478
    invoke-virtual {v1}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v1

    .line 1482
    new-instance v2, Ls1/f;

    .line 1483
    .line 1484
    const/16 v3, 0x17

    .line 1485
    .line 1486
    invoke-direct {v2, v7, v3, v1}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1487
    .line 1488
    .line 1489
    iget-object v1, v7, Lz1/h;->b:Ljava/util/concurrent/Executor;

    .line 1490
    .line 1491
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1492
    .line 1493
    .line 1494
    :cond_59
    const/16 v1, 0x404

    .line 1495
    .line 1496
    invoke-virtual {v0, v1}, Lua/i8;->o(I)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v2

    .line 1500
    if-eqz v2, :cond_5a

    .line 1501
    .line 1502
    iget-object v2, v7, Lz1/h;->c:Lz1/g;

    .line 1503
    .line 1504
    iget-object v0, v0, Lua/i8;->c:Ljava/lang/Object;

    .line 1505
    .line 1506
    check-cast v0, Landroid/util/SparseArray;

    .line 1507
    .line 1508
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v0

    .line 1512
    check-cast v0, Lz1/a;

    .line 1513
    .line 1514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v2, v0}, Lz1/g;->b(Lz1/a;)V

    .line 1518
    .line 1519
    .line 1520
    :cond_5a
    return-void

    .line 1521
    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    :pswitch_data_1
    .packed-switch 0x1772
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final e(Lz1/a;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lz1/a;->d:Lf2/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lf2/c0;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lz1/h;->b()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lz1/h;->j:Ljava/lang/String;

    .line 16
    .line 17
    new-instance p2, Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 18
    .line 19
    invoke-direct {p2}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "AndroidXMedia3"

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v1, "1.10.1"

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lz1/h;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 35
    .line 36
    iget-object p1, p1, Lz1/a;->b:Lr1/q0;

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Lz1/h;->c(Lr1/q0;Lf2/c0;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final f(Lz1/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lz1/a;->d:Lf2/c0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lf2/c0;->b()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lz1/h;->j:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lz1/h;->b()V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    iget-object p1, p0, Lz1/h;->h:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lz1/h;->i:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final g(IJLr1/p;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lz1/h;->e:J

    .line 7
    .line 8
    sub-long/2addr p2, v1

    .line 9
    invoke-virtual {v0, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 p3, 0x1

    .line 15
    if-eqz p4, :cond_d

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p5, p3, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-eq p5, v0, :cond_2

    .line 25
    .line 26
    if-eq p5, v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x2

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 34
    .line 35
    .line 36
    iget-object p5, p4, Lr1/p;->n:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz p5, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-object p5, p4, Lr1/p;->o:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz p5, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 48
    .line 49
    .line 50
    :cond_4
    iget-object p5, p4, Lr1/p;->k:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz p5, :cond_5

    .line 53
    .line 54
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 55
    .line 56
    .line 57
    :cond_5
    const/4 p5, -0x1

    .line 58
    iget v1, p4, Lr1/p;->j:I

    .line 59
    .line 60
    if-eq v1, p5, :cond_6

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 63
    .line 64
    .line 65
    :cond_6
    iget v1, p4, Lr1/p;->v:I

    .line 66
    .line 67
    if-eq v1, p5, :cond_7

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 70
    .line 71
    .line 72
    :cond_7
    iget v1, p4, Lr1/p;->w:I

    .line 73
    .line 74
    if-eq v1, p5, :cond_8

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 77
    .line 78
    .line 79
    :cond_8
    iget v1, p4, Lr1/p;->G:I

    .line 80
    .line 81
    if-eq v1, p5, :cond_9

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 84
    .line 85
    .line 86
    :cond_9
    iget v1, p4, Lr1/p;->H:I

    .line 87
    .line 88
    if-eq v1, p5, :cond_a

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 91
    .line 92
    .line 93
    :cond_a
    iget-object v1, p4, Lr1/p;->d:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v1, :cond_c

    .line 96
    .line 97
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 98
    .line 99
    const-string v2, "-"

    .line 100
    .line 101
    invoke-virtual {v1, v2, p5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p5

    .line 105
    aget-object p2, p5, p2

    .line 106
    .line 107
    array-length v1, p5

    .line 108
    if-lt v1, v0, :cond_b

    .line 109
    .line 110
    aget-object p5, p5, p3

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_b
    const/4 p5, 0x0

    .line 114
    :goto_1
    invoke-static {p2, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iget-object p5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p5, Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 123
    .line 124
    .line 125
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 126
    .line 127
    if-eqz p2, :cond_c

    .line 128
    .line 129
    check-cast p2, Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 132
    .line 133
    .line 134
    :cond_c
    const/high16 p2, -0x40800000    # -1.0f

    .line 135
    .line 136
    iget p4, p4, Lr1/p;->z:F

    .line 137
    .line 138
    cmpl-float p2, p4, p2

    .line 139
    .line 140
    if-eqz p2, :cond_e

    .line 141
    .line 142
    invoke-virtual {p1, p4}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_d
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 147
    .line 148
    .line 149
    :cond_e
    :goto_2
    iput-boolean p3, p0, Lz1/h;->B:Z

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance p2, Ls1/f;

    .line 156
    .line 157
    const/16 p3, 0x13

    .line 158
    .line 159
    invoke-direct {p2, p0, p3, p1}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lz1/h;->b:Ljava/util/concurrent/Executor;

    .line 163
    .line 164
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method
