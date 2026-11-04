.class public final Lua/a9;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lua/i9;


# direct methods
.method public synthetic constructor <init>(Lua/i9;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/a9;->b:I

    iput-object p1, p0, Lua/a9;->c:Lua/i9;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/a9;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    iget-object v0, p0, Lua/a9;->c:Lua/i9;

    .line 8
    .line 9
    iget-object v0, v0, Lua/i9;->h:Lha/u9;

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    iget-object v0, p0, Lua/a9;->c:Lua/i9;

    .line 33
    .line 34
    iget-object v0, v0, Lua/i9;->h:Lha/u9;

    .line 35
    .line 36
    const-string v1, "\u5931\u8d25\uff1a"

    .line 37
    .line 38
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lua/a9;->c:Lua/i9;

    .line 2
    .line 3
    iget v1, p0, Lua/a9;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    instance-of v1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    check-cast p1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v2, v1, v3}, Lua/i9;->u(Ljava/lang/String;IZ)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 23
    .line 24
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 56
    .line 57
    invoke-virtual {v1, v3, p1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectedPosition(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    instance-of v1, p1, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    check-cast p1, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 71
    .line 72
    iget-object v1, v0, Lua/i9;->F:Lx9/c6;

    .line 73
    .line 74
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iput v1, p1, Lcom/yunpan/appmanage/bean/WpTaskBean;->position:I

    .line 79
    .line 80
    iget-object v1, v0, Lua/i9;->F:Lx9/c6;

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lua/i9;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 86
    .line 87
    iget v3, p1, Lcom/yunpan/appmanage/bean/WpTaskBean;->position:I

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectedPosition(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lua/i9;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lua/i9;->B:Landroid/widget/TextView;

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v0, Lua/i9;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 121
    .line 122
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 123
    .line 124
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 125
    .line 126
    new-instance v2, Ly7/b;

    .line 127
    .line 128
    iget-object v0, v0, Lua/i9;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 129
    .line 130
    const/16 v3, 0x14

    .line 131
    .line 132
    invoke-direct {v2, p1, v3, v0}, Ly7/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_0
    return-void

    .line 139
    :pswitch_1
    iget-object v1, v0, Lda/h;->f:Landroid/app/Activity;

    .line 140
    .line 141
    iget-object v2, v0, Lda/h;->e:Landroid/content/Context;

    .line 142
    .line 143
    iget-object v0, v0, Lua/i9;->h:Lha/u9;

    .line 144
    .line 145
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    new-instance v3, Lx9/w3;

    .line 150
    .line 151
    invoke-direct {v3, p1}, Lx9/w3;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v2, v0, v3}, Landroid/support/v4/media/session/b;->s(Landroid/app/Activity;Landroid/content/Context;Lha/u9;Lx9/w3;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/a9;->c:Lua/i9;

    .line 2
    .line 3
    iget v1, p0, Lua/a9;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    return-void

    .line 9
    :pswitch_1
    iget-object v1, v0, Lua/i9;->h:Lha/u9;

    .line 10
    .line 11
    invoke-virtual {v1}, Lha/u9;->a()V

    .line 12
    .line 13
    .line 14
    const-string v1, "\u5df2\u63d0\u4ea4\u5230\u4efb\u52a1\u4e2d\u5fc3"

    .line 15
    .line 16
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lua/i9;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [F

    .line 29
    .line 30
    fill-array-data v2, :array_0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/16 v1, 0x22b

    .line 38
    .line 39
    int-to-long v1, v1

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    int-to-float v2, v2

    .line 47
    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_2
    iget-object v0, v0, Lua/i9;->h:Lha/u9;

    .line 58
    .line 59
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 60
    .line 61
    .line 62
    const-string v0, "\u62f7\u8d1d\u6210\u529f"

    .line 63
    .line 64
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 70
    .line 71
    .line 72
    :array_0
    .array-data 4
        0x0
        0x41a00000    # 20.0f
    .end array-data
.end method
