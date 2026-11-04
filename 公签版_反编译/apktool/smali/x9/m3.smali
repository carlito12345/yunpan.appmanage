.class public final Lx9/m3;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx9/m3;->h:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e011a

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;

    .line 4
    .line 5
    const p2, 0x7f0b04b5

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Landroid/widget/ImageView;

    .line 13
    .line 14
    iget-object v0, p0, Lx9/m3;->h:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/bumptech/glide/n;

    .line 24
    .line 25
    invoke-direct {v2, p2}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "file://"

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->packName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ".png"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lo5/x;

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    invoke-direct {v1, v2}, Lo5/x;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lw5/e;->z(Lo5/x;)Lw5/e;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 83
    .line 84
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 85
    .line 86
    iget v1, v1, Lcom/yunpan/appmanage/util/k;->R:I

    .line 87
    .line 88
    invoke-virtual {v0, v1, v1}, Lw5/a;->o(II)Lw5/a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/bumptech/glide/m;

    .line 93
    .line 94
    const v1, 0x7f080239

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lw5/a;->g(I)Lw5/a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/bumptech/glide/m;

    .line 102
    .line 103
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 104
    .line 105
    .line 106
    const p2, 0x7f0b0523

    .line 107
    .line 108
    .line 109
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->name:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    const p2, 0x7f0b0406

    .line 115
    .line 116
    .line 117
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->className:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    const p2, 0x7f0b0417

    .line 123
    .line 124
    .line 125
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->des:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    const p2, 0x7f0b057b

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    check-cast p2, Landroid/widget/TextView;

    .line 138
    .line 139
    iget-boolean p3, p3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 140
    .line 141
    const v0, 0x7f0b0334

    .line 142
    .line 143
    .line 144
    if-eqz p3, :cond_0

    .line 145
    .line 146
    const-string p3, "\u5df2\u7981\u7528"

    .line 147
    .line 148
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    sget-object p3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 152
    .line 153
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    const v1, 0x7f060042

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    .line 166
    .line 167
    const-string p2, "\u89e3\u7981"

    .line 168
    .line 169
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_0
    const-string p3, "\u6b63\u5e38"

    .line 174
    .line 175
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    sget-object p3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 179
    .line 180
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    const v1, 0x7f060041

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 188
    .line 189
    .line 190
    move-result p3

    .line 191
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    .line 193
    .line 194
    const-string p2, "\u7981\u7528"

    .line 195
    .line 196
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    :goto_0
    return-void
.end method
