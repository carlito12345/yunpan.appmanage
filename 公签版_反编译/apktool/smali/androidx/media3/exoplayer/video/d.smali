.class public final Landroidx/media3/exoplayer/video/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/j0;


# instance fields
.field public final a:Landroidx/media3/exoplayer/video/z;

.field public final b:Landroidx/media3/exoplayer/video/a0;

.field public final c:Landroidx/media3/exoplayer/video/d0;

.field public final d:Ljava/util/ArrayDeque;

.field public e:Landroid/view/Surface;

.field public f:Lr1/p;

.field public g:J

.field public h:Landroidx/media3/exoplayer/video/h0;

.field public i:Ljava/util/concurrent/Executor;

.field public j:Landroidx/media3/exoplayer/video/x;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/z;Landroidx/media3/exoplayer/video/a0;Lu1/z;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/video/d;->b:Landroidx/media3/exoplayer/video/a0;

    .line 7
    .line 8
    iput-object p3, p1, Landroidx/media3/exoplayer/video/z;->l:Lu1/z;

    .line 9
    .line 10
    new-instance p3, Landroidx/media3/exoplayer/video/d0;

    .line 11
    .line 12
    new-instance v0, La2/g1;

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    invoke-direct {v0, v1, p0}, La2/g1;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p3, v0, p1, p2}, Landroidx/media3/exoplayer/video/d0;-><init>(La2/g1;Landroidx/media3/exoplayer/video/z;Landroidx/media3/exoplayer/video/a0;)V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Landroidx/media3/exoplayer/video/d;->c:Landroidx/media3/exoplayer/video/d0;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->d:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    new-instance p1, Lr1/o;

    .line 31
    .line 32
    invoke-direct {p1}, Lr1/o;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance p2, Lr1/p;

    .line 36
    .line 37
    invoke-direct {p2, p1}, Lr1/p;-><init>(Lr1/o;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Landroidx/media3/exoplayer/video/d;->f:Lr1/p;

    .line 41
    .line 42
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/d;->g:J

    .line 48
    .line 49
    sget-object p1, Landroidx/media3/exoplayer/video/h0;->o:Lgf/g;

    .line 50
    .line 51
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->h:Landroidx/media3/exoplayer/video/h0;

    .line 52
    .line 53
    new-instance p1, Landroidx/media3/exoplayer/video/a;

    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/video/a;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->i:Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    new-instance p1, Landroidx/media3/exoplayer/video/b;

    .line 62
    .line 63
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/b;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->j:Landroidx/media3/exoplayer/video/x;

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->c:Landroidx/media3/exoplayer/video/d0;

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/media3/exoplayer/video/d0;->j:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/d0;->i:J

    .line 15
    .line 16
    cmp-long v0, v3, v1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final c()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->e:Landroid/view/Surface;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final d(La1/i;)V
    .locals 1

    .line 1
    sget-object v0, Ly7/a;->a:Ly7/a;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->h:Landroidx/media3/exoplayer/video/h0;

    .line 4
    .line 5
    iput-object v0, p0, Landroidx/media3/exoplayer/video/d;->i:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    return-void
.end method

.method public final e(JLandroidx/media3/exoplayer/video/h;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->d:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Landroidx/media3/exoplayer/video/d;->c:Landroidx/media3/exoplayer/video/d0;

    .line 7
    .line 8
    iget-object v0, p3, Landroidx/media3/exoplayer/video/d0;->f:Lf3/d;

    .line 9
    .line 10
    iget v1, v0, Lf3/d;->c:I

    .line 11
    .line 12
    iget-object v2, v0, Lf3/d;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, [J

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    const/4 v4, 0x1

    .line 18
    if-ne v1, v3, :cond_1

    .line 19
    .line 20
    array-length v1, v2

    .line 21
    shl-int/2addr v1, v4

    .line 22
    if-ltz v1, :cond_0

    .line 23
    .line 24
    new-array v3, v1, [J

    .line 25
    .line 26
    array-length v5, v2

    .line 27
    iget v6, v0, Lf3/d;->a:I

    .line 28
    .line 29
    sub-int/2addr v5, v6

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static {v2, v6, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lf3/d;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, [J

    .line 37
    .line 38
    invoke-static {v2, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    iput v7, v0, Lf3/d;->a:I

    .line 42
    .line 43
    iget v2, v0, Lf3/d;->c:I

    .line 44
    .line 45
    sub-int/2addr v2, v4

    .line 46
    iput v2, v0, Lf3/d;->b:I

    .line 47
    .line 48
    iput-object v3, v0, Lf3/d;->e:Ljava/lang/Object;

    .line 49
    .line 50
    sub-int/2addr v1, v4

    .line 51
    iput v1, v0, Lf3/d;->d:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_1
    :goto_0
    iget v1, v0, Lf3/d;->b:I

    .line 61
    .line 62
    add-int/2addr v1, v4

    .line 63
    iget v2, v0, Lf3/d;->d:I

    .line 64
    .line 65
    and-int/2addr v1, v2

    .line 66
    iput v1, v0, Lf3/d;->b:I

    .line 67
    .line 68
    iget-object v2, v0, Lf3/d;->e:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, [J

    .line 71
    .line 72
    aput-wide p1, v2, v1

    .line 73
    .line 74
    iget v1, v0, Lf3/d;->c:I

    .line 75
    .line 76
    add-int/2addr v1, v4

    .line 77
    iput v1, v0, Lf3/d;->c:I

    .line 78
    .line 79
    iput-wide p1, p3, Landroidx/media3/exoplayer/video/d0;->h:J

    .line 80
    .line 81
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    iput-wide p1, p3, Landroidx/media3/exoplayer/video/d0;->j:J

    .line 87
    .line 88
    iget-object p1, p0, Landroidx/media3/exoplayer/video/d;->i:Ljava/util/concurrent/Executor;

    .line 89
    .line 90
    new-instance p2, Landroidx/media3/exoplayer/video/c0;

    .line 91
    .line 92
    const/4 p3, 0x1

    .line 93
    invoke-direct {p2, p3, p0}, Landroidx/media3/exoplayer/video/c0;-><init>(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    return v4
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->b:Landroidx/media3/exoplayer/video/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/a0;->b()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 8
    .line 9
    iput-boolean v0, v1, Landroidx/media3/exoplayer/video/z;->d:Z

    .line 10
    .line 11
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v2, v1, Landroidx/media3/exoplayer/video/z;->i:J

    .line 17
    .line 18
    iget-object v0, v1, Landroidx/media3/exoplayer/video/z;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onStopped()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->b:Landroidx/media3/exoplayer/video/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/a0;->b()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 8
    .line 9
    iput-boolean v0, v1, Landroidx/media3/exoplayer/video/z;->d:Z

    .line 10
    .line 11
    iget-object v0, v1, Landroidx/media3/exoplayer/video/z;->l:Lu1/z;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {v2, v3}, Lu1/f0;->G(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iput-wide v2, v1, Landroidx/media3/exoplayer/video/z;->g:J

    .line 25
    .line 26
    iget-object v0, v1, Landroidx/media3/exoplayer/video/z;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onStarted()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final h(J)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final i(Landroidx/media3/exoplayer/video/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->j:Landroidx/media3/exoplayer/video/x;

    .line 2
    .line 3
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->c:Landroidx/media3/exoplayer/video/d0;

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/media3/exoplayer/video/d0;->h:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    const-wide/high16 v1, -0x8000000000000000L

    .line 15
    .line 16
    iput-wide v1, v0, Landroidx/media3/exoplayer/video/d0;->h:J

    .line 17
    .line 18
    iput-wide v1, v0, Landroidx/media3/exoplayer/video/d0;->i:J

    .line 19
    .line 20
    :cond_0
    iget-wide v1, v0, Landroidx/media3/exoplayer/video/d0;->h:J

    .line 21
    .line 22
    iput-wide v1, v0, Landroidx/media3/exoplayer/video/d0;->j:J

    .line 23
    .line 24
    return-void
.end method

.method public final k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/video/z;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->setChangeFrameRateStrategy(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final l(Lr1/p;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final m(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpl-float v1, p1, v1

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-static {v1}, La9/o;->k(Z)V

    .line 15
    .line 16
    .line 17
    iget v1, v0, Landroidx/media3/exoplayer/video/z;->k:F

    .line 18
    .line 19
    cmpl-float v1, p1, v1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iput p1, v0, Landroidx/media3/exoplayer/video/z;->k:F

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/media3/exoplayer/video/z;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPlaybackSpeed(F)V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/video/d;->e:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/z;->e(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final o(Lr1/p;JILjava/util/List;)V
    .locals 9

    .line 1
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p5

    .line 5
    invoke-static {p5}, La9/o;->t(Z)V

    .line 6
    .line 7
    .line 8
    iget p5, p1, Lr1/p;->v:I

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->f:Lr1/p;

    .line 11
    .line 12
    iget v1, v0, Lr1/p;->v:I

    .line 13
    .line 14
    const-wide/16 v2, 0x1

    .line 15
    .line 16
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iget-object v6, p0, Landroidx/media3/exoplayer/video/d;->c:Landroidx/media3/exoplayer/video/d0;

    .line 22
    .line 23
    iget v7, p1, Lr1/p;->w:I

    .line 24
    .line 25
    if-ne p5, v1, :cond_0

    .line 26
    .line 27
    iget v0, v0, Lr1/p;->w:I

    .line 28
    .line 29
    if-eq v7, v0, :cond_2

    .line 30
    .line 31
    :cond_0
    iget-wide v0, v6, Landroidx/media3/exoplayer/video/d0;->h:J

    .line 32
    .line 33
    cmp-long v8, v0, v4

    .line 34
    .line 35
    if-nez v8, :cond_1

    .line 36
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    add-long/2addr v0, v2

    .line 41
    :goto_0
    new-instance v8, Lr1/b1;

    .line 42
    .line 43
    invoke-direct {v8, p5, v7}, Lr1/b1;-><init>(II)V

    .line 44
    .line 45
    .line 46
    iget-object p5, v6, Landroidx/media3/exoplayer/video/d0;->d:Lu1/c0;

    .line 47
    .line 48
    invoke-virtual {p5, v8, v0, v1}, Lu1/c0;->a(Ljava/lang/Object;J)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object p5, p0, Landroidx/media3/exoplayer/video/d;->f:Lr1/p;

    .line 52
    .line 53
    iget p5, p5, Lr1/p;->z:F

    .line 54
    .line 55
    iget v0, p1, Lr1/p;->z:F

    .line 56
    .line 57
    cmpl-float p5, v0, p5

    .line 58
    .line 59
    if-eqz p5, :cond_3

    .line 60
    .line 61
    iget-object p5, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 62
    .line 63
    iget-object p5, p5, Landroidx/media3/exoplayer/video/z;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 64
    .line 65
    invoke-virtual {p5, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onFormatChanged(F)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->f:Lr1/p;

    .line 69
    .line 70
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/d;->g:J

    .line 71
    .line 72
    cmp-long p1, p2, v0

    .line 73
    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    iget-object p1, v6, Landroidx/media3/exoplayer/video/d0;->f:Lf3/d;

    .line 77
    .line 78
    iget p1, p1, Lf3/d;->c:I

    .line 79
    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    iget-object p1, v6, Landroidx/media3/exoplayer/video/d0;->b:Landroidx/media3/exoplayer/video/z;

    .line 83
    .line 84
    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/video/z;->d(I)V

    .line 85
    .line 86
    .line 87
    iput-wide p2, v6, Landroidx/media3/exoplayer/video/d0;->l:J

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-wide p4, v6, Landroidx/media3/exoplayer/video/d0;->h:J

    .line 91
    .line 92
    cmp-long p1, p4, v4

    .line 93
    .line 94
    if-nez p1, :cond_5

    .line 95
    .line 96
    const-wide/high16 p4, -0x4000000000000000L    # -2.0

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    add-long/2addr p4, v2

    .line 100
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v0, v6, Landroidx/media3/exoplayer/video/d0;->e:Lu1/c0;

    .line 105
    .line 106
    invoke-virtual {v0, p1, p4, p5}, Lu1/c0;->a(Ljava/lang/Object;J)V

    .line 107
    .line 108
    .line 109
    :goto_2
    iput-wide p2, p0, Landroidx/media3/exoplayer/video/d;->g:J

    .line 110
    .line 111
    :cond_6
    return-void
.end method

.method public final p(Z)V
    .locals 6

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 11
    .line 12
    iget-object v4, p1, Landroidx/media3/exoplayer/video/z;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 13
    .line 14
    invoke-virtual {v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPositionReset()V

    .line 15
    .line 16
    .line 17
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/z;->h:J

    .line 18
    .line 19
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/z;->f:J

    .line 20
    .line 21
    iget v4, p1, Landroidx/media3/exoplayer/video/z;->e:I

    .line 22
    .line 23
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iput v4, p1, Landroidx/media3/exoplayer/video/z;->e:I

    .line 28
    .line 29
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/z;->i:J

    .line 30
    .line 31
    iput-boolean v3, p1, Landroidx/media3/exoplayer/video/z;->n:Z

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/d;->b:Landroidx/media3/exoplayer/video/a0;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/a0;->b()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Landroidx/media3/exoplayer/video/d;->c:Landroidx/media3/exoplayer/video/d0;

    .line 39
    .line 40
    iget-object v4, p1, Landroidx/media3/exoplayer/video/d0;->f:Lf3/d;

    .line 41
    .line 42
    iput v3, v4, Lf3/d;->a:I

    .line 43
    .line 44
    const/4 v5, -0x1

    .line 45
    iput v5, v4, Lf3/d;->b:I

    .line 46
    .line 47
    iput v3, v4, Lf3/d;->c:I

    .line 48
    .line 49
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/d0;->h:J

    .line 50
    .line 51
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/d0;->i:J

    .line 52
    .line 53
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/d0;->j:J

    .line 54
    .line 55
    iget-object v0, p1, Landroidx/media3/exoplayer/video/d0;->e:Lu1/c0;

    .line 56
    .line 57
    invoke-virtual {v0}, Lu1/c0;->h()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-lez v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lu1/c0;->h()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lez v1, :cond_1

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-static {v1}, La9/o;->k(Z)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v0}, Lu1/c0;->h()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-le v1, v2, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Lu1/c0;->e()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v0}, Lu1/c0;->e()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast v0, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/d0;->l:J

    .line 99
    .line 100
    :cond_3
    iget-object p1, p1, Landroidx/media3/exoplayer/video/d0;->d:Lu1/c0;

    .line 101
    .line 102
    invoke-virtual {p1}, Lu1/c0;->h()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-lez v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {p1}, Lu1/c0;->h()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-lez v0, :cond_4

    .line 113
    .line 114
    const/4 v3, 0x1

    .line 115
    :cond_4
    invoke-static {v3}, La9/o;->k(Z)V

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-virtual {p1}, Lu1/c0;->h()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-le v0, v2, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1}, Lu1/c0;->e()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    invoke-virtual {p1}, Lu1/c0;->e()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    check-cast v0, Lr1/b1;

    .line 136
    .line 137
    const-wide/16 v1, 0x0

    .line 138
    .line 139
    invoke-virtual {p1, v0, v1, v2}, Lu1/c0;->a(Ljava/lang/Object;J)V

    .line 140
    .line 141
    .line 142
    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/video/d;->d:Ljava/util/ArrayDeque;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final r(JJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->c:Landroidx/media3/exoplayer/video/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/d0;->a(JJ)V
    :try_end_0
    .catch Ly1/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Landroidx/media3/exoplayer/video/i0;

    .line 9
    .line 10
    iget-object p3, p0, Landroidx/media3/exoplayer/video/d;->f:Lr1/p;

    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/video/i0;-><init>(Ljava/lang/Exception;Lr1/p;)V

    .line 13
    .line 14
    .line 15
    throw p2
.end method

.method public final s(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/z;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/z;->b(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final u()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final w(Landroid/view/Surface;Lu1/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->e:Landroid/view/Surface;

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/z;->e(Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroidx/media3/exoplayer/video/z;->e:I

    .line 9
    .line 10
    :cond_0
    return-void
.end method
