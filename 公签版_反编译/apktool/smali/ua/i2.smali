.class public final synthetic Lua/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityImage2;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/i2;->a:I

    iput-object p1, p0, Lua/i2;->b:Lcom/yunpan/appmanage/ui/ActivityImage2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    const-string v0, "s"

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lua/i2;->b:Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 8
    .line 9
    iget v4, p0, Lua/i2;->a:I

    .line 10
    .line 11
    packed-switch v4, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage2;->M0:I

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 20
    .line 21
    iget v2, p1, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 22
    .line 23
    add-int/2addr v2, v1

    .line 24
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->T:Landroid/widget/TextView;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lcom/yunpan/appmanage/util/w;->x(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage2;->M0:I

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 54
    .line 55
    iget v1, p1, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 56
    .line 57
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    if-gez v1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v2, v1

    .line 63
    :goto_0
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->T:Landroid/widget/TextView;

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v2}, Lcom/yunpan/appmanage/util/w;->x(I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_1
    iget v0, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->Y:F

    .line 88
    .line 89
    const/high16 v4, 0x42b40000    # 90.0f

    .line 90
    .line 91
    add-float/2addr v0, v4

    .line 92
    iput v0, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->Y:F

    .line 93
    .line 94
    const/high16 v4, 0x43b40000    # 360.0f

    .line 95
    .line 96
    cmpl-float v0, v0, v4

    .line 97
    .line 98
    if-ltz v0, :cond_1

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    iput v0, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->Y:F

    .line 102
    .line 103
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->M:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->X:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v3, p1}, Lcom/yunpan/appmanage/ui/ActivityImage2;->z(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    new-instance p1, Lua/k2;

    .line 115
    .line 116
    invoke-direct {p1, v3, v1}, Lua/k2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 117
    .line 118
    .line 119
    new-instance v0, Lmc/c;

    .line 120
    .line 121
    invoke-direct {v0, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance v0, Lua/l2;

    .line 139
    .line 140
    invoke-direct {v0, v3, v1}, Lua/l2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 144
    .line 145
    .line 146
    :goto_1
    return-void

    .line 147
    :pswitch_2
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_2

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_2
    const/4 p1, 0x0

    .line 157
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_3
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_3

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/yunpan/appmanage/ui/ActivityImage2;->x()V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_3
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 174
    .line 175
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityImage2;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 179
    .line 180
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    :goto_3
    return-void

    .line 184
    :pswitch_4
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage2;->M0:I

    .line 185
    .line 186
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
