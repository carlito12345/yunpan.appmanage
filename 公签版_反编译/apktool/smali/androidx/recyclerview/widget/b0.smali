.class public final Landroidx/recyclerview/widget/b0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/b0;->a:I

    iput-object p2, p0, Landroidx/recyclerview/widget/b0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/b0;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/b0;->a:I

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/b0;->b:Z

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/b0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/b0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/recyclerview/widget/b0;->b:Z

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_2
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/recyclerview/widget/b0;->b:Z

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/b0;->c:Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroidx/recyclerview/widget/b0;->a:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/recyclerview/widget/b0;->b:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/yunpan/appmanage/view/HiveProgressView;->p:[I

    .line 14
    .line 15
    check-cast v0, Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/yunpan/appmanage/view/HiveProgressView;->d()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :pswitch_0
    sget-object v1, Lh4/d0;->a:Lgf/g;

    .line 22
    .line 23
    check-cast v0, Landroid/view/View;

    .line 24
    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Lgf/g;->H(Landroid/view/View;F)V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Landroidx/recyclerview/widget/b0;->b:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :pswitch_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/b0;->b:Z

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iput-boolean p1, p0, Landroidx/recyclerview/widget/b0;->b:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    check-cast v0, Landroidx/recyclerview/widget/d0;

    .line 47
    .line 48
    iget-object v1, v0, Landroidx/recyclerview/widget/d0;->z:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/Float;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x0

    .line 61
    cmpl-float v1, v1, v2

    .line 62
    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    iput p1, v0, Landroidx/recyclerview/widget/d0;->A:I

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d0;->h(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 p1, 0x2

    .line 72
    iput p1, v0, Landroidx/recyclerview/widget/d0;->A:I

    .line 73
    .line 74
    iget-object p1, v0, Landroidx/recyclerview/widget/d0;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/b0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    sget-object p1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/b0;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Landroid/view/View;

    .line 15
    .line 16
    invoke-static {p1}, Lx0/j0;->h(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Landroidx/recyclerview/widget/b0;->b:Z

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
