.class public final Lx9/a0;
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
    iput-object p1, p0, Lx9/a0;->h:Lda/g;

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
    const p3, 0x7f0e011f

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
    iget-object p2, p3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const v0, 0x7f0b04b6

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const p2, 0x7f080249

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean p2, p3, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    const p2, 0x7f08028b

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-boolean p2, p3, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    const p2, 0x7f08024a

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-boolean p2, p3, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    const p2, 0x7f080275

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/widget/ImageView;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    const p2, 0x7f0b04b5

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroid/widget/ImageView;

    .line 82
    .line 83
    iget-object p2, p0, Lx9/a0;->h:Lda/g;

    .line 84
    .line 85
    invoke-static {p2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/bumptech/glide/n;

    .line 93
    .line 94
    invoke-direct {v1, p1}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    new-instance v0, Ljava/io/File;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 112
    .line 113
    iget-object v2, v2, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object p3, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 119
    .line 120
    const-string v2, ".png"

    .line 121
    .line 122
    invoke-static {p3, v2, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    sget-object p3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 134
    .line 135
    sget-object p3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 136
    .line 137
    iget-object p3, p3, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 138
    .line 139
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method
