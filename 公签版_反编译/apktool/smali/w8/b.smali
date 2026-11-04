.class public final Lw8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:Lv8/a;

.field public b:Lv8/h;

.field public c:Z

.field public final d:Landroid/graphics/Rect;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:D

.field public j:Landroid/view/View;

.field public final synthetic k:I

.field public l:F

.field public m:F

.field public n:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw8/b;->k:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lw8/b;->c:Z

    .line 8
    .line 9
    new-instance p1, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lw8/b;->d:Landroid/graphics/Rect;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(FF)F
    .locals 3

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    const p2, 0x3f7d70a4    # 0.99f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p2, 0x3c23d70a    # 0.01f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const p2, 0x3efae148    # 0.49f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_3

    const p2, 0x3f028f5c    # 0.51f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    goto :goto_0

    :cond_3
    move v0, p1

    :goto_0
    return v0
.end method

.method public final b(Landroid/view/View;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :goto_2
    return p1
.end method

.method public final c(Lv8/h;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr p1, v1

    .line 19
    int-to-float v0, v0

    .line 20
    int-to-float p1, p1

    .line 21
    invoke-virtual {p3, v0, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public final d(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x2

    .line 14
    new-array v4, v4, [I

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 17
    .line 18
    .line 19
    aget v5, v4, v1

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    aget v4, v4, v6

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    add-int/2addr v6, v5

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    add-int/2addr v7, v4

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    int-to-float v5, v5

    .line 43
    cmpl-float v5, v8, v5

    .line 44
    .line 45
    if-ltz v5, :cond_4

    .line 46
    .line 47
    int-to-float v5, v6

    .line 48
    cmpg-float v5, v8, v5

    .line 49
    .line 50
    if-gtz v5, :cond_4

    .line 51
    .line 52
    int-to-float v4, v4

    .line 53
    cmpl-float v4, v9, v4

    .line 54
    .line 55
    if-ltz v4, :cond_4

    .line 56
    .line 57
    int-to-float v4, v7

    .line 58
    cmpg-float v4, v9, v4

    .line 59
    .line 60
    if-gtz v4, :cond_4

    .line 61
    .line 62
    instance-of v4, v3, Landroid/view/ViewGroup;

    .line 63
    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/view/View;->isScrollContainer()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Lw8/b;->b(Landroid/view/View;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    goto :goto_3

    .line 77
    :cond_0
    :try_start_0
    instance-of v5, v3, Lx0/s;

    .line 78
    .line 79
    if-nez v5, :cond_1

    .line 80
    .line 81
    instance-of v5, v3, Lx0/w;

    .line 82
    .line 83
    if-nez v5, :cond_1

    .line 84
    .line 85
    instance-of v5, v3, Landroid/webkit/WebView;

    .line 86
    .line 87
    if-nez v5, :cond_1

    .line 88
    .line 89
    instance-of v5, v3, Landroid/widget/ScrollView;

    .line 90
    .line 91
    if-nez v5, :cond_1

    .line 92
    .line 93
    instance-of v5, v3, Landroid/widget/ListView;

    .line 94
    .line 95
    if-nez v5, :cond_1

    .line 96
    .line 97
    instance-of v5, v3, Landroid/widget/SeekBar;

    .line 98
    .line 99
    if-nez v5, :cond_1

    .line 100
    .line 101
    instance-of v5, v3, Lk4/g;

    .line 102
    .line 103
    if-nez v5, :cond_1

    .line 104
    .line 105
    instance-of v5, v3, Landroidx/viewpager2/widget/ViewPager2;

    .line 106
    .line 107
    if-eqz v5, :cond_2

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    nop

    .line 111
    goto :goto_2

    .line 112
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lw8/b;->b(Landroid/view/View;)Z

    .line 113
    .line 114
    .line 115
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_3

    .line 117
    :cond_2
    :goto_2
    const/4 v5, 0x0

    .line 118
    :goto_3
    if-eqz v5, :cond_3

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_3
    if-eqz v4, :cond_4

    .line 122
    .line 123
    check-cast v3, Landroid/view/ViewGroup;

    .line 124
    .line 125
    invoke-virtual {p0, v3, p2}, Lw8/b;->d(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    goto :goto_4

    .line 130
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    const/4 v3, 0x0

    .line 134
    :goto_4
    return-object v3
.end method

.method public final e(FFFF)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lw8/b;->i:D

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    cmpl-double v5, v0, v2

    .line 7
    .line 8
    if-lez v5, :cond_0

    .line 9
    .line 10
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 11
    .line 12
    div-double/2addr v0, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-int v0, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    :goto_0
    int-to-float v0, v0

    .line 21
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    float-to-double v0, v0

    .line 34
    sub-float/2addr p1, p2

    .line 35
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    float-to-double p1, p1

    .line 40
    cmpl-double v2, p1, v0

    .line 41
    .line 42
    if-gez v2, :cond_2

    .line 43
    .line 44
    sub-float/2addr p3, p4

    .line 45
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    float-to-double p1, p1

    .line 50
    cmpl-double p3, p1, v0

    .line 51
    .line 52
    if-ltz p3, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v4, 0x0

    .line 56
    :cond_2
    :goto_1
    return v4
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lw8/b;->a:Lv8/a;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lv8/a;->d:Landroid/view/WindowManager;

    .line 9
    .line 10
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroid/graphics/Point;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 31
    .line 32
    .line 33
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 37
    .line 38
    div-float/2addr v0, v3

    .line 39
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 40
    .line 41
    int-to-float v2, v2

    .line 42
    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 43
    .line 44
    div-float/2addr v2, v1

    .line 45
    float-to-double v0, v0

    .line 46
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 47
    .line 48
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    float-to-double v5, v2

    .line 53
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    add-double/2addr v2, v0

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    :goto_0
    iput-wide v1, p0, Lw8/b;->i:D

    .line 63
    .line 64
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lw8/b;->a:Lv8/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lv8/a;->b:Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Lw8/b;->b:Lv8/h;

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    instance-of v2, v0, Landroid/app/Activity;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    check-cast v0, Landroid/app/Activity;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_2
    if-nez v1, :cond_3

    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    iget-object v0, p0, Lw8/b;->d:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 38
    .line 39
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    sub-int/2addr v1, v2

    .line 42
    iput v1, p0, Lw8/b;->e:I

    .line 43
    .line 44
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    sub-int/2addr v1, v3

    .line 49
    iput v1, p0, Lw8/b;->f:I

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iput v2, p0, Lw8/b;->g:I

    .line 57
    .line 58
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 59
    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lw8/b;->h:I

    .line 65
    .line 66
    return-void
.end method

.method public final h(FF)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lw8/b;->c:Z

    .line 2
    .line 3
    float-to-int p1, p1

    .line 4
    float-to-int p2, p2

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lw8/b;->i(II)V

    .line 8
    .line 9
    .line 10
    goto/16 :goto_9

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lw8/b;->a:Lv8/a;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    iget-object v0, v0, Lv8/a;->b:Landroid/content/ContextWrapper;

    .line 19
    .line 20
    instance-of v2, v0, Landroid/app/Activity;

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    check-cast v0, Landroid/app/Activity;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v3, 0x1c

    .line 37
    .line 38
    if-ge v2, v3, :cond_4

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    invoke-static {v0}, Lr8/a;->f(Landroid/view/View;)Landroid/view/WindowInsets;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_5
    move-object v0, v1

    .line 53
    :goto_0
    if-eqz v0, :cond_6

    .line 54
    .line 55
    invoke-static {v0}, Lo5/g;->j(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_1

    .line 60
    :cond_6
    move-object v0, v1

    .line 61
    :goto_1
    if-eqz v0, :cond_7

    .line 62
    .line 63
    invoke-static {v0}, Lo5/g;->c(Landroid/view/DisplayCutout;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v0}, Lo5/g;->w(Landroid/view/DisplayCutout;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v0}, Lo5/g;->A(Landroid/view/DisplayCutout;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v0}, Lo5/g;->B(Landroid/view/DisplayCutout;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    new-instance v4, Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .line 83
    .line 84
    move-object v1, v4

    .line 85
    :cond_7
    :goto_2
    if-eqz v1, :cond_11

    .line 86
    .line 87
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    if-nez v0, :cond_8

    .line 90
    .line 91
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 92
    .line 93
    if-nez v0, :cond_8

    .line 94
    .line 95
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 96
    .line 97
    if-nez v0, :cond_8

    .line 98
    .line 99
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 100
    .line 101
    if-nez v0, :cond_8

    .line 102
    .line 103
    goto :goto_8

    .line 104
    :cond_8
    iget-object v0, p0, Lw8/b;->a:Lv8/a;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    if-nez v0, :cond_9

    .line 108
    .line 109
    :goto_3
    const/4 v0, 0x0

    .line 110
    goto :goto_4

    .line 111
    :cond_9
    iget-object v0, v0, Lv8/a;->c:Lv8/h;

    .line 112
    .line 113
    if-nez v0, :cond_a

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    :goto_4
    iget-object v3, p0, Lw8/b;->a:Lv8/a;

    .line 121
    .line 122
    if-nez v3, :cond_b

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_b
    iget-object v3, v3, Lv8/a;->c:Lv8/h;

    .line 126
    .line 127
    if-nez v3, :cond_c

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_c
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    :goto_5
    iget v3, p0, Lw8/b;->e:I

    .line 135
    .line 136
    iget v4, p0, Lw8/b;->f:I

    .line 137
    .line 138
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 139
    .line 140
    iget v6, p0, Lw8/b;->g:I

    .line 141
    .line 142
    sub-int/2addr v5, v6

    .line 143
    if-ge p1, v5, :cond_d

    .line 144
    .line 145
    move p1, v5

    .line 146
    goto :goto_6

    .line 147
    :cond_d
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 148
    .line 149
    sub-int/2addr v3, v5

    .line 150
    sub-int/2addr v3, v0

    .line 151
    if-le p1, v3, :cond_e

    .line 152
    .line 153
    move p1, v3

    .line 154
    :cond_e
    :goto_6
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 155
    .line 156
    iget v3, p0, Lw8/b;->h:I

    .line 157
    .line 158
    sub-int/2addr v0, v3

    .line 159
    if-ge p2, v0, :cond_f

    .line 160
    .line 161
    move p2, v0

    .line 162
    goto :goto_7

    .line 163
    :cond_f
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 164
    .line 165
    sub-int/2addr v4, v0

    .line 166
    sub-int/2addr v4, v2

    .line 167
    if-le p2, v4, :cond_10

    .line 168
    .line 169
    move p2, v4

    .line 170
    :cond_10
    :goto_7
    invoke-virtual {p0, p1, p2}, Lw8/b;->i(II)V

    .line 171
    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_11
    :goto_8
    invoke-virtual {p0, p1, p2}, Lw8/b;->i(II)V

    .line 175
    .line 176
    .line 177
    :goto_9
    return-void
.end method

.method public final i(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lw8/b;->a:Lv8/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, v0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 7
    .line 8
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 9
    .line 10
    const/16 v3, 0x33

    .line 11
    .line 12
    if-ne v2, v3, :cond_1

    .line 13
    .line 14
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 15
    .line 16
    if-ne v2, p1, :cond_1

    .line 17
    .line 18
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 19
    .line 20
    if-ne v2, p2, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 24
    .line 25
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 26
    .line 27
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 28
    .line 29
    invoke-virtual {v0}, Lv8/a;->u()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, Lw8/b;->a:Lv8/a;

    .line 7
    .line 8
    iget-object v5, p0, Lw8/b;->b:Lv8/h;

    .line 9
    .line 10
    if-eqz v4, :cond_18

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    goto/16 :goto_c

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v6, 0x0

    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    if-eq v4, v3, :cond_1

    .line 24
    .line 25
    if-eq v4, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v4, p0, Lw8/b;->j:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p0, v5, v4, p2}, Lw8/b;->c(Lv8/h;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 33
    .line 34
    .line 35
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iput-object v6, p0, Lw8/b;->j:Landroid/view/View;

    .line 37
    .line 38
    return p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    iput-object v6, p0, Lw8/b;->j:Landroid/view/View;

    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2
    :goto_0
    iget-object v4, p0, Lw8/b;->j:Landroid/view/View;

    .line 44
    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0, v5, v4, p2}, Lw8/b;->c(Lv8/h;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_3
    invoke-virtual {p0}, Lw8/b;->g()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lw8/b;->f()V

    .line 56
    .line 57
    .line 58
    iput-object v6, p0, Lw8/b;->j:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {p0, v5, p2}, Lw8/b;->d(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0, v5, v4, p2}, Lw8/b;->c(Lv8/h;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    iput-object v4, p0, Lw8/b;->j:Landroid/view/View;

    .line 73
    .line 74
    return v3

    .line 75
    :cond_4
    iget v4, p0, Lw8/b;->k:I

    .line 76
    .line 77
    packed-switch v4, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_f

    .line 85
    .line 86
    if-eq v4, v3, :cond_9

    .line 87
    .line 88
    if-eq v4, v0, :cond_5

    .line 89
    .line 90
    if-eq v4, v1, :cond_9

    .line 91
    .line 92
    goto/16 :goto_7

    .line 93
    .line 94
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget v1, p0, Lw8/b;->g:I

    .line 99
    .line 100
    int-to-float v1, v1

    .line 101
    sub-float/2addr v0, v1

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    iget v2, p0, Lw8/b;->h:I

    .line 107
    .line 108
    int-to-float v2, v2

    .line 109
    sub-float/2addr v1, v2

    .line 110
    iget v2, p0, Lw8/b;->l:F

    .line 111
    .line 112
    sub-float/2addr v0, v2

    .line 113
    iget v2, p0, Lw8/b;->m:F

    .line 114
    .line 115
    sub-float/2addr v1, v2

    .line 116
    iget-object v2, p0, Lw8/b;->a:Lv8/a;

    .line 117
    .line 118
    if-nez v2, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    iget-object v2, v2, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 122
    .line 123
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 124
    .line 125
    and-int/lit16 v2, v2, 0x200

    .line 126
    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    :goto_1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    :goto_2
    invoke-virtual {p0, v0, v1}, Lw8/b;->h(FF)V

    .line 139
    .line 140
    .line 141
    iget-boolean p1, p0, Lw8/b;->n:Z

    .line 142
    .line 143
    if-eqz p1, :cond_8

    .line 144
    .line 145
    goto/16 :goto_7

    .line 146
    .line 147
    :cond_8
    iget p1, p0, Lw8/b;->l:F

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iget v1, p0, Lw8/b;->m:F

    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    invoke-virtual {p0, p1, v0, v1, p2}, Lw8/b;->e(FFFF)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_10

    .line 164
    .line 165
    iput-boolean v3, p0, Lw8/b;->n:Z

    .line 166
    .line 167
    goto/16 :goto_7

    .line 168
    .line 169
    :cond_9
    iget-boolean v1, p0, Lw8/b;->n:Z

    .line 170
    .line 171
    if-eqz v1, :cond_e

    .line 172
    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    iget v4, p0, Lw8/b;->g:I

    .line 182
    .line 183
    int-to-float v4, v4

    .line 184
    sub-float/2addr v1, v4

    .line 185
    iget v4, p0, Lw8/b;->h:I

    .line 186
    .line 187
    int-to-float v4, v4

    .line 188
    sub-float/2addr p2, v4

    .line 189
    iget v4, p0, Lw8/b;->l:F

    .line 190
    .line 191
    sub-float v4, v1, v4

    .line 192
    .line 193
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    iget v5, p0, Lw8/b;->e:I

    .line 198
    .line 199
    int-to-float v5, v5

    .line 200
    const/high16 v6, 0x40000000    # 2.0f

    .line 201
    .line 202
    div-float v7, v5, v6

    .line 203
    .line 204
    cmpg-float v1, v1, v7

    .line 205
    .line 206
    if-gez v1, :cond_a

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_a
    iget-object v1, p0, Lw8/b;->a:Lv8/a;

    .line 210
    .line 211
    if-nez v1, :cond_b

    .line 212
    .line 213
    :goto_3
    const/4 v1, 0x0

    .line 214
    goto :goto_4

    .line 215
    :cond_b
    iget-object v1, v1, Lv8/a;->c:Lv8/h;

    .line 216
    .line 217
    if-nez v1, :cond_c

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    :goto_4
    int-to-float v1, v1

    .line 225
    sub-float/2addr v5, v1

    .line 226
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    :goto_5
    iget v1, p0, Lw8/b;->m:F

    .line 231
    .line 232
    sub-float/2addr p2, v1

    .line 233
    sub-float v1, v4, p1

    .line 234
    .line 235
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    const v5, 0x3727c5ac    # 1.0E-5f

    .line 240
    .line 241
    .line 242
    cmpg-float v1, v1, v5

    .line 243
    .line 244
    if-gez v1, :cond_d

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_d
    sub-float v1, p1, v4

    .line 248
    .line 249
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    div-float/2addr v1, v6

    .line 254
    float-to-long v5, v1

    .line 255
    const-wide/16 v7, 0xc8

    .line 256
    .line 257
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 258
    .line 259
    .line 260
    move-result-wide v5

    .line 261
    const-wide/16 v7, 0x320

    .line 262
    .line 263
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 264
    .line 265
    .line 266
    move-result-wide v5

    .line 267
    new-instance v1, Lw8/c;

    .line 268
    .line 269
    invoke-direct {v1, p0, p2}, Lw8/c;-><init>(Lw8/b;F)V

    .line 270
    .line 271
    .line 272
    new-array p2, v0, [F

    .line 273
    .line 274
    aput v4, p2, v2

    .line 275
    .line 276
    aput p1, p2, v3

    .line 277
    .line 278
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 286
    .line 287
    .line 288
    new-instance p2, Lh4/q;

    .line 289
    .line 290
    const/4 v0, 0x5

    .line 291
    invoke-direct {p2, v0, p0}, Lh4/q;-><init>(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 298
    .line 299
    .line 300
    :cond_e
    :goto_6
    :try_start_1
    iget-boolean p1, p0, Lw8/b;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    .line 302
    iput-boolean v2, p0, Lw8/b;->n:Z

    .line 303
    .line 304
    goto/16 :goto_b

    .line 305
    .line 306
    :catchall_1
    move-exception p1

    .line 307
    iput-boolean v2, p0, Lw8/b;->n:Z

    .line 308
    .line 309
    throw p1

    .line 310
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    iput p1, p0, Lw8/b;->l:F

    .line 315
    .line 316
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    iput p1, p0, Lw8/b;->m:F

    .line 321
    .line 322
    iput-boolean v2, p0, Lw8/b;->n:Z

    .line 323
    .line 324
    :cond_10
    :goto_7
    iget-boolean p1, p0, Lw8/b;->n:Z

    .line 325
    .line 326
    goto/16 :goto_b

    .line 327
    .line 328
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_16

    .line 333
    .line 334
    if-eq v4, v3, :cond_15

    .line 335
    .line 336
    if-eq v4, v0, :cond_11

    .line 337
    .line 338
    if-eq v4, v1, :cond_15

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    iget v1, p0, Lw8/b;->g:I

    .line 346
    .line 347
    int-to-float v1, v1

    .line 348
    sub-float/2addr v0, v1

    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    iget v2, p0, Lw8/b;->h:I

    .line 354
    .line 355
    int-to-float v2, v2

    .line 356
    sub-float/2addr v1, v2

    .line 357
    iget v2, p0, Lw8/b;->l:F

    .line 358
    .line 359
    sub-float/2addr v0, v2

    .line 360
    iget v2, p0, Lw8/b;->m:F

    .line 361
    .line 362
    sub-float/2addr v1, v2

    .line 363
    iget-object v2, p0, Lw8/b;->a:Lv8/a;

    .line 364
    .line 365
    if-nez v2, :cond_12

    .line 366
    .line 367
    goto :goto_8

    .line 368
    :cond_12
    iget-object v2, v2, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 369
    .line 370
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 371
    .line 372
    and-int/lit16 v2, v2, 0x200

    .line 373
    .line 374
    if-eqz v2, :cond_13

    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_13
    :goto_8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    :goto_9
    invoke-virtual {p0, v0, v1}, Lw8/b;->h(FF)V

    .line 386
    .line 387
    .line 388
    iget-boolean p1, p0, Lw8/b;->n:Z

    .line 389
    .line 390
    if-eqz p1, :cond_14

    .line 391
    .line 392
    goto :goto_a

    .line 393
    :cond_14
    iget p1, p0, Lw8/b;->l:F

    .line 394
    .line 395
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    iget v1, p0, Lw8/b;->m:F

    .line 400
    .line 401
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 402
    .line 403
    .line 404
    move-result p2

    .line 405
    invoke-virtual {p0, p1, v0, v1, p2}, Lw8/b;->e(FFFF)Z

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    if-eqz p1, :cond_17

    .line 410
    .line 411
    iput-boolean v3, p0, Lw8/b;->n:Z

    .line 412
    .line 413
    goto :goto_a

    .line 414
    :cond_15
    iget-boolean p1, p0, Lw8/b;->n:Z

    .line 415
    .line 416
    iput-boolean v2, p0, Lw8/b;->n:Z

    .line 417
    .line 418
    goto :goto_b

    .line 419
    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    iput p1, p0, Lw8/b;->l:F

    .line 424
    .line 425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    iput p1, p0, Lw8/b;->m:F

    .line 430
    .line 431
    iput-boolean v2, p0, Lw8/b;->n:Z

    .line 432
    .line 433
    :cond_17
    :goto_a
    iget-boolean p1, p0, Lw8/b;->n:Z

    .line 434
    .line 435
    :goto_b
    return p1

    .line 436
    :cond_18
    :goto_c
    return v2

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
