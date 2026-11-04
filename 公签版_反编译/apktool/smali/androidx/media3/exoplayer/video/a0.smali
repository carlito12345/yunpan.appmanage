.class public final Landroidx/media3/exoplayer/video/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:D

.field public d:Landroid/util/Range;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/Range;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    .line 16
    float-to-double v4, v4

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 18
    .line 19
    .line 20
    div-double/2addr v2, v4

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/media3/exoplayer/video/a0;->d:Landroid/util/Range;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Double;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/a0;->c:D

    .line 41
    .line 42
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/a0;->a:J

    .line 48
    .line 49
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/a0;->b:J

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, p1, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v4, 0x0

    .line 15
    :goto_0
    invoke-static {v4}, La9/o;->k(Z)V

    .line 16
    .line 17
    .line 18
    cmp-long v4, p3, v2

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_1
    invoke-static {v0}, La9/o;->k(Z)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/a0;->a:J

    .line 27
    .line 28
    cmp-long v4, v0, v2

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/a0;->b:J

    .line 33
    .line 34
    cmp-long v6, v4, v2

    .line 35
    .line 36
    if-eqz v6, :cond_2

    .line 37
    .line 38
    cmp-long v2, p1, v0

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    sub-long v2, p3, v4

    .line 43
    .line 44
    long-to-double v2, v2

    .line 45
    sub-long v0, p1, v0

    .line 46
    .line 47
    long-to-double v0, v0

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 52
    .line 53
    .line 54
    div-double/2addr v2, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/a0;->d:Landroid/util/Range;

    .line 57
    .line 58
    invoke-static {v0}, Ld2/a;->k(Landroid/util/Range;)Ljava/lang/Comparable;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Double;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/a0;->d:Landroid/util/Range;

    .line 69
    .line 70
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Landroidx/fragment/app/o1;->l(Landroid/util/Range;Ljava/lang/Double;)Ljava/lang/Comparable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Double;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/a0;->c:D

    .line 85
    .line 86
    const-wide v4, 0x3fe99999a0000000L    # 0.800000011920929

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    mul-double v2, v2, v4

    .line 92
    .line 93
    const-wide v4, 0x3fc99999a0000000L    # 0.20000000298023224

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    mul-double v0, v0, v4

    .line 99
    .line 100
    add-double/2addr v0, v2

    .line 101
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/a0;->c:D

    .line 102
    .line 103
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/a0;->a:J

    .line 104
    .line 105
    iput-wide p3, p0, Landroidx/media3/exoplayer/video/a0;->b:J

    .line 106
    .line 107
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/a0;->d:Landroid/util/Range;

    .line 2
    .line 3
    invoke-static {v0}, Ld2/a;->k(Landroid/util/Range;)Ljava/lang/Comparable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Double;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/a0;->c:D

    .line 14
    .line 15
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/a0;->a:J

    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/a0;->b:J

    .line 23
    .line 24
    return-void
.end method

.method public final c(F)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, La9/o;->k(Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/util/Range;

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 21
    .line 22
    float-to-double v4, p1

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 24
    .line 25
    .line 26
    div-double/2addr v2, v4

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/media3/exoplayer/video/a0;->d:Landroid/util/Range;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/a0;->b()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
