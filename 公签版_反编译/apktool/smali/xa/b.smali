.class public final Lxa/b;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public c:I

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x32

    .line 5
    .line 6
    iput p1, p0, Lxa/b;->c:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lxa/b;->d:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lxa/b;->e:Z

    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lxa/b;->a:Landroid/graphics/Paint;

    .line 20
    .line 21
    const-string v1, "#6000FF00"

    .line 22
    .line 23
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lxa/b;->a:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 41
    .line 42
    const/high16 v2, 0x3f800000    # 1.0f

    .line 43
    .line 44
    mul-float v2, v2, v1

    .line 45
    .line 46
    float-to-int v1, v2

    .line 47
    int-to-float v1, v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lxa/b;->a:Landroid/graphics/Paint;

    .line 52
    .line 53
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lxa/b;->a:Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lxa/b;->b:Landroid/graphics/Paint;

    .line 69
    .line 70
    const/high16 v1, -0x10000

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lxa/b;->b:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 86
    .line 87
    const/high16 v2, 0x41400000    # 12.0f

    .line 88
    .line 89
    mul-float v2, v2, v1

    .line 90
    .line 91
    float-to-int v1, v2

    .line 92
    int-to-float v1, v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lxa/b;->b:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lxa/b;->d:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    :goto_0
    int-to-float v10, v1

    .line 20
    cmpg-float v3, v9, v10

    .line 21
    .line 22
    if-gtz v3, :cond_1

    .line 23
    .line 24
    int-to-float v6, v0

    .line 25
    iget-object v8, p0, Lxa/b;->a:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    move-object v3, p1

    .line 29
    move v5, v9

    .line 30
    move v7, v9

    .line 31
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    iget v3, p0, Lxa/b;->c:I

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    add-float/2addr v9, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    int-to-float v1, v0

    .line 40
    cmpg-float v1, v2, v1

    .line 41
    .line 42
    if-gtz v1, :cond_2

    .line 43
    .line 44
    iget-object v8, p0, Lxa/b;->a:Landroid/graphics/Paint;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    move-object v3, p1

    .line 48
    move v4, v2

    .line 49
    move v6, v2

    .line 50
    move v7, v10

    .line 51
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lxa/b;->c:I

    .line 55
    .line 56
    int-to-float v1, v1

    .line 57
    add-float/2addr v2, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-boolean v0, p0, Lxa/b;->e:Z

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget v2, p0, Lxa/b;->c:I

    .line 72
    .line 73
    int-to-float v2, v2

    .line 74
    :goto_2
    int-to-float v3, v1

    .line 75
    cmpg-float v3, v2, v3

    .line 76
    .line 77
    if-gtz v3, :cond_4

    .line 78
    .line 79
    iget v3, p0, Lxa/b;->c:I

    .line 80
    .line 81
    int-to-float v3, v3

    .line 82
    :goto_3
    int-to-float v4, v0

    .line 83
    cmpg-float v4, v3, v4

    .line 84
    .line 85
    if-gtz v4, :cond_3

    .line 86
    .line 87
    float-to-int v4, v3

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    float-to-int v5, v2

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const/4 v6, 0x2

    .line 98
    new-array v6, v6, [Ljava/lang/Object;

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    aput-object v4, v6, v7

    .line 102
    .line 103
    const/4 v4, 0x1

    .line 104
    aput-object v5, v6, v4

    .line 105
    .line 106
    const-string v4, "(%d, %d)"

    .line 107
    .line 108
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const/high16 v5, 0x41a00000    # 20.0f

    .line 113
    .line 114
    sub-float v5, v3, v5

    .line 115
    .line 116
    const/high16 v6, 0x40a00000    # 5.0f

    .line 117
    .line 118
    sub-float v6, v2, v6

    .line 119
    .line 120
    iget-object v7, p0, Lxa/b;->b:Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    iget v4, p0, Lxa/b;->c:I

    .line 126
    .line 127
    int-to-float v4, v4

    .line 128
    add-float/2addr v3, v4

    .line 129
    goto :goto_3

    .line 130
    :cond_3
    iget v3, p0, Lxa/b;->c:I

    .line 131
    .line 132
    int-to-float v3, v3

    .line 133
    add-float/2addr v2, v3

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    return-void
.end method

.method public setCoordinatesVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lxa/b;->e:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGridSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lxa/b;->c:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGridVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lxa/b;->d:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
