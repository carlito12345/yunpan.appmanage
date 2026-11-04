.class public final Ldc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/e;


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:I

.field public final c:I

.field public d:I

.field public final e:I

.field public final f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ldc/b;->d:I

    .line 6
    .line 7
    invoke-static {p1}, Ld2/a;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ldc/b;->a:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    const/high16 v2, 0x41a00000    # 20.0f

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    float-to-int v0, v0

    .line 33
    iput v0, p0, Ldc/b;->b:I

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/high16 v2, 0x41f00000    # 30.0f

    .line 44
    .line 45
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    float-to-int v0, v0

    .line 50
    iput v0, p0, Ldc/b;->c:I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/high16 v0, 0x41b00000    # 22.0f

    .line 61
    .line 62
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    float-to-int p1, p1

    .line 67
    iput p1, p0, Ldc/b;->e:I

    .line 68
    .line 69
    new-instance p1, Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Ldc/b;->f:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;IFFILcc/d;)V
    .locals 8

    .line 1
    iget v0, p0, Ldc/b;->e:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    .line 6
    div-float/2addr v0, v1

    .line 7
    iget-object v7, p0, Ldc/b;->f:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v7, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p2, :cond_6

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    if-ne p2, v3, :cond_0

    .line 17
    .line 18
    goto :goto_5

    .line 19
    :cond_0
    const/4 p5, 0x1

    .line 20
    if-ne p2, p5, :cond_1

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p2, 0x0

    .line 25
    :goto_0
    if-eqz p2, :cond_2

    .line 26
    .line 27
    sub-float/2addr p3, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    add-float/2addr p3, v0

    .line 30
    :goto_1
    add-float v6, p4, v0

    .line 31
    .line 32
    invoke-virtual {p1, p3, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    move v3, p3

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    sub-float v2, p3, v0

    .line 40
    .line 41
    move v3, v2

    .line 42
    :goto_2
    if-eqz p2, :cond_4

    .line 43
    .line 44
    add-float v2, p3, v0

    .line 45
    .line 46
    move v5, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    move v5, p3

    .line 49
    :goto_3
    move-object v2, p1

    .line 50
    move v4, p4

    .line 51
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    sub-float p1, p3, v0

    .line 55
    .line 56
    add-float/2addr p3, v0

    .line 57
    mul-float v0, v0, v1

    .line 58
    .line 59
    add-float/2addr v0, p4

    .line 60
    if-eqz p2, :cond_5

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_5
    const/4 p5, 0x2

    .line 64
    :goto_4
    iput p5, p6, Lcc/d;->b:I

    .line 65
    .line 66
    iget-object p2, p6, Lcc/d;->a:Landroid/graphics/RectF;

    .line 67
    .line 68
    invoke-virtual {p2, p1, p4, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 69
    .line 70
    .line 71
    goto :goto_6

    .line 72
    :cond_6
    :goto_5
    iget p2, p0, Ldc/b;->d:I

    .line 73
    .line 74
    iget-object v0, p0, Ldc/b;->a:Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    if-eq p2, p5, :cond_7

    .line 77
    .line 78
    iput p5, p0, Ldc/b;->d:I

    .line 79
    .line 80
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 81
    .line 82
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 83
    .line 84
    invoke-direct {p2, p5, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 88
    .line 89
    .line 90
    :cond_7
    iget p2, p0, Ldc/b;->b:I

    .line 91
    .line 92
    int-to-float p2, p2

    .line 93
    const/high16 p5, 0x3f800000    # 1.0f

    .line 94
    .line 95
    mul-float p2, p2, p5

    .line 96
    .line 97
    div-float/2addr p2, v1

    .line 98
    sub-float v1, p3, p2

    .line 99
    .line 100
    float-to-int v1, v1

    .line 101
    float-to-int v3, p4

    .line 102
    add-float/2addr p2, p3

    .line 103
    float-to-int p2, p2

    .line 104
    iget p3, p0, Ldc/b;->c:I

    .line 105
    .line 106
    int-to-float p3, p3

    .line 107
    mul-float p3, p3, p5

    .line 108
    .line 109
    add-float/2addr p3, p4

    .line 110
    float-to-int p3, p3

    .line 111
    invoke-virtual {v0, v1, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    .line 113
    .line 114
    const/16 p4, 0xff

    .line 115
    .line 116
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    .line 121
    .line 122
    int-to-float p1, v1

    .line 123
    int-to-float p4, v3

    .line 124
    int-to-float p2, p2

    .line 125
    int-to-float p3, p3

    .line 126
    iput v2, p6, Lcc/d;->b:I

    .line 127
    .line 128
    iget-object p5, p6, Lcc/d;->a:Landroid/graphics/RectF;

    .line 129
    .line 130
    invoke-virtual {p5, p1, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    .line 132
    .line 133
    :goto_6
    return-void
.end method
