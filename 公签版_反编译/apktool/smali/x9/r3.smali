.class public final Lx9/r3;
.super Lc6/g;
.source "SourceFile"

# interfaces
.implements Le6/a;


# instance fields
.field public final h:I

.field public final i:Lda/g;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 5
    iput-object p1, p0, Lx9/r3;->i:Lda/g;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lx9/r3;->h:I

    return-void
.end method

.method public constructor <init>(Lda/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx9/r3;->h:I

    .line 3
    iput-object p1, p0, Lx9/r3;->i:Lda/g;

    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    iget p3, p0, Lx9/r3;->h:I

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const p3, 0x7f0e0168

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const p3, 0x7f0e0169

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public final a(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lcom/yunpan/appmanage/db/AppBean;

    .line 4
    .line 5
    iget-object p2, p3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 6
    .line 7
    const v0, 0x7f0b0523

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-boolean p2, p3, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 14
    .line 15
    const v0, 0x7f0b04b6

    .line 16
    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const p2, 0x7f08028b

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-boolean p2, p3, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iget-object p2, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 34
    .line 35
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    const p2, 0x7f0802e0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-boolean p2, p3, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    const p2, 0x7f080275

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/widget/ImageView;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    const p2, 0x7f0b04b5

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/ImageView;

    .line 81
    .line 82
    iget-object p2, p0, Lx9/r3;->i:Lda/g;

    .line 83
    .line 84
    invoke-static {p2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/bumptech/glide/n;

    .line 92
    .line 93
    invoke-direct {v1, p1}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 100
    .line 101
    const-string v1, "com.hozonauto.netahome.mini"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    const p2, 0x7f0802f4

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    iget-object v0, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    const p2, 0x7f08021a

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    iget-object v0, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 132
    .line 133
    const-string v1, "shortcut_"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    const p2, 0x7f08029c

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    invoke-static {p2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    new-instance v0, Ljava/io/File;

    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object p3, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 167
    .line 168
    const-string v2, ".png"

    .line 169
    .line 170
    invoke-static {p3, v2, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    sget-object p3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 182
    .line 183
    sget-object p3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 184
    .line 185
    iget-object p3, p3, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 186
    .line 187
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 192
    .line 193
    .line 194
    :goto_1
    return-void
.end method
