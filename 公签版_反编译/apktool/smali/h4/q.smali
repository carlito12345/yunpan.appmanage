.class public final Lh4/q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lh4/q;->a:I

    iput-object p2, p0, Lh4/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lh4/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    const/4 p1, 0x0

    .line 11
    iget-object v0, p0, Lh4/q;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 14
    .line 15
    iput-object p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroid/view/ViewPropertyAnimator;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget v0, p0, Lh4/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lh4/q;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lwa/a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lwa/a;->d()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p1, p0, Lh4/q;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lw8/b;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    const/4 p1, 0x0

    .line 23
    iget-object v0, p0, Lh4/q;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 26
    .line 27
    iput-object p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_2
    iget-object p1, p0, Lh4/q;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->h:Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_3
    iget-object p1, p0, Lh4/q;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lq7/l;

    .line 44
    .line 45
    invoke-virtual {p1}, Lq7/q;->q()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lq7/l;->r:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_4
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    .line 56
    iget-object v0, p0, Lh4/q;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Li4/f;

    .line 59
    .line 60
    iget-object v1, v0, Li4/f;->f:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/4 v2, 0x0

    .line 70
    :goto_0
    if-ge v2, v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, La7/a;

    .line 77
    .line 78
    iget-object v3, v3, La7/a;->b:La7/d;

    .line 79
    .line 80
    iget-object v3, v3, La7/d;->p:Landroid/content/res/ColorStateList;

    .line 81
    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    invoke-static {v0, v3}, Lcom/bumptech/glide/c;->f0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    return-void

    .line 91
    :pswitch_5
    iget-object v0, p0, Lh4/q;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Lh4/t;

    .line 94
    .line 95
    invoke-virtual {v0}, Lh4/t;->m()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget v0, p0, Lh4/q;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :sswitch_0
    iget-object p1, p0, Lh4/q;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lw8/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :sswitch_1
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v0, p0, Lh4/q;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Li4/f;

    .line 23
    .line 24
    iget-object v1, v0, Li4/f;->f:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, La7/a;

    .line 41
    .line 42
    iget-object v3, v3, La7/a;->b:La7/d;

    .line 43
    .line 44
    iget-object v4, v3, La7/d;->p:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    iget-object v3, v3, La7/d;->t:[I

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v4, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {v0, v3}, Lcom/bumptech/glide/c;->e0(Landroid/graphics/drawable/Drawable;I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
