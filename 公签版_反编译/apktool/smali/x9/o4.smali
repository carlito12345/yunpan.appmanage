.class public final Lx9/o4;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Lcom/yunpan/appmanage/ui/ActivityRotation;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityRotation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx9/o4;->h:Lcom/yunpan/appmanage/ui/ActivityRotation;

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
    const p3, 0x7f0e011e

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
    .locals 5

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lcom/yunpan/appmanage/bean/RotationBean;

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
    iget-object v0, p0, Lx9/o4;->h:Lcom/yunpan/appmanage/ui/ActivityRotation;

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
    new-instance v1, Ljava/io/File;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v3, p3, Lcom/yunpan/appmanage/bean/RotationBean;->pack:Ljava/lang/String;

    .line 50
    .line 51
    const-string v4, ".png"

    .line 52
    .line 53
    invoke-static {v3, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 65
    .line 66
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 67
    .line 68
    iget-object v2, v1, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 75
    .line 76
    .line 77
    const p2, 0x7f0b0523

    .line 78
    .line 79
    .line 80
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/RotationBean;->name:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    const p2, 0x7f0b04b7

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Landroid/widget/ImageView;

    .line 93
    .line 94
    const v0, 0x7f0b057b

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/TextView;

    .line 102
    .line 103
    iget p3, p3, Lcom/yunpan/appmanage/bean/RotationBean;->mode:I

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    const/4 v2, 0x0

    .line 107
    if-ne p3, v0, :cond_0

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object p3, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 113
    .line 114
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    const v0, 0x7f06004b

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    const-string p3, "\u6a2a\u5c4f"

    .line 129
    .line 130
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    const p1, 0x7f080278

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    const/4 v0, 0x2

    .line 144
    if-ne p3, v0, :cond_1

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    iget-object p3, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 150
    .line 151
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    const v0, 0x7f060042

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 159
    .line 160
    .line 161
    move-result p3

    .line 162
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .line 164
    .line 165
    const-string p3, "\u7ad6\u5c4f"

    .line 166
    .line 167
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    const p1, 0x7f0802e4

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_1
    const/16 p3, 0x8

    .line 181
    .line 182
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    :goto_0
    return-void
.end method
