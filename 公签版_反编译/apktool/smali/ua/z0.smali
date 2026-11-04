.class public final Lua/z0;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityClean;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityClean;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/z0;->b:I

    iput-object p1, p0, Lua/z0;->c:Lcom/yunpan/appmanage/ui/ActivityClean;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/z0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lua/z0;->c:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->I:Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->K:Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->F:Landroid/widget/TextView;

    .line 22
    .line 23
    const-string v1, "\u6e05\u7406\u5b8c\u6210"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->C:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lua/z0;->c:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->I:Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->K:Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->F:Landroid/widget/TextView;

    .line 50
    .line 51
    const-string v1, "\u626b\u63cf\u5b8c\u6210"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->C:Landroid/widget/TextView;

    .line 57
    .line 58
    const-string v0, "\u5f00\u59cb\u6e05\u7406"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/z0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/z0;->c:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityClean;->E:Lx9/t0;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    instance-of v0, p1, Lx9/z0;

    .line 21
    .line 22
    iget-object v1, p0, Lua/z0;->c:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityClean;->E:Lx9/t0;

    .line 27
    .line 28
    check-cast p1, Lx9/z0;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityClean;->E:Lx9/t0;

    .line 39
    .line 40
    check-cast p1, Ljava/util/List;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgc/b;)V
    .locals 2

    .line 1
    iget p1, p0, Lua/z0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/z0;->c:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->I:Landroid/animation/ObjectAnimator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->K:Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->F:Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v1, "\u6e05\u7406\u4e2d"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->C:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object p1, p0, Lua/z0;->c:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 32
    .line 33
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->I:Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->K:Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->F:Landroid/widget/TextView;

    .line 44
    .line 45
    const-string v1, "\u626b\u63cf\u4e2d"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->C:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lua/z0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/z0;->c:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityClean;->I:Landroid/animation/ObjectAnimator;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityClean;->K:Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityClean;->F:Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v2, "\u6e05\u7406\u5b8c\u6210"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityClean;->C:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lua/z0;->c:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityClean;->I:Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityClean;->K:Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityClean;->F:Landroid/widget/TextView;

    .line 44
    .line 45
    const-string v2, "\u626b\u63cf\u5b8c\u6210"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityClean;->C:Landroid/widget/TextView;

    .line 51
    .line 52
    const-string v1, "\u5f00\u59cb\u6e05\u7406"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
