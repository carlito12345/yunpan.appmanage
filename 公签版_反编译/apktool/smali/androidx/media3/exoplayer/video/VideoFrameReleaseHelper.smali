.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerBase;
    }
.end annotation


# static fields
.field private static final MAX_ALLOWED_ADJUSTMENT_NS:J = 0x1312d00L

.field private static final MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE:I = 0x1e

.field private static final MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS:J = 0x12a05f200L

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE:F = 0.1f

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "VideoFrameReleaseHelper"

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L

.field public static final VSYNC_SAMPLE_UPDATE_PERIOD_MS:J = 0x1f4L


# instance fields
.field private changeFrameRateStrategy:I

.field private final context:Landroid/content/Context;

.field private formatFrameRate:F

.field private frameIndex:J

.field private final frameRateEstimator:Landroidx/media3/exoplayer/video/f;

.field private lastAdjustedFrameIndex:J

.field private lastAdjustedPresentationTimeUs:J

.field private lastAdjustedReleaseTimeNs:J

.field private lastVsyncHysteresisOffsetNs:J

.field private pendingLastAdjustedFrameIndex:J

.field private pendingLastAdjustedReleaseTimeNs:J

.field private pendingLastPresentationTimeUs:J

.field private pendingVsyncHysteresisOffsetNs:J

.field private playbackSpeed:F

.field private started:Z

.field private surface:Landroid/view/Surface;

.field private surfaceMediaFrameRate:F

.field private surfacePlaybackFrameRate:F

.field private vsyncSampleBuilt:Z

.field private vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/exoplayer/video/f;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/f;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/f;

    .line 12
    .line 13
    const/high16 p1, -0x40800000    # -1.0f

    .line 14
    .line 15
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 16
    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 23
    .line 24
    return-void
.end method

.method private static adjustmentAllowed(JJ)Z
    .locals 1

    .line 1
    sub-long/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    const-wide/32 p2, 0x1312d00

    .line 7
    .line 8
    .line 9
    cmp-long v0, p0, p2

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private clearSurfaceFrameRate()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    cmpl-float v1, v1, v2

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 34
    .line 35
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private findClosestVsyncAndUpdateHysteresis(JJJ)J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sub-long v1, p1, p3

    .line 4
    .line 5
    div-long v1, v1, p5

    .line 6
    .line 7
    mul-long v1, v1, p5

    .line 8
    .line 9
    add-long v1, v1, p3

    .line 10
    .line 11
    cmp-long v3, p1, v1

    .line 12
    .line 13
    if-gtz v3, :cond_0

    .line 14
    .line 15
    sub-long v3, v1, p5

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    add-long v3, v1, p5

    .line 19
    .line 20
    move-wide/from16 v16, v1

    .line 21
    .line 22
    move-wide v1, v3

    .line 23
    move-wide/from16 v3, v16

    .line 24
    .line 25
    :goto_0
    sub-long v5, v1, p1

    .line 26
    .line 27
    sub-long v7, p1, v3

    .line 28
    .line 29
    sub-long v9, v5, v7

    .line 30
    .line 31
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v9

    .line 35
    const-wide/16 v11, 0x2

    .line 36
    .line 37
    div-long v11, p5, v11

    .line 38
    .line 39
    cmp-long v13, v9, v11

    .line 40
    .line 41
    if-gez v13, :cond_4

    .line 42
    .line 43
    const-wide/16 v11, 0x4

    .line 44
    .line 45
    div-long v11, p5, v11

    .line 46
    .line 47
    const-wide/16 v13, 0x0

    .line 48
    .line 49
    cmp-long v15, v9, v11

    .line 50
    .line 51
    if-gez v15, :cond_3

    .line 52
    .line 53
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastVsyncHysteresisOffsetNs:J

    .line 54
    .line 55
    cmp-long v15, v9, v13

    .line 56
    .line 57
    if-eqz v15, :cond_1

    .line 58
    .line 59
    iput-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    cmp-long v9, v5, v7

    .line 63
    .line 64
    if-gez v9, :cond_2

    .line 65
    .line 66
    neg-long v11, v11

    .line 67
    :cond_2
    iput-wide v11, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iput-wide v13, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastVsyncHysteresisOffsetNs:J

    .line 74
    .line 75
    iput-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    .line 76
    .line 77
    :goto_1
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    .line 78
    .line 79
    add-long/2addr v5, v9

    .line 80
    cmp-long v9, v5, v7

    .line 81
    .line 82
    if-gez v9, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    move-wide v1, v3

    .line 86
    :goto_2
    return-wide v1
