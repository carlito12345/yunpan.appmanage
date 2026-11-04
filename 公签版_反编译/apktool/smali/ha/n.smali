.class public final synthetic Lha/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/n;->a:I

    iput-object p2, p0, Lha/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lha/n;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget v3, p0, Lha/n;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage2;->M0:I

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :pswitch_0
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityImage;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void

    .line 42
    :pswitch_1
    check-cast v2, Lq7/l;

    .line 43
    .line 44
    iput-boolean p2, v2, Lq7/l;->l:Z

    .line 45
    .line 46
    invoke-virtual {v2}, Lq7/q;->q()V

    .line 47
    .line 48
    .line 49
    if-nez p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lq7/l;->t(Z)V

    .line 52
    .line 53
    .line 54
    iput-boolean v1, v2, Lq7/l;->m:Z

    .line 55
    .line 56
    :cond_2
    return-void

    .line 57
    :pswitch_2
    check-cast v2, Lq7/c;

    .line 58
    .line 59
    invoke-virtual {v2}, Lq7/c;->u()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {v2, p1}, Lq7/c;->t(Z)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_3
    check-cast v2, Lha/e6;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    if-eqz p2, :cond_5

    .line 73
    .line 74
    new-array p2, v0, [I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v2, Lha/e6;->j:Landroidx/core/widget/NestedScrollView;

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/4 v4, 0x1

    .line 90
    aget p2, p2, v4

    .line 91
    .line 92
    div-int/lit8 v4, v3, 0x2

    .line 93
    .line 94
    div-int/2addr p1, v0

    .line 95
    sub-int/2addr v4, p1

    .line 96
    sub-int/2addr p2, v4

    .line 97
    iget-object p1, v2, Lha/e6;->j:Landroidx/core/widget/NestedScrollView;

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-gez p2, :cond_3

    .line 108
    .line 109
    const/4 p2, 0x0

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    sub-int/2addr p1, v3

    .line 112
    if-le p2, p1, :cond_4

    .line 113
    .line 114
    move p2, p1

    .line 115
    :cond_4
    :goto_2
    iget-object p1, v2, Lha/e6;->j:Landroidx/core/widget/NestedScrollView;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    rsub-int/lit8 v0, v0, 0x0

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    sub-int/2addr p2, v2

    .line 128
    const/16 v2, 0x1f4

    .line 129
    .line 130
    invoke-virtual {p1, v0, p2, v2, v1}, Landroidx/core/widget/NestedScrollView;->v(IIIZ)V

    .line 131
    .line 132
    .line 133
    :cond_5
    return-void

    .line 134
    :pswitch_4
    check-cast v2, Lha/p;

    .line 135
    .line 136
    iget-object p1, v2, Lha/p;->t:Landroid/widget/LinearLayout;

    .line 137
    .line 138
    if-eqz p2, :cond_6

    .line 139
    .line 140
    iget-object p2, v2, Lha/p;->j:Lx9/i4;

    .line 141
    .line 142
    invoke-virtual {p2}, Lx9/i4;->F()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-nez p2, :cond_6

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    const/16 v1, 0x8

    .line 150
    .line 151
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
