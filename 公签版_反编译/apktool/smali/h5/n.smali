.class public final Lh5/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Z


# instance fields
.field public final a:Lcom/bumptech/glide/g;

.field public final b:Lgf/g;

.field public final c:Lj5/g;

.field public final d:Lw/r3;

.field public final e:Lh5/d0;

.field public final f:Landroidx/room/s;

.field public final g:Lv3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Engine"

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
    sput-boolean v0, Lh5/n;->h:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lj5/g;Landroidx/recyclerview/widget/h;Lk5/d;Lk5/d;Lk5/d;Lk5/d;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh5/n;->c:Lj5/g;

    .line 5
    .line 6
    new-instance v0, La6/i;

    .line 7
    .line 8
    invoke-direct {v0, p2}, La6/i;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lv3/f;

    .line 12
    .line 13
    const/16 v1, 0xe

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {p2, v2, v1}, Lv3/f;-><init>(BI)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lh5/n;->g:Lv3/f;

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    iput-object p0, p2, Lv3/f;->d:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    new-instance p2, Lgf/g;

    .line 28
    .line 29
    const/16 v1, 0x1c

    .line 30
    .line 31
    invoke-direct {p2, v1}, Lgf/g;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lh5/n;->b:Lgf/g;

    .line 35
    .line 36
    new-instance p2, Lcom/bumptech/glide/g;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {p2, v1}, Lcom/bumptech/glide/g;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lh5/n;->a:Lcom/bumptech/glide/g;

    .line 43
    .line 44
    new-instance p2, Lw/r3;

    .line 45
    .line 46
    move-object v2, p2

    .line 47
    move-object v3, p3

    .line 48
    move-object v4, p4

    .line 49
    move-object v5, p5

    .line 50
    move-object v6, p6

    .line 51
    move-object v7, p0

    .line 52
    move-object v8, p0

    .line 53
    invoke-direct/range {v2 .. v8}, Lw/r3;-><init>(Lk5/d;Lk5/d;Lk5/d;Lk5/d;Lh5/n;Lh5/n;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lh5/n;->d:Lw/r3;

    .line 57
    .line 58
    new-instance p2, Landroidx/room/s;

    .line 59
    .line 60
    invoke-direct {p2, v0}, Landroidx/room/s;-><init>(La6/i;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lh5/n;->f:Landroidx/room/s;

    .line 64
    .line 65
    new-instance p2, Lh5/d0;

    .line 66
    .line 67
    const/4 p3, 0x0

    .line 68
    invoke-direct {p2, p3}, Lh5/d0;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lh5/n;->e:Lh5/d0;

    .line 72
    .line 73
    iput-object p0, p1, Lj5/g;->e:Lh5/n;

    .line 74
    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_0

    .line 78
    :catchall_1
    move-exception p1

    .line 79
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    :try_start_4
    throw p1

    .line 81
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    throw p1
.end method

.method public static f(Lh5/z;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lh5/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lh5/t;

    .line 6
    .line 7
    invoke-virtual {p0}, Lh5/t;->c()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Cannot release anything but an EngineResource"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/f;Ljava/lang/Object;Lf5/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/i;Lh5/l;La6/d;ZZLf5/i;ZZLw5/f;La6/g;)Lv3/f;
    .locals 22

    move-object/from16 v15, p0

    .line 1
    sget-boolean v0, Lh5/n;->h:Z

    if-eqz v0, :cond_0

    sget v0, La6/k;->a:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    :goto_0
    move-wide v13, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3
    :goto_1
    iget-object v0, v15, Lh5/n;->b:Lgf/g;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Lh5/s;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Lh5/s;-><init>(Ljava/lang/Object;Lf5/f;IILa6/d;Ljava/lang/Class;Ljava/lang/Class;Lf5/i;)V

    .line 6
    monitor-enter p0

    move/from16 v12, p14

    .line 7
    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, Lh5/n;->c(Lh5/s;ZJ)Lh5/t;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v20, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, v0

    .line 8
    invoke-virtual/range {v1 .. v21}, Lh5/n;->g(Lcom/bumptech/glide/f;Ljava/lang/Object;Lf5/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/i;Lh5/l;La6/d;ZZLf5/i;ZZLw5/f;La6/g;Lh5/s;J)Lv3/f;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 9
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v0, Lf5/a;->e:Lf5/a;

    const/4 v2, 0x0

    move-object/from16 v3, p16

    invoke-virtual {v3, v1, v0, v2}, Lw5/f;->g(Lh5/t;Lf5/a;Z)V

    const/4 v0, 0x0

    return-object v0

    .line 11
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final b(Lh5/s;)Lh5/t;
    .locals 9

    .line 1
    iget-object v0, p0, Lh5/n;->c:Lj5/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, La6/m;->a:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, La6/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    move-object v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_1
    iget-wide v3, v0, La6/m;->d:J

    .line 19
    .line 20
    iget v5, v1, La6/l;->b:I

    .line 21
    .line 22
    int-to-long v5, v5

    .line 23
    sub-long/2addr v3, v5

    .line 24
    iput-wide v3, v0, La6/m;->d:J

    .line 25
    .line 26
    iget-object v1, v1, La6/l;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    :goto_0
    move-object v4, v1

    .line 30
    check-cast v4, Lh5/z;

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    instance-of v0, v4, Lh5/t;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    move-object v2, v4

    .line 40
    check-cast v2, Lh5/t;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    new-instance v2, Lh5/t;

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    const/4 v6, 0x1

    .line 47
    move-object v3, v2

    .line 48
    move-object v7, p1

    .line 49
    move-object v8, p0

    .line 50
    invoke-direct/range {v3 .. v8}, Lh5/t;-><init>(Lh5/z;ZZLh5/s;Lh5/n;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Lh5/t;->b()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lh5/n;->g:Lv3/f;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v2}, Lv3/f;->m(Lh5/s;Lh5/t;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-object v2

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p1
.end method

.method public final c(Lh5/s;ZJ)Lh5/t;
    .locals 1

    .line 1
    const/4 p3, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-object p3

    .line 5
    :cond_0
    iget-object p2, p0, Lh5/n;->g:Lv3/f;

    .line 6
    .line 7
    monitor-enter p2

    .line 8
    :try_start_0
    iget-object p4, p2, Lv3/f;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p4, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    check-cast p4, Lh5/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez p4, :cond_1

    .line 19
    .line 20
    monitor-exit p2

    .line 21
    move-object v0, p3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :try_start_1
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lh5/t;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p2, p4}, Lv3/f;->t(Lh5/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_0
    monitor-exit p2

    .line 38
    :goto_1
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Lh5/t;->b()V

    .line 41
    .line 42
    .line 43
    :cond_3
    if-eqz v0, :cond_5

    .line 44
    .line 45
    sget-boolean p2, Lh5/n;->h:Z

    .line 46
    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    sget p2, La6/k;->a:I

    .line 50
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lh5/s;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    :cond_4
    return-object v0

    .line 58
    :cond_5
    invoke-virtual {p0, p1}, Lh5/n;->b(Lh5/s;)Lh5/t;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_7

    .line 63
    .line 64
    sget-boolean p3, Lh5/n;->h:Z

    .line 65
    .line 66
    if-eqz p3, :cond_6

    .line 67
    .line 68
    sget p3, La6/k;->a:I

    .line 69
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lh5/s;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    :cond_6
    return-object p2

    .line 77
    :cond_7
    return-object p3

    .line 78
    :goto_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p1
.end method

.method public final declared-synchronized d(Lh5/r;Lh5/s;Lh5/t;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p3, Lh5/t;->a:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lh5/n;->g:Lv3/f;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Lv3/f;->m(Lh5/s;Lh5/t;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object p3, p0, Lh5/n;->a:Lcom/bumptech/glide/g;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p3, p3, Lcom/bumptech/glide/g;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_1
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
    throw p1
.end method

.method public final e(Lh5/s;Lh5/t;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh5/n;->g:Lv3/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lv3/f;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lh5/b;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, v1, Lh5/b;->c:Lh5/z;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    iget-boolean v0, p2, Lh5/t;->a:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lh5/n;->c:Lj5/g;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, La6/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lh5/z;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lh5/n;->e:Lh5/d0;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0}, Lh5/d0;->e(Lh5/z;Z)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

.method public final g(Lcom/bumptech/glide/f;Ljava/lang/Object;Lf5/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/i;Lh5/l;La6/d;ZZLf5/i;ZZLw5/f;La6/g;Lh5/s;J)Lv3/f;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    const/4 v12, 0x1

    .line 1
    iget-object v13, v1, Lh5/n;->a:Lcom/bumptech/glide/g;

    .line 2
    iget-object v13, v13, Lcom/bumptech/glide/g;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lh5/r;

    if-eqz v13, :cond_1

    .line 4
    invoke-virtual {v13, v9, v10}, Lh5/r;->a(Lw5/f;La6/g;)V

    .line 5
    sget-boolean v0, Lh5/n;->h:Z

    if-eqz v0, :cond_0

    .line 6
    sget v0, La6/k;->a:I

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 8
    invoke-virtual/range {p18 .. p18}, Lh5/s;->toString()Ljava/lang/String;

    .line 9
    :cond_0
    new-instance v0, Lv3/f;

    invoke-direct {v0, v1, v9, v13}, Lv3/f;-><init>(Lh5/n;Lw5/f;Lh5/r;)V

    return-object v0

    .line 10
    :cond_1
    iget-object v13, v1, Lh5/n;->d:Lw/r3;

    .line 11
    iget-object v13, v13, Lw/r3;->g:Ljava/lang/Object;

    check-cast v13, Lv3/f;

    .line 12
    invoke-virtual {v13}, Lv3/f;->l()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lh5/r;

    .line 13
    monitor-enter v13

    .line 14
    :try_start_0
    iput-object v11, v13, Lh5/r;->k:Lh5/s;

    move/from16 v14, p14

    .line 15
    iput-boolean v14, v13, Lh5/r;->l:Z

    move/from16 v14, p15

    .line 16
    iput-boolean v14, v13, Lh5/r;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v13

    .line 18
    iget-object v14, v1, Lh5/n;->f:Landroidx/room/s;

    .line 19
    iget-object v15, v14, Landroidx/room/s;->d:Ljava/lang/Object;

    check-cast v15, Lv3/f;

    .line 20
    invoke-virtual {v15}, Lv3/f;->l()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lh5/j;

    .line 21
    iget v9, v14, Landroidx/room/s;->b:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v14, Landroidx/room/s;->b:I

    .line 22
    iget-object v10, v15, Lh5/j;->a:Lh5/h;

    iput-object v0, v10, Lh5/h;->c:Lcom/bumptech/glide/f;

    .line 23
    iput-object v2, v10, Lh5/h;->d:Ljava/lang/Object;

    .line 24
    iput-object v3, v10, Lh5/h;->n:Lf5/f;

    .line 25
    iput v4, v10, Lh5/h;->e:I

    .line 26
    iput v5, v10, Lh5/h;->f:I

    .line 27
    iput-object v7, v10, Lh5/h;->p:Lh5/l;

    move-object/from16 v14, p6

    .line 28
    iput-object v14, v10, Lh5/h;->g:Ljava/lang/Class;

    .line 29
    iget-object v14, v15, Lh5/j;->d:La6/i;

    iput-object v14, v10, Lh5/h;->h:La6/i;

    move-object/from16 v14, p7

    .line 30
    iput-object v14, v10, Lh5/h;->k:Ljava/lang/Class;

    .line 31
    iput-object v6, v10, Lh5/h;->o:Lcom/bumptech/glide/i;

    .line 32
    iput-object v8, v10, Lh5/h;->i:Lf5/i;

    move-object/from16 v14, p10

    .line 33
    iput-object v14, v10, Lh5/h;->j:La6/d;

    move/from16 v14, p11

    .line 34
    iput-boolean v14, v10, Lh5/h;->q:Z

    move/from16 v14, p12

    .line 35
    iput-boolean v14, v10, Lh5/h;->r:Z

    .line 36
    iput-object v0, v15, Lh5/j;->h:Lcom/bumptech/glide/f;

    .line 37
    iput-object v3, v15, Lh5/j;->i:Lf5/f;

    .line 38
    iput-object v6, v15, Lh5/j;->j:Lcom/bumptech/glide/i;

    .line 39
    iput-object v11, v15, Lh5/j;->k:Lh5/s;

    .line 40
    iput v4, v15, Lh5/j;->l:I

    .line 41
    iput v5, v15, Lh5/j;->m:I

    .line 42
    iput-object v7, v15, Lh5/j;->n:Lh5/l;

    .line 43
    iput-object v8, v15, Lh5/j;->p:Lf5/i;

    .line 44
    iput-object v13, v15, Lh5/j;->q:Lh5/r;

    .line 45
    iput v9, v15, Lh5/j;->r:I

    .line 46
    iput v12, v15, Lh5/j;->F:I

    .line 47
    iput-object v2, v15, Lh5/j;->t:Ljava/lang/Object;

    .line 48
    iget-object v0, v1, Lh5/n;->a:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iget-object v0, v0, Lcom/bumptech/glide/g;->a:Ljava/util/HashMap;

    .line 50
    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p16

    move-object/from16 v2, p17

    .line 51
    invoke-virtual {v13, v0, v2}, Lh5/r;->a(Lw5/f;La6/g;)V

    .line 52
    invoke-virtual {v13, v15}, Lh5/r;->k(Lh5/j;)V

    .line 53
    sget-boolean v2, Lh5/n;->h:Z

    if-eqz v2, :cond_2

    .line 54
    sget v2, La6/k;->a:I

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 56
    invoke-virtual/range {p18 .. p18}, Lh5/s;->toString()Ljava/lang/String;

    .line 57
    :cond_2
    new-instance v2, Lv3/f;

    invoke-direct {v2, v1, v0, v13}, Lv3/f;-><init>(Lh5/n;Lw5/f;Lh5/r;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 58
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
