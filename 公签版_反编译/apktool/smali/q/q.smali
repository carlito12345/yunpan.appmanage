.class public final Lq/q;
.super Lcom/bumptech/glide/d;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lq/q;->e:I

    iput-object p2, p0, Lq/q;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bumptech/glide/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget v0, p0, Lq/q;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lq/q;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lq/a0;

    .line 10
    .line 11
    iget-object v1, v0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v1, v1, Landroid/view/View;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/View;

    .line 34
    .line 35
    invoke-static {v0}, Lx0/b1;->v(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_1
    iget-object v0, p0, Lq/q;->f:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lq/o;

    .line 42
    .line 43
    iget-object v0, v0, Lq/o;->b:Lq/a0;

    .line 44
    .line 45
    iget-object v0, v0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lq/q;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq/q;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lkf/d;

    .line 9
    .line 10
    iget-object v1, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lq/a0;

    .line 13
    .line 14
    iget-object v1, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lq/a0;

    .line 24
    .line 25
    iget-object v1, v0, Lq/a0;->y:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, v0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    instance-of v1, v1, Landroid/view/View;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, v0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/view/View;

    .line 50
    .line 51
    invoke-static {v1}, Lx0/b1;->v(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    iget-object v1, v0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lq/a0;->A:Lx0/l1;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, v2}, Lx0/l1;->d(Lx0/m1;)V

    .line 63
    .line 64
    .line 65
    iput-object v2, v0, Lq/a0;->A:Lx0/l1;

    .line 66
    .line 67
    iget-object v0, v0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 68
    .line 69
    invoke-static {v0}, Lx0/b1;->v(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lq/q;->f:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lq/a0;

    .line 76
    .line 77
    iget-object v1, v0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 78
    .line 79
    const/high16 v2, 0x3f800000    # 1.0f

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lq/a0;->A:Lx0/l1;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-virtual {v1, v2}, Lx0/l1;->d(Lx0/m1;)V

    .line 88
    .line 89
    .line 90
    iput-object v2, v0, Lq/a0;->A:Lx0/l1;

    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_1
    iget-object v0, p0, Lq/q;->f:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lq/o;

    .line 96
    .line 97
    iget-object v1, v0, Lq/o;->b:Lq/a0;

    .line 98
    .line 99
    iget-object v1, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 100
    .line 101
    const/high16 v2, 0x3f800000    # 1.0f

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 104
    .line 105
    .line 106
    iget-object v0, v0, Lq/o;->b:Lq/a0;

    .line 107
    .line 108
    iget-object v1, v0, Lq/a0;->A:Lx0/l1;

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-virtual {v1, v2}, Lx0/l1;->d(Lx0/m1;)V

    .line 112
    .line 113
    .line 114
    iput-object v2, v0, Lq/a0;->A:Lx0/l1;

    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
