.class public final Lb1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final s:I


# instance fields
.field public final a:Lb1/a;

.field public final b:Landroid/view/animation/AccelerateInterpolator;

.field public final c:Landroid/widget/ListView;

.field public d:Landroidx/activity/h;

.field public final e:[F

.field public final f:[F

.field public final g:I

.field public final h:I

.field public final i:[F

.field public final j:[F

.field public final k:[F

.field public l:Z

.field public m:Z

.field public n:Z

.field public p:Z

.field public q:Z

.field public final r:Lw/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lb1/g;->s:I

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lw/t1;)V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lb1/a;

    .line 6
    .line 7
    invoke-direct {v1}, Lb1/a;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lb1/g;->a:Lb1/a;

    .line 11
    .line 12
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lb1/g;->b:Landroid/view/animation/AccelerateInterpolator;

    .line 18
    .line 19
    new-array v2, v0, [F

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lb1/g;->e:[F

    .line 25
    .line 26
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 27
    .line 28
    .line 29
    new-array v4, v0, [F

    .line 30
    .line 31
    fill-array-data v4, :array_1

    .line 32
    .line 33
    .line 34
    iput-object v4, p0, Lb1/g;->f:[F

    .line 35
    .line 36
    new-array v5, v0, [F

    .line 37
    .line 38
    fill-array-data v5, :array_2

    .line 39
    .line 40
    .line 41
    iput-object v5, p0, Lb1/g;->i:[F

    .line 42
    .line 43
    new-array v6, v0, [F

    .line 44
    .line 45
    fill-array-data v6, :array_3

    .line 46
    .line 47
    .line 48
    iput-object v6, p0, Lb1/g;->j:[F

    .line 49
    .line 50
    new-array v0, v0, [F

    .line 51
    .line 52
    fill-array-data v0, :array_4

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lb1/g;->k:[F

    .line 56
    .line 57
    iput-object p1, p0, Lb1/g;->c:Landroid/widget/ListView;

    .line 58
    .line 59
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .line 69
    const v8, 0x44c4e000    # 1575.0f

    .line 70
    .line 71
    .line 72
    mul-float v8, v8, v7

    .line 73
    .line 74
    const/high16 v9, 0x3f000000    # 0.5f

    .line 75
    .line 76
    add-float/2addr v8, v9

    .line 77
    float-to-int v8, v8

    .line 78
    const v10, 0x439d8000    # 315.0f

    .line 79
    .line 80
    .line 81
    mul-float v7, v7, v10

    .line 82
    .line 83
    add-float/2addr v7, v9

    .line 84
    float-to-int v7, v7

    .line 85
    int-to-float v8, v8

    .line 86
    const/high16 v9, 0x447a0000    # 1000.0f

    .line 87
    .line 88
    div-float/2addr v8, v9

    .line 89
    const/4 v10, 0x0

    .line 90
    aput v8, v0, v10

    .line 91
    .line 92
    const/4 v11, 0x1

    .line 93
    aput v8, v0, v11

    .line 94
    .line 95
    int-to-float v0, v7

    .line 96
    div-float/2addr v0, v9

    .line 97
    aput v0, v6, v10

    .line 98
    .line 99
    aput v0, v6, v11

    .line 100
    .line 101
    iput v11, p0, Lb1/g;->g:I

    .line 102
    .line 103
    aput v3, v4, v10

    .line 104
    .line 105
    aput v3, v4, v11

    .line 106
    .line 107
    const v0, 0x3e4ccccd    # 0.2f

    .line 108
    .line 109
    .line 110
    aput v0, v2, v10

    .line 111
    .line 112
    aput v0, v2, v11

    .line 113
    .line 114
    const v0, 0x3a83126f    # 0.001f

    .line 115
    .line 116
    .line 117
    aput v0, v5, v10

    .line 118
    .line 119
    aput v0, v5, v11

    .line 120
    .line 121
    sget v0, Lb1/g;->s:I

    .line 122
    .line 123
    iput v0, p0, Lb1/g;->h:I

    .line 124
    .line 125
    const/16 v0, 0x1f4

    .line 126
    .line 127
    iput v0, v1, Lb1/a;->a:I

    .line 128
    .line 129
    iput v0, v1, Lb1/a;->b:I

    .line 130
    .line 131
    iput-object p1, p0, Lb1/g;->r:Lw/t1;

    .line 132
    .line 133
    return-void

    .line 134
    nop

    .line 135
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static b(FFF)F
    .locals 1

    .line 1
    cmpl-float v0, p0, p2

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return p2

    .line 6
    :cond_0
    cmpg-float p2, p0, p1

    .line 7
    .line 8
    if-gez p2, :cond_1

    .line 9
    .line 10
    return p1

    .line 11
    :cond_1
    return p0
.end method


# virtual methods
.method public final a(IFFF)F
    .locals 3

    .line 1
    iget-object v0, p0, Lb1/g;->e:[F

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Lb1/g;->f:[F

    .line 6
    .line 7
    aget v1, v1, p1

    .line 8
    .line 9
    mul-float v0, v0, p3

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1}, Lb1/g;->b(FFF)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, p2, v0}, Lb1/g;->c(FF)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-float/2addr p3, p2

    .line 21
    invoke-virtual {p0, p3, v0}, Lb1/g;->c(FF)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sub-float/2addr p2, v1

    .line 26
    iget-object p3, p0, Lb1/g;->b:Landroid/view/animation/AccelerateInterpolator;

    .line 27
    .line 28
    cmpg-float v0, p2, v2

    .line 29
    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    neg-float p2, p2

    .line 33
    invoke-virtual {p3, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    neg-float p2, p2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    cmpl-float v0, p2, v2

    .line 40
    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    :goto_0
    const/high16 p3, -0x40800000    # -1.0f

    .line 48
    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-static {p2, p3, v0}, Lb1/g;->b(FFF)F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 p2, 0x0

    .line 57
    :goto_1
    cmpl-float p3, p2, v2

    .line 58
    .line 59
    if-nez p3, :cond_2

    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    iget-object p3, p0, Lb1/g;->i:[F

    .line 63
    .line 64
    aget p3, p3, p1

    .line 65
    .line 66
    iget-object v0, p0, Lb1/g;->j:[F

    .line 67
    .line 68
    aget v0, v0, p1

    .line 69
    .line 70
    iget-object v1, p0, Lb1/g;->k:[F

    .line 71
    .line 72
    aget p1, v1, p1

    .line 73
    .line 74
    mul-float p3, p3, p4

    .line 75
    .line 76
    cmpl-float p4, p2, v2

    .line 77
    .line 78
    if-lez p4, :cond_3

    .line 79
    .line 80
    mul-float p2, p2, p3

    .line 81
    .line 82
    invoke-static {p2, v0, p1}, Lb1/g;->b(FFF)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    return p1

    .line 87
    :cond_3
    neg-float p2, p2

    .line 88
    mul-float p2, p2, p3

    .line 89
    .line 90
    invoke-static {p2, v0, p1}, Lb1/g;->b(FFF)F

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    neg-float p1, p1

    .line 95
    return p1
.end method

.method public final c(FF)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lb1/g;->g:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v2, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    cmpg-float v1, p1, v0

    .line 19
    .line 20
    if-gez v1, :cond_4

    .line 21
    .line 22
    neg-float p2, p2

    .line 23
    div-float/2addr p1, p2

    .line 24
    return p1

    .line 25
    :cond_2
    cmpg-float v3, p1, p2

    .line 26
    .line 27
    if-gez v3, :cond_4

    .line 28
    .line 29
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    .line 31
    cmpl-float v4, p1, v0

    .line 32
    .line 33
    if-ltz v4, :cond_3

    .line 34
    .line 35
    div-float/2addr p1, p2

    .line 36
    sub-float/2addr v3, p1

    .line 37
    return v3

    .line 38
    :cond_3
    iget-boolean p1, p0, Lb1/g;->p:Z

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    if-ne v1, v2, :cond_4

    .line 43
    .line 44
    return v3

    .line 45
    :cond_4
    :goto_0
    return v0
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lb1/g;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lb1/g;->p:Z

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lb1/g;->a:Lb1/a;

    .line 10
    .line 11
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-wide v4, v0, Lb1/a;->e:J

    .line 16
    .line 17
    sub-long v4, v2, v4

    .line 18
    .line 19
    long-to-int v5, v4

    .line 20
    iget v4, v0, Lb1/a;->b:I

    .line 21
    .line 22
    if-le v5, v4, :cond_1

    .line 23
    .line 24
    move v1, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-gez v5, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v1, v5

    .line 30
    :goto_0
    iput v1, v0, Lb1/a;->i:I

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Lb1/a;->a(J)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lb1/a;->h:F

    .line 37
    .line 38
    iput-wide v2, v0, Lb1/a;->g:J

    .line 39
    .line 40
    :goto_1
    return-void
.end method

.method public final e()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lb1/g;->a:Lb1/a;

    .line 2
    .line 3
    iget v1, v0, Lb1/a;->d:F

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    div-float/2addr v1, v2

    .line 10
    float-to-int v1, v1

    .line 11
    iget v0, v0, Lb1/a;->c:F

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lb1/g;->r:Lw/t1;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    add-int v6, v5, v4

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    if-lez v1, :cond_1

    .line 40
    .line 41
    if-lt v6, v3, :cond_2

    .line 42
    .line 43
    sub-int/2addr v4, v7

    .line 44
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-gt v1, v2, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-gez v1, :cond_3

    .line 60
    .line 61
    if-gtz v5, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ltz v1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x1

    .line 75
    :cond_3
    :goto_0
    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lb1/g;->q:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_3

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p0}, Lb1/g;->d()V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iput-boolean v2, p0, Lb1/g;->n:Z

    .line 28
    .line 29
    iput-boolean v1, p0, Lb1/g;->l:Z

    .line 30
    .line 31
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    iget-object v4, p0, Lb1/g;->c:Landroid/widget/ListView;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    int-to-float v5, v5

    .line 47
    invoke-virtual {p0, v1, v0, v3, v5}, Lb1/g;->a(IFFF)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    int-to-float p1, p1

    .line 60
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    int-to-float v3, v3

    .line 65
    invoke-virtual {p0, v2, p2, p1, v3}, Lb1/g;->a(IFFF)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget-object p2, p0, Lb1/g;->a:Lb1/a;

    .line 70
    .line 71
    iput v0, p2, Lb1/a;->c:F

    .line 72
    .line 73
    iput p1, p2, Lb1/a;->d:F

    .line 74
    .line 75
    iget-boolean p1, p0, Lb1/g;->p:Z

    .line 76
    .line 77
    if-nez p1, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0}, Lb1/g;->e()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lb1/g;->d:Landroidx/activity/h;

    .line 86
    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    new-instance p1, Landroidx/activity/h;

    .line 90
    .line 91
    const/4 p2, 0x5

    .line 92
    invoke-direct {p1, p2, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lb1/g;->d:Landroidx/activity/h;

    .line 96
    .line 97
    :cond_4
    iput-boolean v2, p0, Lb1/g;->p:Z

    .line 98
    .line 99
    iput-boolean v2, p0, Lb1/g;->m:Z

    .line 100
    .line 101
    iget-boolean p1, p0, Lb1/g;->l:Z

    .line 102
    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    iget p1, p0, Lb1/g;->h:I

    .line 106
    .line 107
    if-lez p1, :cond_5

    .line 108
    .line 109
    iget-object p2, p0, Lb1/g;->d:Landroidx/activity/h;

    .line 110
    .line 111
    int-to-long v5, p1

    .line 112
    sget-object p1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 113
    .line 114
    invoke-static {v4, p2, v5, v6}, Lx0/j0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    iget-object p1, p0, Lb1/g;->d:Landroidx/activity/h;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/activity/h;->run()V

    .line 121
    .line 122
    .line 123
    :goto_0
    iput-boolean v2, p0, Lb1/g;->l:Z

    .line 124
    .line 125
    :cond_6
    :goto_1
    return v1
.end method
