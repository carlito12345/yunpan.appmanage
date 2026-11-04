.class public final Lx9/g4;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Lda/g;


# direct methods
.method public constructor <init>(Lda/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx9/g4;->h:Lda/g;

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
    const p3, 0x7f0e016f

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
    check-cast p3, Lcom/yunpan/appmanage/bean/PsBean;

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
    iget-object v0, p0, Lx9/g4;->h:Lda/g;

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
    iget-object v1, p3, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/io/File;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v3, p3, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    const-string v4, ".png"

    .line 62
    .line 63
    invoke-static {v3, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 75
    .line 76
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/bumptech/glide/p;->q()Lcom/bumptech/glide/m;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Lo5/x;

    .line 97
    .line 98
    const/16 v2, 0xc

    .line 99
    .line 100
    invoke-direct {v1, v2}, Lo5/x;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Lw5/e;->z(Lo5/x;)Lw5/e;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 112
    .line 113
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 114
    .line 115
    iget v1, v1, Lcom/yunpan/appmanage/util/k;->R:I

    .line 116
    .line 117
    invoke-virtual {v0, v1, v1}, Lw5/a;->o(II)Lw5/a;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/bumptech/glide/m;

    .line 122
    .line 123
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    const p2, 0x7f0b0600

    .line 127
    .line 128
    .line 129
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/PsBean;->user:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    const p2, 0x7f0b0537

    .line 135
    .line 136
    .line 137
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/PsBean;->pid:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    const p2, 0x7f0b0610

    .line 143
    .line 144
    .line 145
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/PsBean;->vsz_str:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    const p2, 0x7f0b055b

    .line 151
    .line 152
    .line 153
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/PsBean;->rss_str:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    const p2, 0x7f0b0523

    .line 159
    .line 160
    .line 161
    iget-object p3, p3, Lcom/yunpan/appmanage/bean/PsBean;->name:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p1, p2, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method