.end method

.method private resetAdjustment()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 8
    .line 9
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 10
    .line 11
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastVsyncHysteresisOffsetNs:J

    .line 12
    .line 13
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    .line 14
    .line 15
    return-void
.end method

.method private updateSurfaceMediaFrameRate()V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_9

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/f;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/e;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/high16 v2, -0x40800000    # -1.0f

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/f;

    .line 26
    .line 27
    iget-object v3, v0, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/e;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 36
    .line 37
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/e;->e:J

    .line 38
    .line 39
    const-wide/16 v5, 0x0

    .line 40
    .line 41
    cmp-long v7, v3, v5

    .line 42
    .line 43
    if-nez v7, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-wide v5, v0, Landroidx/media3/exoplayer/video/e;->f:J

    .line 47
    .line 48
    div-long/2addr v5, v3

    .line 49
    :goto_0
    long-to-double v3, v5

    .line 50
    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 56
    .line 57
    .line 58
    div-double/2addr v5, v3

    .line 59
    double-to-float v0, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 65
    .line 66
    :goto_1
    iget v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    .line 67
    .line 68
    cmpl-float v4, v0, v3

    .line 69
    .line 70
    if-nez v4, :cond_4

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    cmpl-float v4, v0, v2

    .line 74
    .line 75
    if-eqz v4, :cond_7

    .line 76
    .line 77
    cmpl-float v3, v3, v2

    .line 78
    .line 79
    if-eqz v3, :cond_7

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/f;

    .line 82
    .line 83
    iget-object v1, v1, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/e;->a()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/f;

    .line 92
    .line 93
    iget-object v2, v1, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/e;->a()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    iget-object v1, v1, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 102
    .line 103
    iget-wide v1, v1, Landroidx/media3/exoplayer/video/e;->f:J

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :goto_2
    const-wide v3, 0x12a05f200L

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    cmp-long v5, v1, v3

    .line 117
    .line 118
    if-ltz v5, :cond_6

    .line 119
    .line 120
    const v1, 0x3dcccccd    # 0.1f

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 125
    .line 126
    :goto_3
    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    .line 127
    .line 128
    sub-float v2, v0, v2

    .line 129
    .line 130
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    cmpl-float v1, v2, v1

    .line 135
    .line 136
    if-ltz v1, :cond_9

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_7
    cmpl-float v2, v0, v2

    .line 140
    .line 141
    if-eqz v2, :cond_8

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/f;

    .line 145
    .line 146
    iget v2, v2, Landroidx/media3/exoplayer/video/f;->e:I

    .line 147
    .line 148
    if-lt v2, v1, :cond_9

    .line 149
    .line 150
    :goto_4
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    .line 151
    .line 152
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 154
    .line 155
    .line 156
    :cond_9
    :goto_5
    return-void
.end method

