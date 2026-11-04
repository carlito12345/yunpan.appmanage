.class public final Lx9/q3;
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
    iput-object p1, p0, Lx9/q3;->h:Landroid/content/Context;

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
    const p3, 0x7f0e0120

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
    const p2, 0x7f0b04b5

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/ImageView;

    .line 21
    .line 22
    iget-object p2, p0, Lx9/q3;->h:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/bumptech/glide/n;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "shortcut_"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const p2, 0x7f08029c

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    new-instance v0, Ljava/io/File;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object p3, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 75
    .line 76
    const-string v2, ".png"

    .line 77
    .line 78
    invoke-static {p3, v2, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    sget-object p3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 90
    .line 91
    sget-object p3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 92
    .line 93
    iget-object p3, p3, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 94
    .line 95
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method
