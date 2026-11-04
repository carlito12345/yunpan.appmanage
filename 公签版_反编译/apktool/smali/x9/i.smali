.class public final Lx9/i;
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
    iput-object p1, p0, Lx9/i;->h:Lda/g;

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
    const p3, 0x7f0e0121

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
    check-cast p3, Lcom/yunpan/appmanage/bean/AppAttribBean;

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
    iget-object v0, p0, Lx9/i;->h:Lda/g;

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
    iget-object v3, p3, Lcom/yunpan/appmanage/bean/AppAttribBean;->packageName:Ljava/lang/String;

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
    const p2, 0x7f0b0523

    .line 78
    .line 79
    .line 80
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/AppAttribBean;->name:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    const p2, 0x7f0b052e

    .line 86
    .line 87
    .line 88
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/AppAttribBean;->packageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v0, "v"

    .line 96
    .line 97
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/AppAttribBean;->versionName:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    const v0, 0x7f0b0608

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    const p2, 0x7f0b04c3

    .line 116
    .line 117
    .line 118
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/AppAttribBean;->installTime_str:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    const p2, 0x7f0b05fe

    .line 124
    .line 125
    .line 126
    iget-object p3, p3, Lcom/yunpan/appmanage/bean/AppAttribBean;->updateTime_str:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, p2, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
