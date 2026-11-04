.class public final Landroidx/media3/exoplayer/video/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final synthetic b:Landroidx/media3/exoplayer/video/m;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/m;Ld2/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/l;->b:Landroidx/media3/exoplayer/video/m;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lu1/f0;->k(Landroidx/media3/exoplayer/video/l;)Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/media3/exoplayer/video/l;->a:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-interface {p2, p0, p1}, Ld2/n;->j(Landroidx/media3/exoplayer/video/l;Landroid/os/Handler;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/l;->b:Landroidx/media3/exoplayer/video/m;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/video/m;->m2:Landroidx/media3/exoplayer/video/l;

    .line 4
    .line 5
    if-ne p0, v1, :cond_6

    .line 6
    .line 7
    iget-object v1, v0, Ld2/u;->R:Ld2/n;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    cmp-long v4, p1, v1

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    iput-boolean v3, v0, Ld2/u;->m1:Z

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ld2/u;->B0(J)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Landroidx/media3/exoplayer/video/m;->h2:Lr1/b1;

    .line 29
    .line 30
    sget-object v2, Lr1/b1;->d:Lr1/b1;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lr1/b1;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2
    :try_end_0
    .catch Ly1/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    iget-object v4, v0, Landroidx/media3/exoplayer/video/m;->B1:La2/j0;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    :try_start_1
    iget-object v2, v0, Landroidx/media3/exoplayer/video/m;->i2:Lr1/b1;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lr1/b1;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    iput-object v1, v0, Landroidx/media3/exoplayer/video/m;->i2:Lr1/b1;

    .line 49
    .line 50
    invoke-virtual {v4, v1}, La2/j0;->c(Lr1/b1;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v1, v0, Ld2/u;->o1:Ly1/c;

    .line 54
    .line 55
    iget v2, v1, Ly1/c;->e:I

    .line 56
    .line 57
    add-int/2addr v2, v3

    .line 58
    iput v2, v1, Ly1/c;->e:I

    .line 59
    .line 60
    iget-object v1, v0, Landroidx/media3/exoplayer/video/m;->E1:Landroidx/media3/exoplayer/video/z;

    .line 61
    .line 62
    iget v2, v1, Landroidx/media3/exoplayer/video/z;->e:I

    .line 63
    .line 64
    const/4 v5, 0x3

    .line 65
    if-eq v2, v5, :cond_3

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v2, 0x0

    .line 70
    :goto_0
    iput v5, v1, Landroidx/media3/exoplayer/video/z;->e:I

    .line 71
    .line 72
    iget-object v5, v1, Landroidx/media3/exoplayer/video/z;->l:Lu1/z;

    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    invoke-static {v5, v6}, Lu1/f0;->G(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    iput-wide v5, v1, Landroidx/media3/exoplayer/video/z;->g:J

    .line 86
    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    iget-object v1, v0, Landroidx/media3/exoplayer/video/m;->R1:Landroid/view/Surface;

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    iget-object v2, v4, La2/j0;->b:Landroid/os/Handler;

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    new-instance v7, Landroidx/media3/exoplayer/video/f0;

    .line 102
    .line 103
    invoke-direct {v7, v4, v1, v5, v6}, Landroidx/media3/exoplayer/video/f0;-><init>(La2/j0;Ljava/lang/Object;J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    :cond_4
    iput-boolean v3, v0, Landroidx/media3/exoplayer/video/m;->U1:Z

    .line 110
    .line 111
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/m;->g0(J)V
    :try_end_1
    .catch Ly1/k; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_0
    move-exception p1

    .line 116
    iput-object p1, v0, Ld2/u;->n1:Ly1/k;

    .line 117
    .line 118
    :cond_6
    :goto_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 10
    .line 11
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 12
    .line 13
    int-to-long v0, v0

    .line 14
    const-wide v2, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr v0, v2

    .line 20
    const/16 v4, 0x20

    .line 21
    .line 22
    shl-long/2addr v0, v4

    .line 23
    int-to-long v4, p1

    .line 24
    and-long/2addr v2, v4

    .line 25
    or-long/2addr v0, v2

    .line 26
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/l;->a(J)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1
.end method
