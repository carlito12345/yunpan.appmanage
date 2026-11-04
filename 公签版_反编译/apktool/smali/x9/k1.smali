.class public final Lx9/k1;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Lcom/yunpan/appmanage/ui/ActivityDesktop;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDesktop;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx9/k1;->h:Lcom/yunpan/appmanage/ui/ActivityDesktop;

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
    const p3, 0x7f0e0140

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
    check-cast p3, Lcom/yunpan/appmanage/bean/DesktopBean;

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
    iget-object v0, p0, Lx9/k1;->h:Lcom/yunpan/appmanage/ui/ActivityDesktop;

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
    iget-object v3, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

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
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 75
    .line 76
    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->name:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-boolean v0, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->isSystemApp:Z

    .line 88
    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 92
    .line 93
    const-string v1, "launcher"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    const-string v0, "  (\u7cfb\u7edf\u684c\u9762)"

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const-string v0, ""

    .line 105
    .line 106
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    const v0, 0x7f0b0523

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-boolean p2, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->isUninstall:Z

    .line 120
    .line 121
    const-string v0, "\u6062\u590d"

    .line 122
    .line 123
    const v1, 0x7f0b057b

    .line 124
    .line 125
    .line 126
    const v2, 0x7f0b058f

    .line 127
    .line 128
    .line 129
    if-eqz p2, :cond_1

    .line 130
    .line 131
    const-string p2, "\u5df2\u5378\u8f7d"

    .line 132
    .line 133
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    iget-boolean p2, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->isDisable:Z

    .line 141
    .line 142
    if-eqz p2, :cond_2

    .line 143
    .line 144
    const-string p2, "\u5df2\u7981\u7528"

    .line 145
    .line 146
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_2
    iget-boolean p2, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->isHide:Z

    .line 154
    .line 155
    if-eqz p2, :cond_3

    .line 156
    .line 157
    const-string p2, "\u5df2\u9690\u85cf"

    .line 158
    .line 159
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    iget-boolean p2, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->isDefaultDesktop:Z

    .line 167
    .line 168
    const-string p3, "\u7981\u7528"

    .line 169
    .line 170
    if-eqz p2, :cond_4

    .line 171
    .line 172
    const-string p2, "\u5f53\u524d\u9ed8\u8ba4\u684c\u9762"

    .line 173
    .line 174
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v1, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    const-string p2, "\u6b63\u5e38"

    .line 182
    .line 183
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    :goto_1
    return-void
.end method
