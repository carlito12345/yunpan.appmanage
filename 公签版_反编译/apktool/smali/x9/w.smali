.class public final Lx9/w;
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
    iput-object p1, p0, Lx9/w;->h:Landroid/content/Context;

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
    const p3, 0x7f0e0129

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
    check-cast p3, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const p2, 0x7f0b04b5

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroid/widget/ImageView;

    .line 16
    .line 17
    iget-object v0, p0, Lx9/w;->h:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/bumptech/glide/n;

    .line 27
    .line 28
    invoke-direct {v2, p2}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/File;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v3, p3, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    const-string v4, ".png"

    .line 55
    .line 56
    invoke-static {v3, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 68
    .line 69
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 78
    .line 79
    .line 80
    const p2, 0x7f0b0523

    .line 81
    .line 82
    .line 83
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;->name:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;->className:Ljava/lang/String;

    .line 89
    .line 90
    const-string v0, "."

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    const/4 v0, -0x1

    .line 97
    if-eq p2, v0, :cond_1

    .line 98
    .line 99
    iget-object p3, p3, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;->className:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;->className:Ljava/lang/String;

    .line 107
    .line 108
    :goto_0
    const p3, 0x7f0b0408

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p3, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void
.end method
