.class public final Landroidx/media3/exoplayer/video/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/j0;


# instance fields
.field public a:Lu7/g0;

.field public b:Lr1/p;

.field public c:J

.field public d:J

.field public e:I

.field public final synthetic f:Landroidx/media3/exoplayer/video/v;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/v;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lu1/f0;->E(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    sget-object p1, Lu7/g0;->b:Lu7/e0;

    .line 10
    .line 11
    sget-object p1, Lu7/y0;->e:Lu7/y0;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q;->a:Lu7/g0;

    .line 14
    .line 15
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/q;->d:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/video/v;->n:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/video/v;->k:Lu1/b0;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, v1, Lu1/b0;->a:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object v3, v0, Landroidx/media3/exoplayer/video/v;->l:Landroid/util/Pair;

    .line 20
    .line 21
    iput v2, v0, Landroidx/media3/exoplayer/video/v;->n:I

    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Landroid/view/Surface;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, La9/o;->t(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    throw v0
.end method

.method public final d(La1/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(JLandroidx/media3/exoplayer/video/h;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, La9/o;->t(Z)V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/q;->c:J

    .line 6
    .line 7
    add-long/2addr p1, v1

    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/media3/exoplayer/video/v;->i:Landroidx/media3/exoplayer/video/a0;

    .line 11
    .line 12
    iget-wide v3, v2, Landroidx/media3/exoplayer/video/a0;->a:J

    .line 13
    .line 14
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v7, v3, v5

    .line 20
    .line 21
    if-nez v7, :cond_0

    .line 22
    .line 23
    move-wide p1, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-wide v7, v2, Landroidx/media3/exoplayer/video/a0;->b:J

    .line 26
    .line 27
    long-to-double v7, v7

    .line 28
    sub-long/2addr p1, v3

    .line 29
    long-to-double p1, p1

    .line 30
    iget-wide v2, v2, Landroidx/media3/exoplayer/video/a0;->c:D

    .line 31
    .line 32
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 33
    .line 34
    .line 35
    mul-double p1, p1, v2

    .line 36
    .line 37
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 38
    .line 39
    .line 40
    add-double/2addr p1, v7

    .line 41
    double-to-long p1, p1

    .line 42
    :goto_0
    cmp-long v2, p1, v5

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-wide v2, v1, Landroidx/media3/exoplayer/video/v;->h:J

    .line 47
    .line 48
    cmp-long v4, v2, v5

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    cmp-long v4, p1, v2

    .line 53
    .line 54
    if-gez v4, :cond_1

    .line 55
    .line 56
    iget p1, p0, Landroidx/media3/exoplayer/video/q;->e:I

    .line 57
    .line 58
    const/4 p2, 0x2

    .line 59
    if-ge p1, p2, :cond_1

    .line 60
    .line 61
    const/4 p2, 0x1

    .line 62
    add-int/2addr p1, p2

    .line 63
    iput p1, p0, Landroidx/media3/exoplayer/video/q;->e:I

    .line 64
    .line 65
    iget-object p1, p3, Landroidx/media3/exoplayer/video/h;->c:Landroidx/media3/exoplayer/video/m;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v1, "dropVideoBuffer"

    .line 71
    .line 72
    invoke-static {v1}, Ltb/a;->k(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p3, Landroidx/media3/exoplayer/video/h;->a:Ld2/n;

    .line 76
    .line 77
    iget p3, p3, Landroidx/media3/exoplayer/video/h;->b:I

    .line 78
    .line 79
    invoke-interface {v1, p3}, Ld2/n;->h(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Ltb/a;->h()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0, p2}, Landroidx/media3/exoplayer/video/m;->Q0(II)V

    .line 86
    .line 87
    .line 88
    return p2

    .line 89
    :cond_1
    iget p1, v1, Landroidx/media3/exoplayer/video/v;->p:I

    .line 90
    .line 91
    const/4 p2, -0x1

    .line 92
    if-eq p1, p2, :cond_3

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const/4 p1, 0x0

    .line 98
    throw p1

    .line 99
    :cond_3
    :goto_1
    return v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/v;->d:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/d;->f()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/v;->d:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/d;->g()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/q;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public final i(Landroidx/media3/exoplayer/video/x;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 4
    .line 5
    iput-object p1, v0, Landroidx/media3/exoplayer/video/d;->j:Landroidx/media3/exoplayer/video/x;

    .line 6
    .line 7
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/q;->d:J

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 4
    .line 5
    iget-wide v3, v2, Landroidx/media3/exoplayer/video/v;->o:J

    .line 6
    .line 7
    cmp-long v5, v3, v0

    .line 8
    .line 9
    if-ltz v5, :cond_0

    .line 10
    .line 11
    iget-object v0, v2, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/d;->j()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/d;->k(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final l(Lr1/p;)Z
    .locals 10

    .line 1
    const-string v0, "Color transfer "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 4
    .line 5
    iget v2, v1, Landroidx/media3/exoplayer/video/v;->n:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-static {v2}, La9/o;->t(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p1, Lr1/p;->E:Lr1/g;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Lr1/g;->d()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    sget-object v2, Lr1/g;->h:Lr1/g;

    .line 29
    .line 30
    :goto_1
    const-string v5, "EGL_EXT_gl_colorspace_bt2020_pq"

    .line 31
    .line 32
    const/16 v6, 0x21

    .line 33
    .line 34
    const/4 v7, 0x7

    .line 35
    iget v2, v2, Lr1/g;->c:I

    .line 36
    .line 37
    if-ne v2, v7, :cond_4

    .line 38
    .line 39
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v9, 0x22

    .line 42
    .line 43
    if-ge v8, v9, :cond_4

    .line 44
    .line 45
    if-lt v8, v6, :cond_2

    .line 46
    .line 47
    invoke-static {v5}, Lu1/a;->l(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_2

    .line 52
    .line 53
    const/4 v8, 0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v8, 0x0

    .line 56
    :goto_2
    if-nez v8, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    new-instance p1, Lr1/g;

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_7

    .line 64
    :cond_4
    :goto_3
    const/4 v8, 0x6

    .line 65
    if-ne v2, v8, :cond_6

    .line 66
    .line 67
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    if-lt v7, v6, :cond_5

    .line 70
    .line 71
    invoke-static {v5}, Lu1/a;->l(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_5

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    :cond_5
    move v4, v3

    .line 79
    goto :goto_4

    .line 80
    :cond_6
    if-ne v2, v7, :cond_7

    .line 81
    .line 82
    const-string v3, "EGL_EXT_gl_colorspace_bt2020_hlg"

    .line 83
    .line 84
    invoke-static {v3}, Lu1/a;->l(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    :cond_7
    :goto_4
    if-nez v4, :cond_9

    .line 89
    .line 90
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v4, 0x1d

    .line 93
    .line 94
    if-ge v3, v4, :cond_8

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_8
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, " is not supported. Falling back to OpenGl tone mapping."

    .line 108
    .line 109
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object p1, Lr1/g;->h:Lr1/g;

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_9
    :goto_5
    const/4 v0, 0x2

    .line 123
    if-eq v2, v0, :cond_a

    .line 124
    .line 125
    const/16 v0, 0xa

    .line 126
    .line 127
    if-ne v2, v0, :cond_b

    .line 128
    .line 129
    :cond_a
    sget-object p1, Lr1/g;->h:Lr1/g;
    :try_end_0
    .catch Lu1/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    :cond_b
    :goto_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-object v0, v1, Landroidx/media3/exoplayer/video/v;->f:Lu1/z;

    .line 139
    .line 140
    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, p1, v2}, Lu1/z;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, v1, Landroidx/media3/exoplayer/video/v;->k:Lu1/b0;

    .line 146
    .line 147
    iget-object p1, v1, Landroidx/media3/exoplayer/video/v;->b:Landroidx/media3/exoplayer/video/t;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/t;->a()V

    .line 150
    .line 151
    .line 152
    throw v2

    .line 153
    :goto_7
    new-instance v1, Landroidx/media3/exoplayer/video/i0;

    .line 154
    .line 155
    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/video/i0;-><init>(Ljava/lang/Exception;Lr1/p;)V

    .line 156
    .line 157
    .line 158
    throw v1
.end method

.method public final m(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/video/v;->i:Landroidx/media3/exoplayer/video/a0;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/video/a0;->c(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/d;->m(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    sget-object v1, Lu1/r;->c:Lu1/r;

    .line 4
    .line 5
    iget v1, v1, Lu1/r;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Landroidx/media3/exoplayer/video/v;->l:Landroid/util/Pair;

    .line 9
    .line 10
    return-void
.end method

.method public final o(Lr1/p;JILjava/util/List;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p2}, La9/o;->t(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p5}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iput-object p2, p0, Landroidx/media3/exoplayer/video/q;->a:Lu7/g0;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q;->b:Lr1/p;

    .line 12
    .line 13
    new-instance p2, Lr1/o;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Lr1/o;-><init>(Lr1/p;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Lr1/p;->E:Lr1/g;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lr1/g;->d()Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object p1, Lr1/g;->h:Lr1/g;

    .line 30
    .line 31
    :goto_0
    iput-object p1, p2, Lr1/o;->D:Lr1/g;

    .line 32
    .line 33
    invoke-virtual {p2}, Lr1/o;->a()Lr1/p;

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    throw p1
.end method

.method public final p(Z)V
    .locals 5

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/q;->d:J

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 9
    .line 10
    iget v3, v2, Landroidx/media3/exoplayer/video/v;->n:I

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne v3, v4, :cond_2

    .line 14
    .line 15
    iget v3, v2, Landroidx/media3/exoplayer/video/v;->m:I

    .line 16
    .line 17
    add-int/2addr v3, v4

    .line 18
    iput v3, v2, Landroidx/media3/exoplayer/video/v;->m:I

    .line 19
    .line 20
    iget-object v3, v2, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/video/d;->p(Z)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v2, Landroidx/media3/exoplayer/video/v;->j:Lu1/c0;

    .line 26
    .line 27
    invoke-virtual {p1}, Lu1/c0;->h()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-le p1, v4, :cond_0

    .line 32
    .line 33
    iget-object p1, v2, Landroidx/media3/exoplayer/video/v;->j:Lu1/c0;

    .line 34
    .line 35
    invoke-virtual {p1}, Lu1/c0;->e()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, v2, Landroidx/media3/exoplayer/video/v;->j:Lu1/c0;

    .line 40
    .line 41
    invoke-virtual {p1}, Lu1/c0;->h()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eq p1, v4, :cond_1

    .line 46
    .line 47
    iput-wide v0, v2, Landroidx/media3/exoplayer/video/v;->o:J

    .line 48
    .line 49
    iget-object p1, v2, Landroidx/media3/exoplayer/video/v;->k:Lu1/b0;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v0, Landroidx/media3/exoplayer/video/c0;

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/video/c0;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object p1, v2, Landroidx/media3/exoplayer/video/v;->j:Lu1/c0;

    .line 65
    .line 66
    invoke-virtual {p1}, Lu1/c0;->e()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroidx/media3/exoplayer/video/u;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    throw p1

    .line 77
    :cond_2
    :goto_1
    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->a:Lu7/g0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu7/g0;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q;->a:Lu7/g0;

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->b:Lr1/p;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v0, Lr1/o;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lr1/o;-><init>(Lr1/p;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lr1/p;->E:Lr1/g;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lr1/g;->d()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget-object p1, Lr1/g;->h:Lr1/g;

    .line 38
    .line 39
    :goto_0
    iput-object p1, v0, Lr1/o;->D:Lr1/g;

    .line 40
    .line 41
    invoke-virtual {v0}, Lr1/o;->a()Lr1/p;

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    throw p1
.end method

.method public final r(JJ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/q;->c:J

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/d;->r(JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final s(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/v;->d:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/d;->s(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final t(Z)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p1, p1, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/media3/exoplayer/video/d;->a:Landroidx/media3/exoplayer/video/z;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/z;->b(Z)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final u()V
    .locals 0

    .line 1
    return-void
.end method

.method public final v()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final w(Landroid/view/Surface;Lu1/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/video/v;->l:Landroid/util/Pair;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/view/Surface;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/media3/exoplayer/video/v;->l:Landroid/util/Pair;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lu1/r;

    .line 22
    .line 23
    invoke-virtual {v1, p2}, Lu1/r;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, v0, Landroidx/media3/exoplayer/video/v;->l:Landroid/util/Pair;

    .line 35
    .line 36
    iget p1, p2, Lu1/r;->a:I

    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/exoplayer/video/v;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/video/v;->j:Lu1/c0;

    .line 4
    .line 5
    invoke-virtual {v1}, Lu1/c0;->h()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/d;->x()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v1, Lu1/c0;

    .line 18
    .line 19
    invoke-direct {v1}, Lu1/c0;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Landroidx/media3/exoplayer/video/v;->j:Lu1/c0;

    .line 23
    .line 24
    invoke-virtual {v2}, Lu1/c0;->h()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-gtz v2, :cond_1

    .line 29
    .line 30
    iput-object v1, v0, Landroidx/media3/exoplayer/video/v;->j:Lu1/c0;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, v0, Landroidx/media3/exoplayer/video/v;->j:Lu1/c0;

    .line 34
    .line 35
    invoke-virtual {v0}, Lu1/c0;->e()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroidx/media3/exoplayer/video/u;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    throw v0
.end method
