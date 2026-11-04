.class public Lcom/yunpan/appmanage/view/HiveProgressView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final p:[I


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:Z

.field public final l:I

.field public final m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/yunpan/appmanage/view/HiveProgressView;->p:[I

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0xff0000
        0xff7f00
        0xffff00
        0xff00
        0xff
        0x4b0082
        0x9400d3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->a:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 16
    .line 17
    const/16 v1, 0x46

    .line 18
    .line 19
    iput v1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 20
    .line 21
    const/16 v2, 0x7d0

    .line 22
    .line 23
    iput v2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->g:I

    .line 24
    .line 25
    iput v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->l:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Lw9/a;->a:[I

    .line 32
    .line 33
    invoke-virtual {v3, p2, v4, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput v2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->g:I

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    const/high16 v2, -0x1000000

    .line 58
    .line 59
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->h:I

    .line 64
    .line 65
    :cond_0
    const/4 v2, 0x5

    .line 66
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iput-boolean v2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->i:Z

    .line 71
    .line 72
    const/4 v2, 0x6

    .line 73
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iput-boolean v2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->k:Z

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iput v2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->j:I

    .line 85
    .line 86
    const/4 v2, 0x3

    .line 87
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iput v2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->l:I

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    .line 98
    .line 99
    new-instance p2, Landroid/graphics/CornerPathEffect;

    .line 100
    .line 101
    iget v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->j:I

    .line 102
    .line 103
    int-to-float v0, v0

    .line 104
    invoke-direct {p2, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 108
    .line 109
    .line 110
    iget p2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->h:I

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    .line 114
    .line 115
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    .line 122
    .line 123
    iget p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->l:I

    .line 124
    .line 125
    if-eqz p1, :cond_1

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget p2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->l:I

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(FI)I
    .locals 6

    .line 1
    mul-int/lit8 v0, p2, 0x64

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x42c80000    # 100.0f

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    cmpl-float v3, p1, v0

    .line 8
    .line 9
    if-lez v3, :cond_0

    .line 10
    .line 11
    iget v3, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 12
    .line 13
    int-to-float v3, v3

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v3, p2, -0x1

    .line 16
    .line 17
    mul-int/lit8 v3, v3, 0x64

    .line 18
    .line 19
    int-to-float v3, v3

    .line 20
    sub-float v3, p1, v3

    .line 21
    .line 22
    cmpl-float v4, v3, v2

    .line 23
    .line 24
    if-lez v4, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v3, 0x0

    .line 28
    :goto_0
    iget v4, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 29
    .line 30
    int-to-float v4, v4

    .line 31
    mul-float v3, v3, v4

    .line 32
    .line 33
    div-float/2addr v3, v1

    .line 34
    :goto_1
    const/high16 v4, 0x442f0000    # 700.0f

    .line 35
    .line 36
    cmpl-float v5, p1, v4

    .line 37
    .line 38
    if-lez v5, :cond_4

    .line 39
    .line 40
    sub-float v3, p1, v4

    .line 41
    .line 42
    cmpl-float v0, v3, v0

    .line 43
    .line 44
    if-lez v0, :cond_2

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 49
    .line 50
    mul-int/lit8 p2, p2, 0x64

    .line 51
    .line 52
    int-to-float p2, p2

    .line 53
    sub-float/2addr v3, p2

    .line 54
    cmpl-float p2, v3, v2

    .line 55
    .line 56
    if-lez p2, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const/4 v3, 0x0

    .line 60
    :goto_2
    iget p2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 61
    .line 62
    int-to-float p2, p2

    .line 63
    mul-float v3, v3, p2

    .line 64
    .line 65
    div-float/2addr v3, v1

    .line 66
    sub-float v3, p2, v3

    .line 67
    .line 68
    :cond_4
    :goto_3
    const/high16 p2, 0x44af0000    # 1400.0f

    .line 69
    .line 70
    cmpl-float p1, p1, p2

    .line 71
    .line 72
    if-lez p1, :cond_5

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    move v2, v3

    .line 76
    :goto_4
    float-to-int p1, v2

    .line 77
    return p1
.end method

.method public final b(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x7

    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/yunpan/appmanage/view/HiveProgressView;->p:[I

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    iget p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->h:I

    .line 16
    .line 17
    return p1
.end method

.method public final c(IIIIF)Landroid/graphics/Path;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    sub-int/2addr p4, p2

    .line 7
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    sub-int/2addr p3, p1

    .line 12
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-le v1, p4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p4, v1

    .line 20
    :goto_0
    div-int/lit8 p4, p4, 0x2

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->k:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    int-to-float p4, p4

    .line 27
    mul-float p5, p5, p4

    .line 28
    .line 29
    sub-float/2addr p4, p5

    .line 30
    float-to-int p4, p4

    .line 31
    add-int/2addr p2, p4

    .line 32
    float-to-int p4, p5

    .line 33
    :cond_1
    div-int/lit8 p3, p3, 0x2

    .line 34
    .line 35
    add-int/2addr p3, p1

    .line 36
    int-to-double v1, p4

    .line 37
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 38
    .line 39
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 44
    .line 45
    .line 46
    mul-double v3, v3, v1

    .line 47
    .line 48
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 49
    .line 50
    div-double/2addr v3, v1

    .line 51
    double-to-int p1, v3

    .line 52
    int-to-float p5, p3

    .line 53
    int-to-float v1, p2

    .line 54
    invoke-virtual {v0, p5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    .line 56
    .line 57
    add-int/2addr p3, p1

    .line 58
    div-int/lit8 p5, p4, 0x2

    .line 59
    .line 60
    add-int/2addr p2, p5

    .line 61
    int-to-float v1, p3

    .line 62
    int-to-float v2, p2

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    .line 65
    .line 66
    add-int/2addr p2, p4

    .line 67
    int-to-float v2, p2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    .line 70
    .line 71
    sub-int/2addr p3, p1

    .line 72
    add-int/2addr p2, p5

    .line 73
    int-to-float v1, p3

    .line 74
    int-to-float v2, p2

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    .line 77
    .line 78
    sub-int/2addr p3, p1

    .line 79
    sub-int/2addr p2, p5

    .line 80
    int-to-float p1, p3

    .line 81
    int-to-float p3, p2

    .line 82
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    .line 84
    .line 85
    sub-int/2addr p2, p4

    .line 86
    int-to-float p2, p2

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 91
    .line 92
    .line 93
    return-object v0
.end method

.method public final d()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->n:Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->n:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-array v1, v0, [F

    .line 18
    .line 19
    fill-array-data v1, :array_0

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->g:I

    .line 27
    .line 28
    int-to-long v2, v2

    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 33
    .line 34
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lp7/b;

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    invoke-direct {v2, v3, p0}, Lp7/b;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 50
    .line 51
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->n:Landroid/animation/AnimatorSet;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->n:Landroid/animation/AnimatorSet;

    .line 60
    .line 61
    new-instance v2, Landroidx/recyclerview/widget/b0;

    .line 62
    .line 63
    invoke-direct {v2, v0, p0}, Landroidx/recyclerview/widget/b0;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->n:Landroid/animation/AnimatorSet;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :array_0
    .array-data 4
        0x0
        0x44b54000    # 1450.0f
    .end array-data
.end method

.method public getAnimationTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yunpan/appmanage/view/HiveProgressView;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 6
    .line 7
    iget-object v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->n:Landroid/animation/AnimatorSet;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->n:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    const/4 v8, 0x4

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v10, 0x5

    .line 10
    const/4 v11, 0x7

    .line 11
    const/4 v12, 0x6

    .line 12
    const/4 v13, 0x2

    .line 13
    const/4 v14, 0x3

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    .line 18
    .line 19
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 20
    .line 21
    invoke-virtual {v6, v0, v1}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    iget v2, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 28
    .line 29
    div-int/lit8 v3, v2, 0x2

    .line 30
    .line 31
    iget v4, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 32
    .line 33
    mul-int/lit8 v2, v2, 0x3

    .line 34
    .line 35
    div-int/2addr v2, v13

    .line 36
    iget v5, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 37
    .line 38
    sub-int/2addr v5, v4

    .line 39
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 45
    .line 46
    .line 47
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 48
    .line 49
    div-int/lit8 v1, v0, 0x2

    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    invoke-static {v0, v2, v8, v1}, Ll2/z;->a(IIII)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    div-int/2addr v0, v8

    .line 57
    sub-int/2addr v1, v0

    .line 58
    int-to-float v0, v1

    .line 59
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 60
    .line 61
    div-int/2addr v1, v13

    .line 62
    int-to-float v1, v1

    .line 63
    const/high16 v2, 0x41200000    # 10.0f

    .line 64
    .line 65
    invoke-virtual {v7, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    .line 78
    .line 79
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 80
    .line 81
    invoke-virtual {v6, v0, v13}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    iget v3, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 88
    .line 89
    mul-int/lit8 v4, v3, 0x3

    .line 90
    .line 91
    div-int/2addr v4, v13

    .line 92
    iget v5, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 93
    .line 94
    mul-int/lit8 v3, v3, 0x5

    .line 95
    .line 96
    div-int/2addr v3, v13

    .line 97
    iget v15, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 98
    .line 99
    sub-int/2addr v15, v5

    .line 100
    invoke-virtual {v1, v4, v5, v3, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 106
    .line 107
    .line 108
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 109
    .line 110
    mul-int/lit8 v1, v0, 0x3

    .line 111
    .line 112
    div-int/lit8 v3, v1, 0x2

    .line 113
    .line 114
    invoke-static {v0, v10, v8, v3}, Ll2/z;->a(IIII)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    div-int/2addr v1, v8

    .line 119
    sub-int/2addr v0, v1

    .line 120
    int-to-float v0, v0

    .line 121
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 122
    .line 123
    div-int/2addr v1, v13

    .line 124
    int-to-float v1, v1

    .line 125
    const/high16 v3, -0x3ee00000    # -10.0f

    .line 126
    .line 127
    invoke-virtual {v7, v3, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 128
    .line 129
    .line 130
    iget-object v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 131
    .line 132
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    .line 140
    .line 141
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 142
    .line 143
    invoke-virtual {v6, v0, v12}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 148
    .line 149
    iget v4, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 150
    .line 151
    mul-int/lit8 v5, v4, 0x3

    .line 152
    .line 153
    div-int/2addr v5, v8

    .line 154
    iget v12, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 155
    .line 156
    add-int/2addr v5, v12

    .line 157
    iget v15, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 158
    .line 159
    mul-int/lit8 v4, v4, 0x7

    .line 160
    .line 161
    div-int/2addr v4, v8

    .line 162
    sub-int/2addr v4, v12

    .line 163
    const/4 v12, 0x0

    .line 164
    invoke-virtual {v1, v12, v5, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 170
    .line 171
    .line 172
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 173
    .line 174
    div-int/2addr v0, v13

    .line 175
    int-to-float v0, v0

    .line 176
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 177
    .line 178
    mul-int/lit8 v4, v1, 0x3

    .line 179
    .line 180
    div-int/lit8 v5, v4, 0x4

    .line 181
    .line 182
    const/16 v12, 0x8

    .line 183
    .line 184
    invoke-static {v1, v11, v12, v5}, Ll2/z;->a(IIII)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    div-int/2addr v4, v12

    .line 189
    sub-int/2addr v1, v4

    .line 190
    int-to-float v1, v1

    .line 191
    invoke-virtual {v7, v3, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 192
    .line 193
    .line 194
    iget-object v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 195
    .line 196
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 200
    .line 201
    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 203
    .line 204
    .line 205
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 206
    .line 207
    invoke-virtual {v6, v0, v11}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 212
    .line 213
    iget v4, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 214
    .line 215
    iget v5, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 216
    .line 217
    mul-int/lit8 v15, v5, 0x3

    .line 218
    .line 219
    div-int/2addr v15, v8

    .line 220
    iget v2, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 221
    .line 222
    add-int/2addr v15, v2

    .line 223
    mul-int/lit8 v9, v4, 0x2

    .line 224
    .line 225
    mul-int/lit8 v5, v5, 0x7

    .line 226
    .line 227
    div-int/2addr v5, v8

    .line 228
    sub-int/2addr v5, v2

    .line 229
    invoke-virtual {v1, v4, v15, v9, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 233
    .line 234
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 235
    .line 236
    .line 237
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 238
    .line 239
    add-int v1, v0, v0

    .line 240
    .line 241
    div-int/2addr v0, v13

    .line 242
    sub-int/2addr v1, v0

    .line 243
    int-to-float v0, v1

    .line 244
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 245
    .line 246
    mul-int/lit8 v2, v1, 0x3

    .line 247
    .line 248
    div-int/lit8 v4, v2, 0x4

    .line 249
    .line 250
    invoke-static {v1, v11, v12, v4}, Ll2/z;->a(IIII)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    div-int/2addr v2, v12

    .line 255
    sub-int/2addr v1, v2

    .line 256
    int-to-float v1, v1

    .line 257
    const/high16 v2, 0x40a00000    # 5.0f

    .line 258
    .line 259
    invoke-virtual {v7, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 260
    .line 261
    .line 262
    iget-object v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 263
    .line 264
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 268
    .line 269
    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 271
    .line 272
    .line 273
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 274
    .line 275
    invoke-virtual {v6, v0, v14}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 280
    .line 281
    iget v2, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 282
    .line 283
    mul-int/lit8 v4, v2, 0x2

    .line 284
    .line 285
    iget v5, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 286
    .line 287
    mul-int/lit8 v9, v5, 0x3

    .line 288
    .line 289
    div-int/2addr v9, v8

    .line 290
    iget v15, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 291
    .line 292
    add-int/2addr v9, v15

    .line 293
    mul-int/lit8 v2, v2, 0x3

    .line 294
    .line 295
    mul-int/lit8 v5, v5, 0x7

    .line 296
    .line 297
    div-int/2addr v5, v8

    .line 298
    sub-int/2addr v5, v15

    .line 299
    invoke-virtual {v1, v4, v9, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 303
    .line 304
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 305
    .line 306
    .line 307
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 308
    .line 309
    mul-int/lit8 v1, v0, 0x2

    .line 310
    .line 311
    mul-int/lit8 v2, v0, 0x3

    .line 312
    .line 313
    div-int/2addr v2, v13

    .line 314
    add-int/2addr v2, v1

    .line 315
    sub-int/2addr v2, v0

    .line 316
    int-to-float v0, v2

    .line 317
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 318
    .line 319
    mul-int/lit8 v2, v1, 0x3

    .line 320
    .line 321
    div-int/lit8 v4, v2, 0x4

    .line 322
    .line 323
    invoke-static {v1, v11, v12, v4}, Ll2/z;->a(IIII)I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    div-int/2addr v2, v12

    .line 328
    sub-int/2addr v1, v2

    .line 329
    int-to-float v1, v1

    .line 330
    invoke-virtual {v7, v3, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 331
    .line 332
    .line 333
    iget-object v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 334
    .line 335
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 342
    .line 343
    .line 344
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 345
    .line 346
    invoke-virtual {v6, v0, v10}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 351
    .line 352
    iget v2, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 353
    .line 354
    div-int/lit8 v3, v2, 0x2

    .line 355
    .line 356
    iget v4, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 357
    .line 358
    mul-int/lit8 v5, v4, 0x6

    .line 359
    .line 360
    div-int/2addr v5, v8

    .line 361
    iget v9, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 362
    .line 363
    add-int/2addr v5, v9

    .line 364
    mul-int/lit8 v2, v2, 0x3

    .line 365
    .line 366
    div-int/2addr v2, v13

    .line 367
    const/16 v11, 0xa

    .line 368
    .line 369
    mul-int/lit8 v4, v4, 0xa

    .line 370
    .line 371
    div-int/2addr v4, v8

    .line 372
    sub-int/2addr v4, v9

    .line 373
    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 374
    .line 375
    .line 376
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 377
    .line 378
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 379
    .line 380
    .line 381
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 382
    .line 383
    div-int/lit8 v1, v0, 0x2

    .line 384
    .line 385
    const/4 v2, 0x3

    .line 386
    invoke-static {v0, v2, v8, v1}, Ll2/z;->a(IIII)I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    div-int/2addr v0, v8

    .line 391
    sub-int/2addr v1, v0

    .line 392
    int-to-float v0, v1

    .line 393
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 394
    .line 395
    mul-int/lit8 v2, v1, 0x6

    .line 396
    .line 397
    div-int/lit8 v3, v2, 0x4

    .line 398
    .line 399
    const/16 v4, 0xa

    .line 400
    .line 401
    invoke-static {v1, v4, v12, v3}, Ll2/z;->a(IIII)I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    div-int/2addr v2, v12

    .line 406
    sub-int/2addr v1, v2

    .line 407
    int-to-float v1, v1

    .line 408
    const/high16 v2, 0x41a00000    # 20.0f

    .line 409
    .line 410
    invoke-virtual {v7, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 411
    .line 412
    .line 413
    iget-object v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 414
    .line 415
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 419
    .line 420
    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 422
    .line 423
    .line 424
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 425
    .line 426
    invoke-virtual {v6, v0, v8}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 431
    .line 432
    iget v2, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 433
    .line 434
    mul-int/lit8 v3, v2, 0x3

    .line 435
    .line 436
    div-int/2addr v3, v13

    .line 437
    iget v4, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 438
    .line 439
    mul-int/lit8 v5, v4, 0x6

    .line 440
    .line 441
    div-int/2addr v5, v8

    .line 442
    iget v9, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 443
    .line 444
    add-int/2addr v5, v9

    .line 445
    mul-int/lit8 v2, v2, 0x5

    .line 446
    .line 447
    div-int/2addr v2, v13

    .line 448
    const/16 v11, 0xa

    .line 449
    .line 450
    mul-int/lit8 v4, v4, 0xa

    .line 451
    .line 452
    div-int/2addr v4, v8

    .line 453
    sub-int/2addr v4, v9

    .line 454
    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 455
    .line 456
    .line 457
    iget-object v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 458
    .line 459
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 460
    .line 461
    .line 462
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 463
    .line 464
    mul-int/lit8 v1, v0, 0x3

    .line 465
    .line 466
    div-int/lit8 v2, v1, 0x2

    .line 467
    .line 468
    invoke-static {v0, v10, v8, v2}, Ll2/z;->a(IIII)I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    div-int/2addr v1, v8

    .line 473
    sub-int/2addr v0, v1

    .line 474
    int-to-float v0, v0

    .line 475
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 476
    .line 477
    mul-int/lit8 v2, v1, 0x6

    .line 478
    .line 479
    div-int/2addr v2, v8

    .line 480
    const/16 v3, 0xa

    .line 481
    .line 482
    mul-int/lit8 v1, v1, 0xa

    .line 483
    .line 484
    div-int/2addr v1, v8

    .line 485
    add-int/2addr v1, v2

    .line 486
    sub-int/2addr v1, v2

    .line 487
    int-to-float v1, v1

    .line 488
    const/high16 v2, 0x41200000    # 10.0f

    .line 489
    .line 490
    invoke-virtual {v7, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 491
    .line 492
    .line 493
    iget-object v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->m:Landroid/graphics/drawable/Drawable;

    .line 494
    .line 495
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :cond_0
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 504
    .line 505
    invoke-virtual {v6, v0, v1}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    iget-object v9, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->a:Landroid/graphics/Paint;

    .line 510
    .line 511
    invoke-virtual {v6, v1}, Lcom/yunpan/appmanage/view/HiveProgressView;->b(I)I

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 519
    .line 520
    .line 521
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 522
    .line 523
    div-int/lit8 v2, v1, 0x2

    .line 524
    .line 525
    iget v3, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 526
    .line 527
    mul-int/lit8 v1, v1, 0x3

    .line 528
    .line 529
    div-int/lit8 v4, v1, 0x2

    .line 530
    .line 531
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 532
    .line 533
    add-int v5, v1, v3

    .line 534
    .line 535
    int-to-float v0, v0

    .line 536
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 537
    .line 538
    int-to-float v1, v1

    .line 539
    div-float v15, v0, v1

    .line 540
    .line 541
    move-object/from16 v0, p0

    .line 542
    .line 543
    move v1, v2

    .line 544
    move v2, v3

    .line 545
    move v3, v4

    .line 546
    move v4, v5

    .line 547
    move v5, v15

    .line 548
    invoke-virtual/range {v0 .. v5}, Lcom/yunpan/appmanage/view/HiveProgressView;->c(IIIIF)Landroid/graphics/Path;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v7, v0, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 553
    .line 554
    .line 555
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 556
    .line 557
    invoke-virtual {v6, v0, v13}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    invoke-virtual {v6, v13}, Lcom/yunpan/appmanage/view/HiveProgressView;->b(I)I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 569
    .line 570
    .line 571
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 572
    .line 573
    mul-int/lit8 v2, v1, 0x3

    .line 574
    .line 575
    div-int/2addr v2, v13

    .line 576
    iget v3, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 577
    .line 578
    mul-int/lit8 v1, v1, 0x5

    .line 579
    .line 580
    div-int/lit8 v4, v1, 0x2

    .line 581
    .line 582
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 583
    .line 584
    add-int v5, v1, v3

    .line 585
    .line 586
    int-to-float v0, v0

    .line 587
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 588
    .line 589
    int-to-float v1, v1

    .line 590
    div-float v15, v0, v1

    .line 591
    .line 592
    move-object/from16 v0, p0

    .line 593
    .line 594
    move v1, v2

    .line 595
    move v2, v3

    .line 596
    move v3, v4

    .line 597
    move v4, v5

    .line 598
    move v5, v15

    .line 599
    invoke-virtual/range {v0 .. v5}, Lcom/yunpan/appmanage/view/HiveProgressView;->c(IIIIF)Landroid/graphics/Path;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-virtual {v7, v0, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 604
    .line 605
    .line 606
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 607
    .line 608
    invoke-virtual {v6, v0, v12}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    invoke-virtual {v6, v12}, Lcom/yunpan/appmanage/view/HiveProgressView;->b(I)I

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 620
    .line 621
    .line 622
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 623
    .line 624
    mul-int/lit8 v2, v1, 0x3

    .line 625
    .line 626
    div-int/2addr v2, v8

    .line 627
    iget v3, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 628
    .line 629
    add-int/2addr v2, v3

    .line 630
    iget v4, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 631
    .line 632
    invoke-static {v1, v11, v8, v3}, Ll2/z;->a(IIII)I

    .line 633
    .line 634
    .line 635
    move-result v5

    .line 636
    int-to-float v0, v0

    .line 637
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 638
    .line 639
    int-to-float v1, v1

    .line 640
    div-float v12, v0, v1

    .line 641
    .line 642
    const/4 v1, 0x0

    .line 643
    move-object/from16 v0, p0

    .line 644
    .line 645
    move v3, v4

    .line 646
    move v4, v5

    .line 647
    move v5, v12

    .line 648
    invoke-virtual/range {v0 .. v5}, Lcom/yunpan/appmanage/view/HiveProgressView;->c(IIIIF)Landroid/graphics/Path;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-virtual {v7, v0, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 653
    .line 654
    .line 655
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 656
    .line 657
    invoke-virtual {v6, v0, v11}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    invoke-virtual {v6, v11}, Lcom/yunpan/appmanage/view/HiveProgressView;->b(I)I

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 669
    .line 670
    .line 671
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 672
    .line 673
    iget v2, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 674
    .line 675
    mul-int/lit8 v3, v2, 0x3

    .line 676
    .line 677
    div-int/2addr v3, v8

    .line 678
    iget v4, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 679
    .line 680
    add-int/2addr v3, v4

    .line 681
    mul-int/lit8 v5, v1, 0x2

    .line 682
    .line 683
    invoke-static {v2, v11, v8, v4}, Ll2/z;->a(IIII)I

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    int-to-float v0, v0

    .line 688
    iget v2, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 689
    .line 690
    int-to-float v2, v2

    .line 691
    div-float v12, v0, v2

    .line 692
    .line 693
    move-object/from16 v0, p0

    .line 694
    .line 695
    move v2, v3

    .line 696
    move v3, v5

    .line 697
    move v5, v12

    .line 698
    invoke-virtual/range {v0 .. v5}, Lcom/yunpan/appmanage/view/HiveProgressView;->c(IIIIF)Landroid/graphics/Path;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v7, v0, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 703
    .line 704
    .line 705
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 706
    .line 707
    invoke-virtual {v6, v0, v14}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    invoke-virtual {v6, v14}, Lcom/yunpan/appmanage/view/HiveProgressView;->b(I)I

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 719
    .line 720
    .line 721
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 722
    .line 723
    mul-int/lit8 v2, v1, 0x2

    .line 724
    .line 725
    iget v3, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 726
    .line 727
    mul-int/lit8 v4, v3, 0x3

    .line 728
    .line 729
    div-int/2addr v4, v8

    .line 730
    iget v5, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 731
    .line 732
    add-int/2addr v4, v5

    .line 733
    mul-int/lit8 v12, v1, 0x3

    .line 734
    .line 735
    invoke-static {v3, v11, v8, v5}, Ll2/z;->a(IIII)I

    .line 736
    .line 737
    .line 738
    move-result v5

    .line 739
    int-to-float v0, v0

    .line 740
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 741
    .line 742
    int-to-float v1, v1

    .line 743
    div-float v11, v0, v1

    .line 744
    .line 745
    move-object/from16 v0, p0

    .line 746
    .line 747
    move v1, v2

    .line 748
    move v2, v4

    .line 749
    move v3, v12

    .line 750
    move v4, v5

    .line 751
    move v5, v11

    .line 752
    invoke-virtual/range {v0 .. v5}, Lcom/yunpan/appmanage/view/HiveProgressView;->c(IIIIF)Landroid/graphics/Path;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {v7, v0, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 757
    .line 758
    .line 759
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 760
    .line 761
    invoke-virtual {v6, v0, v10}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    invoke-virtual {v6, v10}, Lcom/yunpan/appmanage/view/HiveProgressView;->b(I)I

    .line 766
    .line 767
    .line 768
    move-result v1

    .line 769
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 773
    .line 774
    .line 775
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 776
    .line 777
    div-int/lit8 v2, v1, 0x2

    .line 778
    .line 779
    iget v3, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 780
    .line 781
    mul-int/lit8 v4, v3, 0x6

    .line 782
    .line 783
    div-int/2addr v4, v8

    .line 784
    iget v5, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 785
    .line 786
    add-int/2addr v4, v5

    .line 787
    mul-int/lit8 v1, v1, 0x3

    .line 788
    .line 789
    div-int/lit8 v11, v1, 0x2

    .line 790
    .line 791
    const/16 v1, 0xa

    .line 792
    .line 793
    invoke-static {v3, v1, v8, v5}, Ll2/z;->a(IIII)I

    .line 794
    .line 795
    .line 796
    move-result v5

    .line 797
    int-to-float v0, v0

    .line 798
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 799
    .line 800
    int-to-float v1, v1

    .line 801
    div-float v12, v0, v1

    .line 802
    .line 803
    move-object/from16 v0, p0

    .line 804
    .line 805
    move v1, v2

    .line 806
    move v2, v4

    .line 807
    move v3, v11

    .line 808
    move v4, v5

    .line 809
    move v5, v12

    .line 810
    invoke-virtual/range {v0 .. v5}, Lcom/yunpan/appmanage/view/HiveProgressView;->c(IIIIF)Landroid/graphics/Path;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-virtual {v7, v0, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 815
    .line 816
    .line 817
    iget v0, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 818
    .line 819
    invoke-virtual {v6, v0, v8}, Lcom/yunpan/appmanage/view/HiveProgressView;->a(FI)I

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    invoke-virtual {v6, v8}, Lcom/yunpan/appmanage/view/HiveProgressView;->b(I)I

    .line 824
    .line 825
    .line 826
    move-result v1

    .line 827
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 831
    .line 832
    .line 833
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 834
    .line 835
    mul-int/lit8 v2, v1, 0x3

    .line 836
    .line 837
    div-int/2addr v2, v13

    .line 838
    iget v3, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 839
    .line 840
    mul-int/lit8 v4, v3, 0x6

    .line 841
    .line 842
    div-int/2addr v4, v8

    .line 843
    iget v5, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 844
    .line 845
    add-int/2addr v4, v5

    .line 846
    mul-int/lit8 v1, v1, 0x5

    .line 847
    .line 848
    div-int/lit8 v10, v1, 0x2

    .line 849
    .line 850
    const/16 v1, 0xa

    .line 851
    .line 852
    invoke-static {v3, v1, v8, v5}, Ll2/z;->a(IIII)I

    .line 853
    .line 854
    .line 855
    move-result v5

    .line 856
    int-to-float v0, v0

    .line 857
    iget v1, v6, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 858
    .line 859
    int-to-float v1, v1

    .line 860
    div-float v8, v0, v1

    .line 861
    .line 862
    move-object/from16 v0, p0

    .line 863
    .line 864
    move v1, v2

    .line 865
    move v2, v4

    .line 866
    move v3, v10

    .line 867
    move v4, v5

    .line 868
    move v5, v8

    .line 869
    invoke-virtual/range {v0 .. v5}, Lcom/yunpan/appmanage/view/HiveProgressView;->c(IIIIF)Landroid/graphics/Path;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v7, v0, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 874
    .line 875
    .line 876
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    div-int/lit8 p2, p1, 0x3

    .line 6
    .line 7
    iput p2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->c:I

    .line 8
    .line 9
    mul-int/lit8 p2, p1, 0x2

    .line 10
    .line 11
    div-int/lit8 p2, p2, 0x5

    .line 12
    .line 13
    iput p2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->b:I

    .line 14
    .line 15
    div-int/lit8 p2, p1, 0x17

    .line 16
    .line 17
    iput p2, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->d:I

    .line 18
    .line 19
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setAnimationTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setRainbow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShrink(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/yunpan/appmanage/view/HiveProgressView;->d()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x8

    .line 17
    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 25
    .line 26
    iget-object p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->n:Landroid/animation/AnimatorSet;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/yunpan/appmanage/view/HiveProgressView;->n:Landroid/animation/AnimatorSet;

    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method