.method private updateSurfacePlaybackFrameRate(Z)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    if-eq v1, v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    .line 29
    .line 30
    const/high16 v1, -0x40800000    # -1.0f

    .line 31
    .line 32
    cmpl-float v1, v0, v1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 37
    .line 38
    mul-float v0, v0, v1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-nez p1, :cond_2

    .line 43
    .line 44
    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 45
    .line 46
    cmpl-float p1, p1, v0

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 52
    .line 53
    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 54
    .line 55
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move-wide v0, p3

    .line 3
    iget-wide v2, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 4
    .line 5
    const-wide/16 v4, -0x1

    .line 6
    .line 7
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v6, v2, v4

    .line 13
    .line 14
    if-eqz v6, :cond_4

    .line 15
    .line 16
    iget-object v2, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/f;

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/e;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v2, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/f;

    .line 27
    .line 28
    iget-object v3, v2, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/e;->a()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget-object v2, v2, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 37
    .line 38
    iget-wide v3, v2, Landroidx/media3/exoplayer/video/e;->e:J

    .line 39
    .line 40
    const-wide/16 v5, 0x0

    .line 41
    .line 42
    cmp-long v10, v3, v5

    .line 43
    .line 44
    if-nez v10, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-wide v5, v2, Landroidx/media3/exoplayer/video/e;->f:J

    .line 48
    .line 49
    div-long/2addr v5, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-wide v5, v8

    .line 52
    :goto_0
    iget-wide v2, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 53
    .line 54
    iget-wide v10, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 55
    .line 56
    sub-long/2addr v2, v10

    .line 57
    mul-long v2, v2, v5

    .line 58
    .line 59
    long-to-float v2, v2

    .line 60
    iget v3, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 61
    .line 62
    :goto_1
    div-float/2addr v2, v3

    .line 63
    float-to-long v2, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iget-wide v2, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedPresentationTimeUs:J

    .line 66
    .line 67
    sub-long v2, v0, v2

    .line 68
    .line 69
    const-wide/16 v4, 0x3e8

    .line 70
    .line 71
    mul-long v2, v2, v4

    .line 72
    .line 73
    long-to-float v2, v2

    .line 74
    iget v3, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_2
    iget-wide v4, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    .line 78
    .line 79
    add-long/2addr v4, v2

    .line 80
    move-wide v2, p1

    .line 81
    invoke-static {p1, p2, v4, v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustmentAllowed(JJ)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    move-wide v2, v4

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    move-wide v2, p1

    .line 94
    :goto_3
    iget-wide v4, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 95
    .line 96
    iput-wide v4, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 97
    .line 98
    iput-wide v2, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    .line 99
    .line 100
    iput-wide v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastPresentationTimeUs:J

    .line 101
    .line 102
    iget-object v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 103
    .line 104
    if-nez v0, :cond_5

    .line 105
    .line 106
    return-wide v2

    .line 107
    :cond_5
    iget-wide v4, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 108
    .line 109
    iget-object v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 110
    .line 111
    iget-wide v10, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->vsyncDurationNs:J

    .line 112
    .line 113
    cmp-long v0, v4, v8

    .line 114
    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    cmp-long v0, v10, v8

    .line 118
    .line 119
    if-nez v0, :cond_6

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    move-object v0, p0

    .line 123
    move-wide v1, v2

    .line 124
    move-wide v3, v4

    .line 125
    move-wide v5, v10

    .line 126
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->findClosestVsyncAndUpdateHysteresis(JJJ)J

    .line 127
    .line 128
    .line 129
    move-result-wide v0

    .line 130
    const-wide/16 v2, 0x50

    .line 131
    .line 132
    mul-long v10, v10, v2

    .line 133
    .line 134
    const-wide/16 v2, 0x64

    .line 135
    .line 136
    div-long/2addr v10, v2

    .line 137
    sub-long/2addr v0, v10

    .line 138
    return-wide v0

    .line 139
    :cond_7
    :goto_4
    return-wide v2
.end method

.method public onFormatChanged(F)V
    .locals 3

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/f;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/e;->c()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Landroidx/media3/exoplayer/video/f;->b:Landroidx/media3/exoplayer/video/e;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/e;->c()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p1, Landroidx/media3/exoplayer/video/f;->c:Z

    .line 17
    .line 18
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide v1, p1, Landroidx/media3/exoplayer/video/f;->d:J

    .line 24
    .line 25
    iput v0, p1, Landroidx/media3/exoplayer/video/f;->e:I

    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onNextFrame(J)V
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 10
    .line 11
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    .line 12
    .line 13
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastPresentationTimeUs:J

    .line 16
    .line 17
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedPresentationTimeUs:J

    .line 18
    .line 19
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    .line 20
    .line 21
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastVsyncHysteresisOffsetNs:J

    .line 22
    .line 23
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 24
    .line 25
    const-wide/16 v2, 0x1

    .line 26
    .line 27
    add-long/2addr v0, v2

    .line 28
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/f;

    .line 31
    .line 32
    const-wide/16 v4, 0x3e8

    .line 33
    .line 34
    mul-long p1, p1, v4

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 37
    .line 38
    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/video/e;->b(J)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/e;->a()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v4, 0x1

    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iput-boolean v5, v0, Landroidx/media3/exoplayer/video/f;->c:Z

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-wide v6, v0, Landroidx/media3/exoplayer/video/f;->d:J

    .line 55
    .line 56
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    cmp-long v1, v6, v8

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/f;->c:Z

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/media3/exoplayer/video/f;->b:Landroidx/media3/exoplayer/video/e;

    .line 70
    .line 71
    iget-wide v6, v1, Landroidx/media3/exoplayer/video/e;->d:J

    .line 72
    .line 73
    const-wide/16 v8, 0x0

    .line 74
    .line 75
    cmp-long v10, v6, v8

    .line 76
    .line 77
    if-nez v10, :cond_2

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    sub-long/2addr v6, v2

    .line 82
    const-wide/16 v2, 0xf

    .line 83
    .line 84
    rem-long/2addr v6, v2

    .line 85
    long-to-int v2, v6

    .line 86
    iget-object v1, v1, Landroidx/media3/exoplayer/video/e;->g:[Z

    .line 87
    .line 88
    aget-boolean v1, v1, v2

    .line 89
    .line 90
    :goto_0
    if-eqz v1, :cond_4

    .line 91
    .line 92
    :cond_3
    iget-object v1, v0, Landroidx/media3/exoplayer/video/f;->b:Landroidx/media3/exoplayer/video/e;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/e;->c()V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Landroidx/media3/exoplayer/video/f;->b:Landroidx/media3/exoplayer/video/e;

    .line 98
    .line 99
    iget-wide v2, v0, Landroidx/media3/exoplayer/video/f;->d:J

    .line 100
    .line 101
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/video/e;->b(J)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iput-boolean v4, v0, Landroidx/media3/exoplayer/video/f;->c:Z

    .line 105
    .line 106
    iget-object v1, v0, Landroidx/media3/exoplayer/video/f;->b:Landroidx/media3/exoplayer/video/e;

    .line 107
    .line 108
    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/video/e;->b(J)V

    .line 109
    .line 110
    .line 111
    :cond_5
    :goto_1
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/f;->c:Z

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    iget-object v1, v0, Landroidx/media3/exoplayer/video/f;->b:Landroidx/media3/exoplayer/video/e;

    .line 116
    .line 117
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/e;->a()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    iget-object v1, v0, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 124
    .line 125
    iget-object v2, v0, Landroidx/media3/exoplayer/video/f;->b:Landroidx/media3/exoplayer/video/e;

    .line 126
    .line 127
    iput-object v2, v0, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 128
    .line 129
    iput-object v1, v0, Landroidx/media3/exoplayer/video/f;->b:Landroidx/media3/exoplayer/video/e;

    .line 130
    .line 131
    iput-boolean v5, v0, Landroidx/media3/exoplayer/video/f;->c:Z

    .line 132
    .line 133
    :cond_6
    iput-wide p1, v0, Landroidx/media3/exoplayer/video/f;->d:J

    .line 134
    .line 135
    iget-object p1, v0, Landroidx/media3/exoplayer/video/f;->a:Landroidx/media3/exoplayer/video/e;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/e;->a()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    iget p1, v0, Landroidx/media3/exoplayer/video/f;->e:I

    .line 145
    .line 146
    add-int/lit8 v5, p1, 0x1

    .line 147
    .line 148
    :goto_2
    iput v5, v0, Landroidx/media3/exoplayer/video/f;->e:I

    .line 149
    .line 150
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPositionReset()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStarted()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampleBuilt:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->access$000(Landroid/content/Context;)Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->register()V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->unregister()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setVsyncData(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iput-wide p1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 9
    .line 10
    iput-wide p3, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->vsyncDurationNs:J

    .line 11
    .line 12
    return-void
.end method
