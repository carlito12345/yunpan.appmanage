.class public final Lp7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lp7/b;->a:I

    iput-object p2, p0, Lp7/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget v0, p0, Lp7/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Float;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Lp7/b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 19
    .line 20
    iput p1, v0, Lcom/yunpan/appmanage/view/HiveProgressView;->e:F

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Float;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object v0, p0, Lp7/b;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lm7/g;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v1, v0, Lm7/g;->a:Lm7/f;

    .line 45
    .line 46
    iget v2, v1, Lm7/f;->i:F

    .line 47
    .line 48
    cmpl-float v2, v2, p1

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    iput p1, v1, Lm7/f;->i:F

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, v0, Lm7/g;->e:Z

    .line 56
    .line 57
    invoke-virtual {v0}, Lm7/g;->invalidateSelf()V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void

    .line 61
    :pswitch_1
    iget-object v0, p0, Lp7/b;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->k1:Lg7/b;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljava/lang/Float;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-virtual {v0, p1}, Lg7/b;->l(F)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lp7/b;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 95
    .line 96
    invoke-virtual {v1, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
