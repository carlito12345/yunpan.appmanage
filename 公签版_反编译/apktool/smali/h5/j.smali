.class public final Lh5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/f;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lb6/b;


# instance fields
.field public A:Lcom/bumptech/glide/load/data/e;

.field public volatile B:Lh5/g;

.field public volatile C:Z

.field public volatile D:Z

.field public E:Z

.field public F:I

.field public final a:Lh5/h;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lb6/d;

.field public final d:La6/i;

.field public final e:Lv3/f;

.field public final f:Lv3/f;

.field public final g:La2/o;

.field public h:Lcom/bumptech/glide/f;

.field public i:Lf5/f;

.field public j:Lcom/bumptech/glide/i;

.field public k:Lh5/s;

.field public l:I

.field public m:I

.field public n:Lh5/l;

.field public p:Lf5/i;

.field public q:Lh5/r;

.field public r:I

.field public s:Lh5/i;

.field public t:Ljava/lang/Object;

.field public v:Ljava/lang/Thread;

.field public w:Lf5/f;

.field public x:Lf5/f;

.field public y:Ljava/lang/Object;

.field public z:Lf5/a;


# direct methods
.method public constructor <init>(La6/i;Lv3/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh5/h;

    .line 5
    .line 6
    invoke-direct {v0}, Lh5/h;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh5/j;->a:Lh5/h;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lh5/j;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lb6/d;

    .line 19
    .line 20
    invoke-direct {v0}, Lb6/d;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lh5/j;->c:Lb6/d;

    .line 24
    .line 25
    new-instance v0, Lv3/f;

    .line 26
    .line 27
    const/16 v1, 0x10

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v0, v1, v2}, Lv3/f;-><init>(IC)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lh5/j;->f:Lv3/f;

    .line 34
    .line 35
    new-instance v0, La2/o;

    .line 36
    .line 37
    invoke-direct {v0}, La2/o;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lh5/j;->g:La2/o;

    .line 41
    .line 42
    iput-object p1, p0, Lh5/j;->d:La6/i;

    .line 43
    .line 44
    iput-object p2, p0, Lh5/j;->e:Lv3/f;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lf5/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lf5/a;Lf5/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh5/j;->w:Lf5/f;

    .line 2
    .line 3
    iput-object p2, p0, Lh5/j;->y:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lh5/j;->A:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    iput-object p4, p0, Lh5/j;->z:Lf5/a;

    .line 8
    .line 9
    iput-object p5, p0, Lh5/j;->x:Lf5/f;

    .line 10
    .line 11
    iget-object p2, p0, Lh5/j;->a:Lh5/h;

    .line 12
    .line 13
    invoke-virtual {p2}, Lh5/h;->a()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    :cond_0
    iput-boolean p3, p0, Lh5/j;->E:Z

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lh5/j;->v:Ljava/lang/Thread;

    .line 32
    .line 33
    if-eq p1, p2, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x3

    .line 36
    invoke-virtual {p0, p1}, Lh5/j;->n(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lh5/j;->f()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final b()Lb6/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lh5/j;->c:Lb6/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Lf5/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lf5/a;)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh5/v;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v1, "Fetching data failed"

    .line 11
    .line 12
    invoke-direct {v0, v1, p2}, Lh5/v;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p1, v0, Lh5/v;->b:Lf5/f;

    .line 20
    .line 21
    iput-object p4, v0, Lh5/v;->c:Lf5/a;

    .line 22
    .line 23
    iput-object p2, v0, Lh5/v;->d:Ljava/lang/Class;

    .line 24
    .line 25
    iget-object p1, p0, Lh5/j;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lh5/j;->v:Ljava/lang/Thread;

    .line 35
    .line 36
    if-eq p1, p2, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    invoke-virtual {p0, p1}, Lh5/j;->n(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lh5/j;->o()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lh5/j;

    .line 2
    .line 3
    iget-object v0, p0, Lh5/j;->j:Lcom/bumptech/glide/i;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p1, Lh5/j;->j:Lcom/bumptech/glide/i;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lh5/j;->r:I

    .line 19
    .line 20
    iget p1, p1, Lh5/j;->r:I

    .line 21
    .line 22
    sub-int/2addr v0, p1

    .line 23
    :cond_0
    return v0
.end method

.method public final d(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;Lf5/a;)Lh5/z;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_0
    :try_start_0
    sget v0, La6/k;->a:I

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2, p3}, Lh5/j;->e(Ljava/lang/Object;Lf5/a;)Lh5/z;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string p3, "DecodeJob"

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {p3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 30
    .line 31
    .line 32
    iget-object p3, p0, Lh5/j;->k:Lh5/s;

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p3}, Lh5/s;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 50
    .line 51
    .line 52
    return-object p2

    .line 53
    :goto_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 54
    .line 55
    .line 56
    throw p2
