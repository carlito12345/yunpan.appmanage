.class public final Lya/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yunpan/appmanage/service/AccService;

.field public final b:Lz7/s;

.field public c:Landroid/view/WindowManager;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/ImageView;

.field public f:F

.field public g:F

.field public h:I

.field public i:I

.field public j:I

.field public final k:I

.field public final l:Z

.field public final m:Z

.field public n:Landroid/hardware/input/IInputManager;

.field public final o:Ljava/util/HashMap;

.field public final p:Ljava/util/HashMap;

.field public final q:Ljava/util/HashMap;

.field public r:I

.field public final s:Lcom/yunpan/appmanage/carsdk/u;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/service/AccService;Lz7/s;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 5
    .line 6
    iput v0, p0, Lya/i;->f:F

    .line 7
    .line 8
    iput v0, p0, Lya/i;->g:F

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lya/i;->k:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lya/i;->l:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lya/i;->m:Z

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Lya/i;->n:Landroid/hardware/input/IInputManager;

    .line 20
    .line 21
    new-instance v2, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lya/i;->o:Ljava/util/HashMap;

    .line 27
    .line 28
    new-instance v2, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lya/i;->p:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v2, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lya/i;->q:Ljava/util/HashMap;

    .line 41
    .line 42
    iput v1, p0, Lya/i;->r:I

    .line 43
    .line 44
    new-instance v1, Lcom/yunpan/appmanage/carsdk/u;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/16 v3, 0x1a

    .line 51
    .line 52
    invoke-direct {v1, p0, v2, v3}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lya/i;->s:Lcom/yunpan/appmanage/carsdk/u;

    .line 56
    .line 57
    iput-object p1, p0, Lya/i;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 58
    .line 59
    iput-object p2, p0, Lya/i;->b:Lz7/s;

    .line 60
    .line 61
    const-string p1, "isAutoHideCursor"

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput-boolean p1, p0, Lya/i;->m:Z

    .line 72
    .line 73
    iget-object p1, p2, Lz7/s;->a:Lb8/n;

    .line 74
    .line 75
    const-string v2, "isChannelSwitchToDownUp"

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_0

    .line 82
    .line 83
    invoke-virtual {p2, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iput-boolean v2, p0, Lya/i;->l:Z

    .line 92
    .line 93
    :cond_0
    const-string v2, "cursor_close_key_code"

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    invoke-virtual {p2, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput p1, p0, Lya/i;->k:I

    .line 110
    .line 111
    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public static a(Lya/i;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lya/i;->p:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v0, v1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    add-int/2addr v1, v2

    .line 24
    iget-object v3, p0, Lya/i;->o:Ljava/util/HashMap;

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    if-ne v1, v4, :cond_0

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget v5, p0, Lya/i;->j:I

    .line 34
    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v4, 0x6

    .line 44
    if-ne v1, v4, :cond_1

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget v5, p0, Lya/i;->j:I

    .line 51
    .line 52
    mul-int/lit8 v5, v5, 0x2

    .line 53
    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lya/i;->s:Lcom/yunpan/appmanage/carsdk/u;

    .line 73
    .line 74
    if-ne v1, v2, :cond_2

    .line 75
    .line 76
    const-wide/16 v0, 0x12c

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const-wide/16 v0, 0x32

    .line 80
    .line 81
    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static b(Lya/i;II)V
    .locals 3

    .line 1
    iget v0, p0, Lya/i;->f:F

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    add-float/2addr v0, p1

    .line 5
    iget p1, p0, Lya/i;->g:F

    .line 6
    .line 7
    int-to-float p2, p2

    .line 8
    add-float/2addr p1, p2

    .line 9
    iget p2, p0, Lya/i;->h:I

    .line 10
    .line 11
    iget-object v1, p0, Lya/i;->e:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr p2, v1

    .line 18
    int-to-float p2, p2

    .line 19
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iget v1, p0, Lya/i;->i:I

    .line 29
    .line 30
    iget-object v2, p0, Lya/i;->e:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v1, v2

    .line 37
    int-to-float v1, v1

    .line 38
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object v0, p0, Lya/i;->e:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lya/i;->e:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 54
    .line 55
    .line 56
    iput p2, p0, Lya/i;->f:F

    .line 57
    .line 58
    iput p1, p0, Lya/i;->g:F

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lya/i;->c:Landroid/view/WindowManager;

    .line 2
    .line 3
    iget-object v1, p0, Lya/i;->d:Landroid/view/View;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lya/i;->s:Lcom/yunpan/appmanage/carsdk/u;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lya/i;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/yunpan/appmanage/service/AccService;->V:Lya/i;

    .line 17
    .line 18
    const-string v0, "\u5149\u6807\u5df2\u5173\u95ed"

    .line 19
    .line 20
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lya/i;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x3fa66666    # 1.3f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-wide/16 v1, 0x32

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lua/g8;

    .line 25
    .line 26
    const/16 v2, 0xe

    .line 27
    .line 28
    invoke-direct {v1, v2, p0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
