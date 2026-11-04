.class public Lcom/google/android/material/sidesheet/SideSheetBehavior;
.super Lk0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lk0/a;"
    }
.end annotation


# instance fields
.field public a:Lnh/b;

.field public final b:Lm7/g;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Lm7/j;

.field public final e:Lkf/f;

.field public final f:F

.field public final g:Z

.field public h:I

.field public i:Lf1/d;

.field public j:Z

.field public final k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/ref/WeakReference;

.field public q:Ljava/lang/ref/WeakReference;

.field public final r:I

.field public s:Landroid/view/VelocityTracker;

.field public t:I

.field public final u:Ljava/util/LinkedHashSet;

.field public final v:Ln7/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk0/a;-><init>()V

    .line 2
    new-instance v0, Lkf/f;

    invoke-direct {v0, p0}, Lkf/f;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Lkf/f;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const v0, 0x3dcccccd    # 0.1f

    .line 5
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:F

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    .line 8
    new-instance v0, Ln7/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln7/b;-><init>(Lk0/a;I)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Ln7/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lk0/a;-><init>(I)V

    .line 10
    new-instance v1, Lkf/f;

    invoke-direct {v1, p0}, Lkf/f;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Lkf/f;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    const/4 v2, 0x5

    .line 12
    iput v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const v3, 0x3dcccccd    # 0.1f

    .line 13
    iput v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:F

    const/4 v3, -0x1

    .line 14
    iput v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    .line 15
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    .line 16
    new-instance v4, Ln7/b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Ln7/b;-><init>(Lk0/a;I)V

    iput-object v4, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Ln7/b;

    .line 17
    sget-object v4, Lq6/a;->x:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x3

    .line 18
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 19
    invoke-static {p1, v4, v5}, Lcom/bumptech/glide/c;->w(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v5, 0x6

    .line 20
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f140465

    .line 21
    invoke-static {p1, p2, v0, v5}, Lm7/j;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lff/b;

    move-result-object p2

    .line 22
    new-instance v0, Lm7/j;

    invoke-direct {v0, p2}, Lm7/j;-><init>(Lff/b;)V

    .line 23
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Lm7/j;

    .line 24
    :cond_1
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 25
    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 26
    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    .line 27
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    .line 30
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eq p2, v3, :cond_3

    .line 32
    invoke-static {v0}, Lx0/b1;->m(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 34
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Lm7/j;

    if-nez p2, :cond_4

    goto :goto_0

    .line 35
    :cond_4
    new-instance v0, Lm7/g;

    invoke-direct {v0, p2}, Lm7/g;-><init>(Lm7/j;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Lm7/g;

    .line 36
    invoke-virtual {v0, p1}, Lm7/g;->i(Landroid/content/Context;)V

    .line 37
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_5

    .line 38
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Lm7/g;

    invoke-virtual {v0, p2}, Lm7/g;->k(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 39
    :cond_5
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x1010031

    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 41
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Lm7/g;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, p2}, Lm7/g;->setTint(I)V

    :goto_0
    const/4 p2, 0x2

    const/high16 v0, -0x40800000    # -1.0f

    .line 42
    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:F

    const/4 p2, 0x4

    .line 43
    invoke-virtual {v4, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 44
    iput-boolean p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    .line 45
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    return-void
.end method


# virtual methods
.method public final c(Lk0/d;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lf1/d;

    .line 5
    .line 6
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lf1/d;

    .line 5
    .line 6
    return-void
.end method

.method public final f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-static {p2}, Lx0/b1;->e(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_7

    .line 14
    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    .line 16
    .line 17
    if-eqz p1, :cond_7

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 30
    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 34
    .line 35
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 36
    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 44
    .line 45
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    if-eq p1, v0, :cond_3

    .line 53
    .line 54
    const/4 p2, 0x3

    .line 55
    if-eq p1, p2, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 63
    .line 64
    return v1

    .line 65
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    float-to-int p1, p1

    .line 70
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    .line 71
    .line 72
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 73
    .line 74
    if-nez p1, :cond_6

    .line 75
    .line 76
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lf1/d;

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1, p3}, Lf1/d;->o(Landroid/view/MotionEvent;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    const/4 v0, 0x0

    .line 88
    :goto_1
    return v0

    .line 89
    :cond_7
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 90
    .line 91
    return v1
.end method

.method public final g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Lm7/g;

    .line 4
    .line 5
    sget-object v3, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-static {p1}, Lx0/j0;->b(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-static {p2}, Lx0/j0;->b(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    const/4 v4, 0x5

    .line 25
    const/4 v5, 0x0

    .line 26
    if-nez v3, :cond_7

    .line 27
    .line 28
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/high16 v6, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-static {v5, v5, v5, v6}, Lcom/bumptech/glide/c;->o(FFFF)Landroid/view/animation/Interpolator;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const v7, 0x7f0403eb

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v7, v6}, Lcom/bumptech/glide/d;->c0(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    .line 49
    .line 50
    .line 51
    const v6, 0x7f0403da

    .line 52
    .line 53
    .line 54
    const/16 v7, 0x12c

    .line 55
    .line 56
    invoke-static {v3, v6, v7}, Lcom/bumptech/glide/d;->b0(Landroid/content/Context;II)I

    .line 57
    .line 58
    .line 59
    const v6, 0x7f0403df

    .line 60
    .line 61
    .line 62
    const/16 v7, 0x96

    .line 63
    .line 64
    invoke-static {v3, v6, v7}, Lcom/bumptech/glide/d;->b0(Landroid/content/Context;II)I

    .line 65
    .line 66
    .line 67
    const v6, 0x7f0403de

    .line 68
    .line 69
    .line 70
    const/16 v7, 0x64

    .line 71
    .line 72
    invoke-static {v3, v6, v7}, Lcom/bumptech/glide/d;->b0(Landroid/content/Context;II)I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const v6, 0x7f07036b

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 83
    .line 84
    .line 85
    const v6, 0x7f07036a

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 89
    .line 90
    .line 91
    const v6, 0x7f07036c

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 95
    .line 96
    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    invoke-static {p2, v2}, Lx0/j0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    iget v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:F

    .line 103
    .line 104
    const/high16 v6, -0x40800000    # -1.0f

    .line 105
    .line 106
    cmpl-float v6, v3, v6

    .line 107
    .line 108
    if-nez v6, :cond_1

    .line 109
    .line 110
    invoke-static {p2}, Lx0/b1;->g(Landroid/view/View;)F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    :cond_1
    invoke-virtual {v2, v3}, Lm7/g;->j(F)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroid/content/res/ColorStateList;

    .line 119
    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    invoke-static {p2, v3}, Lx0/b1;->A(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_0
    iget v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 126
    .line 127
    if-ne v3, v4, :cond_4

    .line 128
    .line 129
    const/4 v3, 0x4

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    const/4 v3, 0x0

    .line 132
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eq v6, v3, :cond_5

    .line 137
    .line 138
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u()V

    .line 142
    .line 143
    .line 144
    invoke-static {p2}, Lx0/j0;->c(Landroid/view/View;)I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_6

    .line 149
    .line 150
    invoke-static {p2, v1}, Lx0/b1;->B(Landroid/view/View;I)V

    .line 151
    .line 152
    .line 153
    :cond_6
    invoke-static {p2}, Lx0/b1;->e(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    if-nez v3, :cond_7

    .line 158
    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    const v6, 0x7f13015a

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-static {p2, v3}, Lx0/b1;->z(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Lk0/d;

    .line 178
    .line 179
    iget v3, v3, Lk0/d;->c:I

    .line 180
    .line 181
    invoke-static {v3, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    const/4 v6, 0x3

    .line 186
    if-ne v3, v6, :cond_8

    .line 187
    .line 188
    const/4 v3, 0x1

    .line 189
    goto :goto_2

    .line 190
    :cond_8
    const/4 v3, 0x0

    .line 191
    :goto_2
    iget-object v7, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lnh/b;

    .line 192
    .line 193
    if-eqz v7, :cond_9

    .line 194
    .line 195
    invoke-virtual {v7}, Lnh/b;->J()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-eq v7, v3, :cond_f

    .line 200
    .line 201
    :cond_9
    iget-object v7, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Lm7/j;

    .line 202
    .line 203
    const/4 v8, 0x0

    .line 204
    if-nez v3, :cond_c

    .line 205
    .line 206
    new-instance v3, Ln7/a;

    .line 207
    .line 208
    invoke-direct {v3, p0, v1}, Ln7/a;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    .line 209
    .line 210
    .line 211
    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lnh/b;

    .line 212
    .line 213
    if-eqz v7, :cond_f

    .line 214
    .line 215
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 216
    .line 217
    if-eqz v3, :cond_a

    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Landroid/view/View;

    .line 224
    .line 225
    if-eqz v3, :cond_a

    .line 226
    .line 227
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    instance-of v9, v9, Lk0/d;

    .line 232
    .line 233
    if-eqz v9, :cond_a

    .line 234
    .line 235
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    move-object v8, v3

    .line 240
    check-cast v8, Lk0/d;

    .line 241
    .line 242
    :cond_a
    if-eqz v8, :cond_b

    .line 243
    .line 244
    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 245
    .line 246
    if-lez v3, :cond_b

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_b
    new-instance v3, Lff/b;

    .line 250
    .line 251
    invoke-direct {v3, v7}, Lff/b;-><init>(Lm7/j;)V

    .line 252
    .line 253
    .line 254
    new-instance v7, Lm7/a;

    .line 255
    .line 256
    invoke-direct {v7, v5}, Lm7/a;-><init>(F)V

    .line 257
    .line 258
    .line 259
    iput-object v7, v3, Lff/b;->f:Ljava/lang/Object;

    .line 260
    .line 261
    new-instance v7, Lm7/a;

    .line 262
    .line 263
    invoke-direct {v7, v5}, Lm7/a;-><init>(F)V

    .line 264
    .line 265
    .line 266
    iput-object v7, v3, Lff/b;->g:Ljava/lang/Object;

    .line 267
    .line 268
    new-instance v5, Lm7/j;

    .line 269
    .line 270
    invoke-direct {v5, v3}, Lm7/j;-><init>(Lff/b;)V

    .line 271
    .line 272
    .line 273
    if-eqz v2, :cond_f

    .line 274
    .line 275
    invoke-virtual {v2, v5}, Lm7/g;->setShapeAppearanceModel(Lm7/j;)V

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_c
    if-ne v3, v1, :cond_18

    .line 280
    .line 281
    new-instance v3, Ln7/a;

    .line 282
    .line 283
    invoke-direct {v3, p0, v0}, Ln7/a;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    .line 284
    .line 285
    .line 286
    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lnh/b;

    .line 287
    .line 288
    if-eqz v7, :cond_f

    .line 289
    .line 290
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 291
    .line 292
    if-eqz v3, :cond_d

    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    check-cast v3, Landroid/view/View;

    .line 299
    .line 300
    if-eqz v3, :cond_d

    .line 301
    .line 302
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    instance-of v9, v9, Lk0/d;

    .line 307
    .line 308
    if-eqz v9, :cond_d

    .line 309
    .line 310
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    move-object v8, v3

    .line 315
    check-cast v8, Lk0/d;

    .line 316
    .line 317
    :cond_d
    if-eqz v8, :cond_e

    .line 318
    .line 319
    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 320
    .line 321
    if-lez v3, :cond_e

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_e
    new-instance v3, Lff/b;

    .line 325
    .line 326
    invoke-direct {v3, v7}, Lff/b;-><init>(Lm7/j;)V

    .line 327
    .line 328
    .line 329
    new-instance v7, Lm7/a;

    .line 330
    .line 331
    invoke-direct {v7, v5}, Lm7/a;-><init>(F)V

    .line 332
    .line 333
    .line 334
    iput-object v7, v3, Lff/b;->e:Ljava/lang/Object;

    .line 335
    .line 336
    new-instance v7, Lm7/a;

    .line 337
    .line 338
    invoke-direct {v7, v5}, Lm7/a;-><init>(F)V

    .line 339
    .line 340
    .line 341
    iput-object v7, v3, Lff/b;->h:Ljava/lang/Object;

    .line 342
    .line 343
    new-instance v5, Lm7/j;

    .line 344
    .line 345
    invoke-direct {v5, v3}, Lm7/j;-><init>(Lff/b;)V

    .line 346
    .line 347
    .line 348
    if-eqz v2, :cond_f

    .line 349
    .line 350
    invoke-virtual {v2, v5}, Lm7/g;->setShapeAppearanceModel(Lm7/j;)V

    .line 351
    .line 352
    .line 353
    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lf1/d;

    .line 354
    .line 355
    if-nez v2, :cond_10

    .line 356
    .line 357
    new-instance v2, Lf1/d;

    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    iget-object v5, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Ln7/b;

    .line 364
    .line 365
    invoke-direct {v2, v3, p1, v5}, Lf1/d;-><init>(Landroid/content/Context;Landroidx/coordinatorlayout/widget/CoordinatorLayout;La9/o;)V

    .line 366
    .line 367
    .line 368
    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lf1/d;

    .line 369
    .line 370
    :cond_10
    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lnh/b;

    .line 371
    .line 372
    invoke-virtual {v2, p2}, Lnh/b;->H(Landroid/view/View;)I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    invoke-virtual {p1, p3, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p(ILandroid/view/View;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 380
    .line 381
    .line 382
    move-result p3

    .line 383
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    .line 384
    .line 385
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lnh/b;

    .line 386
    .line 387
    invoke-virtual {p3, p1}, Lnh/b;->I(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I

    .line 388
    .line 389
    .line 390
    move-result p3

    .line 391
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:I

    .line 392
    .line 393
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 394
    .line 395
    .line 396
    move-result p3

    .line 397
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    .line 398
    .line 399
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 400
    .line 401
    .line 402
    move-result-object p3

    .line 403
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 404
    .line 405
    if-eqz p3, :cond_11

    .line 406
    .line 407
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lnh/b;

    .line 408
    .line 409
    invoke-virtual {v3, p3}, Lnh/b;->g(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 410
    .line 411
    .line 412
    move-result p3

    .line 413
    goto :goto_4

    .line 414
    :cond_11
    const/4 p3, 0x0

    .line 415
    :goto_4
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    .line 416
    .line 417
    iget p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 418
    .line 419
    if-eq p3, v1, :cond_13

    .line 420
    .line 421
    const/4 v3, 0x2

    .line 422
    if-eq p3, v3, :cond_13

    .line 423
    .line 424
    if-eq p3, v6, :cond_14

    .line 425
    .line 426
    if-ne p3, v4, :cond_12

    .line 427
    .line 428
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lnh/b;

    .line 429
    .line 430
    invoke-virtual {p3}, Lnh/b;->C()I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    goto :goto_5

    .line 435
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 436
    .line 437
    new-instance p2, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const-string p3, "Unexpected value: "

    .line 440
    .line 441
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    iget p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 445
    .line 446
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p2

    .line 453
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw p1

    .line 457
    :cond_13
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lnh/b;

    .line 458
    .line 459
    invoke-virtual {p3, p2}, Lnh/b;->H(Landroid/view/View;)I

    .line 460
    .line 461
    .line 462
    move-result p3

    .line 463
    sub-int v0, v2, p3

    .line 464
    .line 465
    :cond_14
    :goto_5
    invoke-static {v0, p2}, Lx0/b1;->o(ILandroid/view/View;)V

    .line 466
    .line 467
    .line 468
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    .line 469
    .line 470
    if-nez p2, :cond_15

    .line 471
    .line 472
    iget p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    .line 473
    .line 474
    const/4 p3, -0x1

    .line 475
    if-eq p2, p3, :cond_15

    .line 476
    .line 477
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    if-eqz p1, :cond_15

    .line 482
    .line 483
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 484
    .line 485
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    .line 489
    .line 490
    :cond_15
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    .line 491
    .line 492
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result p2

    .line 500
    if-eqz p2, :cond_17

    .line 501
    .line 502
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object p2

    .line 506
    if-nez p2, :cond_16

    .line 507
    .line 508
    goto :goto_6

    .line 509
    :cond_16
    new-instance p1, Ljava/lang/ClassCastException;

    .line 510
    .line 511
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 512
    .line 513
    .line 514
    throw p1

    .line 515
    :cond_17
    return v1

    .line 516
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 517
    .line 518
    const-string p2, "Invalid sheet edge position value: "

    .line 519
    .line 520
    const-string p3, ". Must be 0 or 1."

    .line 521
    .line 522
    invoke-static {p2, v3, p3}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object p2

    .line 526
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    goto :goto_8

    .line 530
    :goto_7
    throw p1

    .line 531
    :goto_8
    goto :goto_7
.end method

.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    .line 18
    add-int/2addr v2, v1

    .line 19
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 20
    .line 21
    add-int/2addr v2, v1

    .line 22
    add-int/2addr v2, p4

    .line 23
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 24
    .line 25
    invoke-static {p3, v2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    add-int/2addr p1, p4

    .line 38
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 39
    .line 40
    add-int/2addr p1, p4

    .line 41
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 42
    .line 43
    add-int/2addr p1, p4

    .line 44
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 45
    .line 46
    invoke-static {p5, p1, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p2, p3, p1}, Landroid/view/View;->measure(II)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    return p1
.end method

.method public final m(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    check-cast p2, Ln7/c;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iget p2, p2, Ln7/c;->c:I

    .line 5
    .line 6
    if-eq p2, p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    if-ne p2, p1, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 p2, 0x5

    .line 12
    :cond_1
    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 13
    .line 14
    return-void
.end method

.method public final n(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    new-instance p1, Ln7/c;

    .line 2
    .line 3
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 4
    .line 5
    invoke-direct {p1, v0, p0}, Ln7/c;-><init>(Landroid/view/AbsSavedState;Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final q(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lf1/d;

    .line 28
    .line 29
    invoke-virtual {v1, p2}, Lf1/d;->i(Landroid/view/MotionEvent;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    if-nez v0, :cond_3

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 43
    .line 44
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 45
    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 53
    .line 54
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 55
    .line 56
    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    const/4 v1, 0x2

    .line 66
    if-ne v0, v1, :cond_6

    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 69
    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    .line 80
    .line 81
    int-to-float v0, v0

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    sub-float/2addr v0, v1

    .line 87
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lf1/d;

    .line 92
    .line 93
    iget v3, v1, Lf1/d;->b:I

    .line 94
    .line 95
    int-to-float v3, v3

    .line 96
    cmpl-float v0, v0, v3

    .line 97
    .line 98
    if-lez v0, :cond_6

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {v1, p2, p1}, Lf1/d;->b(ILandroid/view/View;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 112
    .line 113
    xor-int/2addr p1, v2

    .line 114
    return p1
.end method

.method public final r(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    const/4 v1, 0x5

    .line 10
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/View;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 25
    .line 26
    if-ne v0, v1, :cond_3

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eq v1, v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_5
    invoke-static {p1}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    throw p1
.end method

.method public final s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lf1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :cond_1
    :goto_0
    return v1
.end method

.method public final t(Landroid/view/View;IZ)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lnh/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lnh/b;->C()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p3, "Invalid state to get outer edge offset: "

    .line 17
    .line 18
    invoke-static {p2, p3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lnh/b;

    .line 27
    .line 28
    invoke-virtual {v0}, Lnh/b;->B()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lf1/d;

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    if-eqz p3, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1, v0, p1}, Lf1/d;->n(II)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    iput-object p1, v1, Lf1/d;->r:Landroid/view/View;

    .line 54
    .line 55
    const/4 p1, -0x1

    .line 56
    iput p1, v1, Lf1/d;->c:I

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-virtual {v1, v0, p3, p1, p1}, Lf1/d;->h(IIII)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    iget p3, v1, Lf1/d;->a:I

    .line 66
    .line 67
    if-nez p3, :cond_3

    .line 68
    .line 69
    iget-object p3, v1, Lf1/d;->r:Landroid/view/View;

    .line 70
    .line 71
    if-eqz p3, :cond_3

    .line 72
    .line 73
    const/4 p3, 0x0

    .line 74
    iput-object p3, v1, Lf1/d;->r:Landroid/view/View;

    .line 75
    .line 76
    :cond_3
    if-eqz p1, :cond_4

    .line 77
    .line 78
    :goto_1
    const/4 p1, 0x2

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Lkf/f;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lkf/f;->d(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(I)V

    .line 89
    .line 90
    .line 91
    :goto_2
    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/high16 v1, 0x40000

    .line 16
    .line 17
    invoke-static {v1, v0}, Lx0/b1;->s(ILandroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const/high16 v1, 0x100000

    .line 21
    .line 22
    invoke-static {v1, v0}, Lx0/b1;->s(ILandroid/view/View;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    .line 30
    sget-object v1, Ly0/f;->j:Ly0/f;

    .line 31
    .line 32
    new-instance v3, Lha/o;

    .line 33
    .line 34
    const/4 v4, 0x6

    .line 35
    invoke-direct {v3, v2, v4, p0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v3}, Lx0/b1;->u(Landroid/view/View;Ly0/f;Ly0/a0;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    if-eq v1, v2, :cond_3

    .line 45
    .line 46
    sget-object v1, Ly0/f;->h:Ly0/f;

    .line 47
    .line 48
    new-instance v3, Lha/o;

    .line 49
    .line 50
    const/4 v4, 0x6

    .line 51
    invoke-direct {v3, v2, v4, p0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1, v3}, Lx0/b1;->u(Landroid/view/View;Ly0/f;Ly0/a0;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method
