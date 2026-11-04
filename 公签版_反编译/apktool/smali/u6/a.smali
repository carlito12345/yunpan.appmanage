.class public final Lu6/a;
.super La9/o;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu6/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 2
    .line 3
    invoke-direct {p0}, La9/o;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lu6/a;->c:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final O(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final U(ILandroid/view/View;)V
    .locals 1

    .line 1
    iput p1, p0, Lu6/a;->c:I

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lu6/a;->b:I

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lu6/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:Z

    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final V(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lu6/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final W(Landroid/view/View;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    int-to-float p3, p3

    .line 6
    iget-object v0, p0, Lu6/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    .line 9
    .line 10
    mul-float p3, p3, v1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    .line 18
    .line 19
    mul-float v1, v1, v0

    .line 20
    .line 21
    iget v0, p0, Lu6/a;->b:I

    .line 22
    .line 23
    sub-int/2addr p2, v0

    .line 24
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    int-to-float p2, p2

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    .line 31
    cmpg-float v2, p2, p3

    .line 32
    .line 33
    if-gtz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    cmpl-float v3, p2, v1

    .line 41
    .line 42
    if-ltz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sub-float/2addr p2, p3

    .line 49
    sub-float/2addr v1, p3

    .line 50
    div-float/2addr p2, v1

    .line 51
    sub-float p2, v0, p2

    .line 52
    .line 53
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public final X(Landroid/view/View;FF)V
    .locals 7

    .line 1
    const/4 p3, -0x1

    .line 2
    iput p3, p0, Lu6/a;->c:I

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lu6/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    cmpl-float v4, p2, v0

    .line 14
    .line 15
    if-eqz v4, :cond_5

    .line 16
    .line 17
    sget-object v4, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-static {p1}, Lx0/k0;->d(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ne v4, v1, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v4, 0x0

    .line 28
    :goto_0
    iget v5, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:I

    .line 29
    .line 30
    const/4 v6, 0x2

    .line 31
    if-ne v5, v6, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    if-nez v5, :cond_3

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    cmpg-float v4, p2, v0

    .line 39
    .line 40
    if-gez v4, :cond_8

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    cmpl-float v4, p2, v0

    .line 44
    .line 45
    if-lez v4, :cond_8

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    if-ne v5, v1, :cond_8

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    cmpl-float v4, p2, v0

    .line 53
    .line 54
    if-lez v4, :cond_8

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    cmpg-float v4, p2, v0

    .line 58
    .line 59
    if-gez v4, :cond_8

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    iget v5, p0, Lu6/a;->b:I

    .line 67
    .line 68
    sub-int/2addr v4, v5

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    int-to-float v5, v5

    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const/high16 v6, 0x3f000000    # 0.5f

    .line 78
    .line 79
    mul-float v5, v5, v6

    .line 80
    .line 81
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-lt v4, v5, :cond_8

    .line 90
    .line 91
    :goto_1
    cmpg-float p2, p2, v0

    .line 92
    .line 93
    if-ltz p2, :cond_7

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    iget v0, p0, Lu6/a;->b:I

    .line 100
    .line 101
    if-ge p2, v0, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    add-int/2addr v0, p3

    .line 105
    goto :goto_3

    .line 106
    :cond_7
    :goto_2
    iget p2, p0, Lu6/a;->b:I

    .line 107
    .line 108
    sub-int v0, p2, p3

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_8
    iget v0, p0, Lu6/a;->b:I

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    :goto_3
    iget-object p2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lf1/d;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    invoke-virtual {p2, v0, p3}, Lf1/d;->n(II)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_9

    .line 125
    .line 126
    new-instance p2, Ly7/b;

    .line 127
    .line 128
    invoke-direct {p2, v2, p1, v1}, Ly7/b;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    .line 129
    .line 130
    .line 131
    sget-object p3, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 132
    .line 133
    invoke-static {p1, p2}, Lx0/j0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 134
    .line 135
    .line 136
    :cond_9
    return-void
.end method

.method public final c0(ILandroid/view/View;)Z
    .locals 2

    .line 1
    iget v0, p0, Lu6/a;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    if-ne v0, p1, :cond_1

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lu6/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->r(Landroid/view/View;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method

.method public final v(ILandroid/view/View;)I
    .locals 3

    .line 1
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p2}, Lx0/k0;->d(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lu6/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 14
    .line 15
    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:I

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lu6/a;->b:I

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    sub-int/2addr v0, p2

    .line 28
    iget p2, p0, Lu6/a;->b:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget v0, p0, Lu6/a;->b:I

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    :goto_1
    add-int/2addr p2, v0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    if-ne v2, v1, :cond_4

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget v0, p0, Lu6/a;->b:I

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    iget v0, p0, Lu6/a;->b:I

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    sub-int/2addr v0, p2

    .line 57
    iget p2, p0, Lu6/a;->b:I

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    iget v0, p0, Lu6/a;->b:I

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    sub-int/2addr v0, v1

    .line 67
    iget v1, p0, Lu6/a;->b:I

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    add-int/2addr p2, v1

    .line 74
    :goto_2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public final w(ILandroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
