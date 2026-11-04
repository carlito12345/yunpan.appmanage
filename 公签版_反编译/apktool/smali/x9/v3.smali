.class public final Lx9/v3;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx9/v3;->h:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

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
    const p3, 0x7f0e016c

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
    check-cast p3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 4
    .line 5
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->name:Ljava/lang/String;

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
    const p2, 0x7f0b052d

    .line 14
    .line 15
    .line 16
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->content:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    const p2, 0x7f0b04b5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/ImageView;

    .line 29
    .line 30
    iget-object p2, p0, Lx9/v3;->h:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/bumptech/glide/n;

    .line 40
    .line 41
    invoke-direct {v1, p1}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget-boolean v0, p3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 52
    .line 53
    const v1, 0x7f080239

    .line 54
    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "file://"

    .line 61
    .line 62
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object p3, p3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->content:Ljava/lang/String;

    .line 73
    .line 74
    const-string v2, ".png"

    .line 75
    .line 76
    invoke-static {p3, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    :goto_0
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/p;->t(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance p3, Lo5/x;

    .line 90
    .line 91
    const/16 v0, 0x8

    .line 92
    .line 93
    invoke-direct {p3, v0}, Lo5/x;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {p3}, Lw5/e;->z(Lo5/x;)Lw5/e;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    sget-object p3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 105
    .line 106
    sget-object p3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 107
    .line 108
    iget p3, p3, Lcom/yunpan/appmanage/util/k;->R:I

    .line 109
    .line 110
    invoke-virtual {p2, p3, p3}, Lw5/a;->o(II)Lw5/a;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lcom/bumptech/glide/m;

    .line 115
    .line 116
    invoke-virtual {p2, v1}, Lw5/a;->g(I)Lw5/a;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Lcom/bumptech/glide/m;

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
