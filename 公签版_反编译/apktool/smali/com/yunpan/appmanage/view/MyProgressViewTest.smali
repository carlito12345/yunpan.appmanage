.class public Lcom/yunpan/appmanage/view/MyProgressViewTest;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:Landroid/graphics/Paint;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getMaxCount()D
    .locals 2

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->a:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    return-wide v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->c:Landroid/graphics/Paint;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->c:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/high16 v1, -0x1000000

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->e:I

    .line 23
    .line 24
    div-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    new-instance v1, Landroid/graphics/RectF;

    .line 27
    .line 28
    iget v2, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->d:I

    .line 29
    .line 30
    int-to-float v2, v2

    .line 31
    iget v3, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->e:I

    .line 32
    .line 33
    int-to-float v3, v3

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 36
    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    iget-object v2, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->c:Landroid/graphics/Paint;

    .line 40
    .line 41
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->c:Landroid/graphics/Paint;

    .line 45
    .line 46
    const/16 v2, 0xd3

    .line 47
    .line 48
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Landroid/graphics/RectF;

    .line 56
    .line 57
    iget v2, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->d:I

    .line 58
    .line 59
    add-int/lit8 v2, v2, -0x2

    .line 60
    .line 61
    int-to-float v2, v2

    .line 62
    iget v3, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->e:I

    .line 63
    .line 64
    add-int/lit8 v3, v3, -0x2

    .line 65
    .line 66
    int-to-float v3, v3

    .line 67
    const/high16 v5, 0x40000000    # 2.0f

    .line 68
    .line 69
    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->c:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 75
    .line 76
    .line 77
    iget v1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->b:F

    .line 78
    .line 79
    iget v2, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->a:F

    .line 80
    .line 81
    div-float/2addr v1, v2

    .line 82
    new-instance v2, Landroid/graphics/RectF;

    .line 83
    .line 84
    iget v3, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->d:I

    .line 85
    .line 86
    add-int/lit8 v3, v3, -0x3

    .line 87
    .line 88
    int-to-float v3, v3

    .line 89
    mul-float v3, v3, v1

    .line 90
    .line 91
    iget v5, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->e:I

    .line 92
    .line 93
    add-int/lit8 v5, v5, -0x3

    .line 94
    .line 95
    int-to-float v5, v5

    .line 96
    const/high16 v6, 0x40400000    # 3.0f

    .line 97
    .line 98
    invoke-direct {v2, v6, v6, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    .line 100
    .line 101
    cmpl-float v1, v1, v4

    .line 102
    .line 103
    if-eqz v1, :cond_0

    .line 104
    .line 105
    iget-object v1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->c:Landroid/graphics/Paint;

    .line 106
    .line 107
    const v3, -0xff0100

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->c:Landroid/graphics/Paint;

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    .line 119
    .line 120
    :goto_0
    iget-object v1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->c:Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/high16 v2, 0x40000000    # 2.0f

    .line 21
    .line 22
    const/high16 v3, -0x80000000

    .line 23
    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    if-ne v0, v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->d:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    iput p1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->d:I

    .line 34
    .line 35
    :goto_1
    if-eq v1, v3, :cond_3

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iput p2, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->e:I

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 56
    .line 57
    const/16 p2, 0x14

    .line 58
    .line 59
    int-to-float p2, p2

    .line 60
    mul-float p2, p2, p1

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    int-to-float p1, p1

    .line 64
    const/high16 v0, 0x3f000000    # 0.5f

    .line 65
    .line 66
    mul-float p1, p1, v0

    .line 67
    .line 68
    add-float/2addr p1, p2

    .line 69
    float-to-int p1, p1

    .line 70
    iput p1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->e:I

    .line 71
    .line 72
    :goto_3
    iget p1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->d:I

    .line 73
    .line 74
    iget p2, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->e:I

    .line 75
    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public setCurrentCount(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->a:F

    .line 2
    .line 3
    cmpl-float v1, p1, v0

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    move p1, v0

    .line 8
    :cond_0
    iput p1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->b:F

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMaxCount(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/view/MyProgressViewTest;->a:F

    .line 2
    .line 3
    return-void
.end method
