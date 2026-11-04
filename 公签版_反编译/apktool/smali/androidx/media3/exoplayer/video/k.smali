.class public final Landroidx/media3/exoplayer/video/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/video/k;->a:I

    iput p2, p0, Landroidx/media3/exoplayer/video/k;->b:I

    iput p3, p0, Landroidx/media3/exoplayer/video/k;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroidx/media3/exoplayer/video/k;->a:I

    .line 31
    iput p3, p0, Landroidx/media3/exoplayer/video/k;->b:I

    .line 32
    iput p4, p0, Landroidx/media3/exoplayer/video/k;->c:I

    return-void
.end method

.method public constructor <init>(Lj5/h;)V
    .locals 11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lj5/h;->a:Landroid/content/Context;

    .line 4
    iget-object v1, p1, Lj5/h;->b:Landroid/app/ActivityManager;

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x13

    if-lt v2, v4, :cond_0

    .line 6
    invoke-static {v1}, Lcom/hierynomus/security/jce/a;->t(Landroid/app/ActivityManager;)Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_1

    const/high16 v5, 0x200000

    goto :goto_1

    :cond_1
    const/high16 v5, 0x400000

    .line 7
    :goto_1
    iput v5, p0, Landroidx/media3/exoplayer/video/k;->c:I

    .line 8
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    const/high16 v7, 0x100000

    mul-int v6, v6, v7

    if-lt v2, v4, :cond_2

    .line 9
    invoke-static {v1}, Lcom/hierynomus/security/jce/a;->t(Landroid/app/ActivityManager;)Z

    move-result v3

    :cond_2
    int-to-float v6, v6

    if-eqz v3, :cond_3

    const v3, 0x3ea8f5c3    # 0.33f

    goto :goto_2

    :cond_3
    const v3, 0x3ecccccd    # 0.4f

    :goto_2
    mul-float v6, v6, v3

    .line 10
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 11
    iget-object v6, p1, Lj5/h;->c:Lh5/m;

    iget-object v6, v6, Lh5/m;->b:Ljava/lang/Object;

    check-cast v6, Landroid/util/DisplayMetrics;

    .line 12
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v7, v7, v6

    mul-int/lit8 v7, v7, 0x4

    int-to-float v6, v7

    .line 14
    iget p1, p1, Lj5/h;->d:F

    mul-float v7, v6, p1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v6, v6, v8

    .line 15
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v9, v3, v5

    add-int v10, v6, v7

    if-gt v10, v9, :cond_4

    .line 16
    iput v6, p0, Landroidx/media3/exoplayer/video/k;->b:I

    .line 17
    iput v7, p0, Landroidx/media3/exoplayer/video/k;->a:I

    goto :goto_3

    :cond_4
    int-to-float v6, v9

    add-float v7, p1, v8

    div-float/2addr v6, v7

    mul-float v8, v8, v6

    .line 18
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p0, Landroidx/media3/exoplayer/video/k;->b:I

    mul-float v6, v6, p1

    .line 19
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/k;->a:I

    .line 20
    :goto_3
    const-string p1, "MemorySizeCalculator"

    const/4 v6, 0x3

    invoke-static {p1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget p1, p0, Landroidx/media3/exoplayer/video/k;->b:I

    int-to-long v6, p1

    .line 22
    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 23
    iget p1, p0, Landroidx/media3/exoplayer/video/k;->a:I

    int-to-long v6, p1

    .line 24
    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    int-to-long v5, v5

    .line 25
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    int-to-long v5, v3

    .line 26
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 27
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    if-lt v2, v4, :cond_5

    .line 28
    invoke-static {v1}, Lcom/hierynomus/security/jce/a;->t(Landroid/app/ActivityManager;)Z

    :cond_5
    return-void
.end method