.end method

.method public final e(Ljava/lang/Object;Lf5/a;)Lh5/z;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lh5/j;->a:Lh5/h;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lh5/h;->c(Ljava/lang/Class;)Lh5/x;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v0, p0, Lh5/j;->p:Lf5/i;

    .line 12
    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v4, 0x1a

    .line 16
    .line 17
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_3

    .line 21
    :cond_1
    sget-object v3, Lf5/a;->d:Lf5/a;

    .line 22
    .line 23
    if-eq p2, v3, :cond_3

    .line 24
    .line 25
    iget-boolean v1, v1, Lh5/h;->r:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/4 v1, 0x0

    .line 31
    goto :goto_2

    .line 32
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 33
    :goto_2
    sget-object v3, Lo5/p;->i:Lf5/h;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Boolean;

    .line 40
    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    new-instance v0, Lf5/i;

    .line 53
    .line 54
    invoke-direct {v0}, Lf5/i;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lh5/j;->p:Lf5/i;

    .line 58
    .line 59
    iget-object v5, v0, Lf5/i;->b:La6/d;

    .line 60
    .line 61
    iget-object v4, v4, Lf5/i;->b:La6/d;

    .line 62
    .line 63
    invoke-virtual {v5, v4}, La6/d;->g(La0/e;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v5, v3, v1}, La6/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :goto_3
    iget-object v0, p0, Lh5/j;->h:Lcom/bumptech/glide/f;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/k;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/k;->h(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :try_start_0
    iget v3, p0, Lh5/j;->l:I

    .line 85
    .line 86
    iget v4, p0, Lh5/j;->m:I

    .line 87
    .line 88
    new-instance v5, La2/g1;

    .line 89
    .line 90
    const/16 v0, 0x11

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-direct {v5, v0, p0, p2, v1}, La2/g1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 94
    .line 95
    .line 96
    move-object v6, p1

    .line 97
    invoke-virtual/range {v2 .. v7}, Lh5/x;->a(IILa2/g1;Lcom/bumptech/glide/load/data/g;Lf5/i;)Lh5/z;

    .line 98
    .line 99
    .line 100
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->b()V

    .line 102
    .line 103
    .line 104
    return-object p2

    .line 105
    :catchall_0
    move-exception p2

    .line 106
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->b()V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :goto_4
    throw p2

    .line 111
    :goto_5
    goto :goto_4
.end method

.method public final f()V
    .locals 11

    .line 1
    const-string v0, "DecodeJob"

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
    if-eqz v0, :cond_2

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "data: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lh5/j;->y:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", cache key: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lh5/j;->w:Lf5/f;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", fetcher: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lh5/j;->A:Lcom/bumptech/glide/load/data/e;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget v1, La6/k;->a:I

    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lh5/j;->k:Lh5/s;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1}, Lh5/s;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    :cond_0
    if-eqz v0, :cond_1

    .line 59
    .line 60
    const-string v1, ", "

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    :try_start_0
    iget-object v1, p0, Lh5/j;->A:Lcom/bumptech/glide/load/data/e;

    .line 74
    .line 75
    iget-object v2, p0, Lh5/j;->y:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v3, p0, Lh5/j;->z:Lf5/a;

    .line 78
    .line 79
    invoke-virtual {p0, v1, v2, v3}, Lh5/j;->d(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;Lf5/a;)Lh5/z;

    .line 80
    .line 81
    .line 82
    move-result-object v1
    :try_end_0
    .catch Lh5/v; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    iget-object v2, p0, Lh5/j;->x:Lf5/f;

    .line 86
    .line 87
    iget-object v3, p0, Lh5/j;->z:Lf5/a;

    .line 88
    .line 89
    iput-object v2, v1, Lh5/v;->b:Lf5/f;

    .line 90
    .line 91
    iput-object v3, v1, Lh5/v;->c:Lf5/a;

    .line 92
    .line 93
    iput-object v0, v1, Lh5/v;->d:Ljava/lang/Class;

    .line 94
    .line 95
    iget-object v2, p0, Lh5/j;->b:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-object v1, v0

    .line 101
    :goto_0
    if-eqz v1, :cond_9

    .line 102
    .line 103
    iget-object v2, p0, Lh5/j;->z:Lf5/a;

    .line 104
    .line 105
    iget-boolean v3, p0, Lh5/j;->E:Z

    .line 106
    .line 107
    instance-of v4, v1, Lh5/w;

    .line 108
    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    move-object v4, v1

    .line 112
    check-cast v4, Lh5/w;

    .line 113
    .line 114
    invoke-interface {v4}, Lh5/w;->initialize()V

    .line 115
    .line 116
    .line 117
    :cond_3
    iget-object v4, p0, Lh5/j;->f:Lv3/f;

    .line 118
    .line 119
    iget-object v4, v4, Lv3/f;->d:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v4, Lh5/y;

    .line 122
    .line 123
    const/4 v5, 0x1

    .line 124
    const/4 v6, 0x0

    .line 125
    if-eqz v4, :cond_4

    .line 126
    .line 127
    sget-object v0, Lh5/y;->e:Lv3/f;

    .line 128
    .line 129
    invoke-virtual {v0}, Lv3/f;->l()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lh5/y;

    .line 134
    .line 135
    iput-boolean v6, v0, Lh5/y;->d:Z

    .line 136
    .line 137
    iput-boolean v5, v0, Lh5/y;->c:Z

    .line 138
    .line 139
    iput-object v1, v0, Lh5/y;->b:Lh5/z;

    .line 140
    .line 141
    move-object v1, v0

    .line 142
    :cond_4
    invoke-virtual {p0}, Lh5/j;->q()V

    .line 143
    .line 144
    .line 145
    iget-object v4, p0, Lh5/j;->q:Lh5/r;

    .line 146
    .line 147
    monitor-enter v4

    .line 148
    :try_start_1
    iput-object v1, v4, Lh5/r;->n:Lh5/z;

    .line 149
    .line 150
    iput-object v2, v4, Lh5/r;->p:Lf5/a;

    .line 151
    .line 152
    iput-boolean v3, v4, Lh5/r;->x:Z

    .line 153
    .line 154
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 155
    invoke-virtual {v4}, Lh5/r;->h()V

    .line 156
    .line 157
    .line 158
    sget-object v1, Lh5/i;->e:Lh5/i;

    .line 159
    .line 160
    iput-object v1, p0, Lh5/j;->s:Lh5/i;

    .line 161
    .line 162
    :try_start_2
    iget-object v1, p0, Lh5/j;->f:Lv3/f;

    .line 163
    .line 164
    iget-object v2, v1, Lv3/f;->d:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v2, Lh5/y;

    .line 167
    .line 168
    if-eqz v2, :cond_5

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    const/4 v5, 0x0

    .line 172
    :goto_1
    if-eqz v5, :cond_6

    .line 173
    .line 174
    iget-object v2, p0, Lh5/j;->d:La6/i;

    .line 175
    .line 176
    iget-object v7, p0, Lh5/j;->p:Lf5/i;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    .line 180
    .line 181
    :try_start_3
    invoke-virtual {v2}, La6/i;->a()Lj5/a;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iget-object v3, v1, Lv3/f;->b:Ljava/lang/Object;

    .line 186
    .line 187
    move-object v9, v3

    .line 188
    check-cast v9, Lf5/f;

    .line 189
    .line 190
    new-instance v10, Lv3/f;

    .line 191
    .line 192
    iget-object v3, v1, Lv3/f;->c:Ljava/lang/Object;

    .line 193
    .line 194
    move-object v5, v3

    .line 195
    check-cast v5, Lf5/l;

    .line 196
    .line 197
    iget-object v3, v1, Lv3/f;->d:Ljava/lang/Object;

    .line 198
    .line 199
    move-object v6, v3

    .line 200
    check-cast v6, Lh5/y;

    .line 201
    .line 202
    const/16 v4, 0xf

    .line 203
    .line 204
    const/4 v8, 0x0

    .line 205
    move-object v3, v10

    .line 206
    invoke-direct/range {v3 .. v8}, Lv3/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v2, v9, v10}, Lj5/a;->n(Lf5/f;Lv3/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    .line 211
    .line 212
    :try_start_4
    iget-object v1, v1, Lv3/f;->d:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v1, Lh5/y;

    .line 215
    .line 216
    invoke-virtual {v1}, Lh5/y;->c()V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :catchall_0
    move-exception v2

    .line 221
    iget-object v1, v1, Lv3/f;->d:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v1, Lh5/y;

    .line 224
    .line 225
    invoke-virtual {v1}, Lh5/y;->c()V

    .line 226
    .line 227
    .line 228
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 229
    :catchall_1
    move-exception v1

    .line 230
    goto :goto_3

    .line 231
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 232
    .line 233
    invoke-virtual {v0}, Lh5/y;->c()V

    .line 234
    .line 235
    .line 236
    :cond_7
    invoke-virtual {p0}, Lh5/j;->j()V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :goto_3
    if-eqz v0, :cond_8

    .line 241
    .line 242
    invoke-virtual {v0}, Lh5/y;->c()V

    .line 243
    .line 244
    .line 245
    :cond_8
    throw v1

    .line 246
    :catchall_2
    move-exception v0

    .line 247
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 248
    throw v0

    .line 249
    :cond_9
    invoke-virtual {p0}, Lh5/j;->o()V

    .line 250
    .line 251
    .line 252
    :goto_4
    return-void
.end method

.method public final g()Lh5/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lh5/j;->s:Lh5/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lh5/j;->a:Lh5/h;

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Unrecognized stage: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lh5/j;->s:Lh5/i;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    new-instance v0, Lh5/e0;

    .line 46
    .line 47
    invoke-direct {v0, v2, p0}, Lh5/e0;-><init>(Lh5/h;Lh5/j;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    new-instance v0, Lh5/d;

    .line 52
    .line 53
    invoke-virtual {v2}, Lh5/h;->a()Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1, v2, p0}, Lh5/d;-><init>(Ljava/util/List;Lh5/h;Lh5/f;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    new-instance v0, Lh5/a0;

    .line 62
    .line 63
    invoke-direct {v0, v2, p0}, Lh5/a0;-><init>(Lh5/h;Lh5/j;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public final h(Lh5/i;)Lh5/i;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    sget-object v1, Lh5/i;->f:Lh5/i;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Unrecognized stage: "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    return-object v1

    .line 43
    :cond_2
    sget-object p1, Lh5/i;->d:Lh5/i;

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_3
    iget-object p1, p0, Lh5/j;->n:Lh5/l;

    .line 47
    .line 48
    iget p1, p1, Lh5/l;->a:I

    .line 49
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    :pswitch_0
    const/4 p1, 0x1

    .line 54
    goto :goto_1

    .line 55
    :pswitch_1
    const/4 p1, 0x0

    .line 56
    :goto_1
    sget-object v0, Lh5/i;->c:Lh5/i;

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-virtual {p0, v0}, Lh5/j;->h(Lh5/i;)Lh5/i;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_2
    return-object v0

    .line 66
    :cond_5
    iget-object p1, p0, Lh5/j;->n:Lh5/l;

    .line 67
    .line 68
    iget p1, p1, Lh5/l;->a:I

    .line 69
    .line 70
    packed-switch p1, :pswitch_data_1

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    goto :goto_3

    .line 75
    :pswitch_2
    const/4 p1, 0x0

    .line 76
    :goto_3
    sget-object v0, Lh5/i;->b:Lh5/i;

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_6
    invoke-virtual {p0, v0}, Lh5/j;->h(Lh5/i;)Lh5/i;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_4
    return-object v0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final i()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lh5/j;->q()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh5/v;

    .line 5
    .line 6
    const-string v1, "Failed to load resource"

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Lh5/j;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lh5/v;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lh5/j;->q:Lh5/r;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iput-object v0, v1, Lh5/r;->r:Lh5/v;

    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v1}, Lh5/r;->g()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lh5/j;->k()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh5/j;->g:La2/o;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, La2/o;->b:Z

    .line 6
    .line 7
    invoke-virtual {v0}, La2/o;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lh5/j;->m()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh5/j;->g:La2/o;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, La2/o;->c:Z

    .line 6
    .line 7
    invoke-virtual {v0}, La2/o;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lh5/j;->m()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh5/j;->g:La2/o;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, La2/o;->a:Z

    .line 6
    .line 7
    invoke-virtual {v0}, La2/o;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lh5/j;->m()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lh5/j;->g:La2/o;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, v0, La2/o;->b:Z

    .line 6
    .line 7
    iput-boolean v1, v0, La2/o;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, La2/o;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    iget-object v0, p0, Lh5/j;->f:Lv3/f;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Lv3/f;->b:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v2, v0, Lv3/f;->c:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v2, v0, Lv3/f;->d:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Lh5/j;->a:Lh5/h;

    .line 22
    .line 23
    iput-object v2, v0, Lh5/h;->c:Lcom/bumptech/glide/f;

    .line 24
    .line 25
    iput-object v2, v0, Lh5/h;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v2, v0, Lh5/h;->n:Lf5/f;

    .line 28
    .line 29
    iput-object v2, v0, Lh5/h;->g:Ljava/lang/Class;

    .line 30
    .line 31
    iput-object v2, v0, Lh5/h;->k:Ljava/lang/Class;

    .line 32
    .line 33
    iput-object v2, v0, Lh5/h;->i:Lf5/i;

    .line 34
    .line 35
    iput-object v2, v0, Lh5/h;->o:Lcom/bumptech/glide/i;

    .line 36
    .line 37
    iput-object v2, v0, Lh5/h;->j:La6/d;

    .line 38
    .line 39
    iput-object v2, v0, Lh5/h;->p:Lh5/l;

    .line 40
    .line 41
    iget-object v3, v0, Lh5/h;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    iput-boolean v1, v0, Lh5/h;->l:Z

    .line 47
    .line 48
    iget-object v3, v0, Lh5/h;->b:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iput-boolean v1, v0, Lh5/h;->m:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lh5/j;->C:Z

    .line 56
    .line 57
    iput-object v2, p0, Lh5/j;->h:Lcom/bumptech/glide/f;

    .line 58
    .line 59
    iput-object v2, p0, Lh5/j;->i:Lf5/f;

    .line 60
    .line 61
    iput-object v2, p0, Lh5/j;->p:Lf5/i;

    .line 62
    .line 63
    iput-object v2, p0, Lh5/j;->j:Lcom/bumptech/glide/i;

    .line 64
    .line 65
    iput-object v2, p0, Lh5/j;->k:Lh5/s;

    .line 66
    .line 67
    iput-object v2, p0, Lh5/j;->q:Lh5/r;

    .line 68
    .line 69
    iput-object v2, p0, Lh5/j;->s:Lh5/i;

    .line 70
    .line 71
    iput-object v2, p0, Lh5/j;->B:Lh5/g;

    .line 72
    .line 73
    iput-object v2, p0, Lh5/j;->v:Ljava/lang/Thread;

    .line 74
    .line 75
    iput-object v2, p0, Lh5/j;->w:Lf5/f;

    .line 76
    .line 77
    iput-object v2, p0, Lh5/j;->y:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, p0, Lh5/j;->z:Lf5/a;

    .line 80
    .line 81
    iput-object v2, p0, Lh5/j;->A:Lcom/bumptech/glide/load/data/e;

    .line 82
    .line 83
    iput-boolean v1, p0, Lh5/j;->D:Z

    .line 84
    .line 85
    iget-object v0, p0, Lh5/j;->b:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lh5/j;->e:Lv3/f;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Lv3/f;->L(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw v1
.end method

.method public final n(I)V
    .locals 1

    .line 1
    iput p1, p0, Lh5/j;->F:I

    .line 2
    .line 3
    iget-object p1, p0, Lh5/j;->q:Lh5/r;

    .line 4
    .line 5
    iget-boolean v0, p1, Lh5/r;->m:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lh5/r;->i:Lk5/d;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p1, Lh5/r;->h:Lk5/d;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p0}, Lk5/d;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lh5/j;->v:Ljava/lang/Thread;

    .line 6
    .line 7
    sget v0, La6/k;->a:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :cond_0
    iget-boolean v1, p0, Lh5/j;->D:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lh5/j;->B:Lh5/g;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lh5/j;->B:Lh5/g;

    .line 22
    .line 23
    invoke-interface {v0}, Lh5/g;->b()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lh5/j;->s:Lh5/i;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lh5/j;->h(Lh5/i;)Lh5/i;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lh5/j;->s:Lh5/i;

    .line 36
    .line 37
    invoke-virtual {p0}, Lh5/j;->g()Lh5/g;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lh5/j;->B:Lh5/g;

    .line 42
    .line 43
    iget-object v1, p0, Lh5/j;->s:Lh5/i;

    .line 44
    .line 45
    sget-object v2, Lh5/i;->d:Lh5/i;

    .line 46
    .line 47
    if-ne v1, v2, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    invoke-virtual {p0, v0}, Lh5/j;->n(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lh5/j;->s:Lh5/i;

    .line 55
    .line 56
    sget-object v2, Lh5/i;->f:Lh5/i;

    .line 57
    .line 58
    if-eq v1, v2, :cond_2

    .line 59
    .line 60
    iget-boolean v1, p0, Lh5/j;->D:Z

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    :cond_2
    if-nez v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lh5/j;->i()V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    iget v0, p0, Lh5/j;->F:I

    .line 2
    .line 3
    invoke-static {v0}, Ld0/f;->c(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lh5/j;->f()V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    iget v1, p0, Lh5/j;->F:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    const-string v1, "null"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v1, "DECODE_DATA"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string v1, "INITIALIZE"

    .line 42
    .line 43
    :goto_0
    const-string v2, "Unrecognized run reason: "

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_4
    invoke-virtual {p0}, Lh5/j;->o()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    sget-object v0, Lh5/i;->a:Lh5/i;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lh5/j;->h(Lh5/i;)Lh5/i;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lh5/j;->s:Lh5/i;

    .line 64
    .line 65
    invoke-virtual {p0}, Lh5/j;->g()Lh5/g;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lh5/j;->B:Lh5/g;

    .line 70
    .line 71
    invoke-virtual {p0}, Lh5/j;->o()V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh5/j;->c:Lb6/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb6/d;->a()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lh5/j;->C:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lh5/j;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lh5/j;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Throwable;

    .line 28
    .line 29
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "Already notified"

    .line 32
    .line 33
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    iput-boolean v1, p0, Lh5/j;->C:Z

    .line 38
    .line 39
    return-void
.end method

.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lh5/j;->A:Lcom/bumptech/glide/load/data/e;

    .line 2
    .line 3
    :try_start_0
    iget-boolean v1, p0, Lh5/j;->D:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lh5/j;->i()V
    :try_end_0
    .catch Lh5/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    goto :goto_2

    .line 20
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lh5/j;->p()V
    :try_end_1
    .catch Lh5/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void

    .line 29
    :goto_0
    :try_start_2
    const-string v2, "DecodeJob"

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget-object v2, p0, Lh5/j;->s:Lh5/i;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    move-exception v1

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    :goto_1
    iget-object v2, p0, Lh5/j;->s:Lh5/i;

    .line 49
    .line 50
    sget-object v3, Lh5/i;->e:Lh5/i;

    .line 51
    .line 52
    if-eq v2, v3, :cond_4

    .line 53
    .line 54
    iget-object v2, p0, Lh5/j;->b:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lh5/j;->i()V

    .line 60
    .line 61
    .line 62
    :cond_4
    iget-boolean v2, p0, Lh5/j;->D:Z

    .line 63
    .line 64
    if-nez v2, :cond_5

    .line 65
    .line 66
    throw v1

    .line 67
    :cond_5
    throw v1

    .line 68
    :goto_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    :goto_3
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 72
    .line 73
    .line 74
    :cond_6
    throw v1
.end method
