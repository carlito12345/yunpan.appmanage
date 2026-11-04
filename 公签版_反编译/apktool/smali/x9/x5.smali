.class public final Lx9/x5;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lcom/yunpan/appmanage/bean/WpPathBean;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lx9/y5;


# direct methods
.method public synthetic constructor <init>(Lx9/y5;Landroid/widget/ImageView;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p5, p0, Lx9/x5;->b:I

    iput-object p1, p0, Lx9/x5;->f:Lx9/y5;

    iput-object p2, p0, Lx9/x5;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lx9/x5;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p4, p0, Lx9/x5;->e:Ljava/lang/String;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 5

    .line 1
    iget v0, p0, Lx9/x5;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx9/x5;->c:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lx9/x5;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lx9/x5;->f:Lx9/y5;

    .line 23
    .line 24
    iget-object v1, v1, Lx9/y5;->i:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lx9/x5;->e:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 37
    .line 38
    iget v3, v2, Lcom/yunpan/appmanage/util/w;->f:F

    .line 39
    .line 40
    const/high16 v4, 0x42700000    # 60.0f

    .line 41
    .line 42
    mul-float v3, v3, v4

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget v2, v2, Lcom/yunpan/appmanage/util/w;->f:F

    .line 49
    .line 50
    mul-float v2, v2, v4

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v1, v3, v2}, Lw5/a;->o(II)Lw5/a;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/bumptech/glide/m;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lx9/x5;->c:Landroid/widget/ImageView;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, p0, Lx9/x5;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    iget-object v1, p0, Lx9/x5;->f:Lx9/y5;

    .line 83
    .line 84
    iget-object v1, v1, Lx9/y5;->i:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lx9/x5;->e:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 97
    .line 98
    iget v3, v2, Lcom/yunpan/appmanage/util/w;->f:F

    .line 99
    .line 100
    const/high16 v4, 0x42700000    # 60.0f

    .line 101
    .line 102
    mul-float v3, v3, v4

    .line 103
    .line 104
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    iget v2, v2, Lcom/yunpan/appmanage/util/w;->f:F

    .line 109
    .line 110
    mul-float v2, v2, v4

    .line 111
    .line 112
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {v1, v3, v2}, Lw5/a;->o(II)Lw5/a;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/bumptech/glide/m;

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    return-void

    .line 126
    :pswitch_1
    iget-object v0, p0, Lx9/x5;->c:Landroid/widget/ImageView;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget-object v2, p0, Lx9/x5;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 133
    .line 134
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    iget-object v1, p0, Lx9/x5;->f:Lx9/y5;

    .line 143
    .line 144
    iget-object v1, v1, Lx9/y5;->i:Landroid/content/Context;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v2, p0, Lx9/x5;->e:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 157
    .line 158
    iget v3, v2, Lcom/yunpan/appmanage/util/w;->f:F

    .line 159
    .line 160
    const/high16 v4, 0x42700000    # 60.0f

    .line 161
    .line 162
    mul-float v3, v3, v4

    .line 163
    .line 164
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    iget v2, v2, Lcom/yunpan/appmanage/util/w;->f:F

    .line 169
    .line 170
    mul-float v2, v2, v4

    .line 171
    .line 172
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-virtual {v1, v3, v2}, Lw5/a;->o(II)Lw5/a;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Lcom/bumptech/glide/m;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 183
    .line 184
    .line 185
    :cond_2
    return-void

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
