.class public final Lha/n9;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/j3;

.field public i:Lz7/s;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lda/g;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0077

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b05c2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p1}, Lq4/a;->q(Landroid/content/Context;)Lz7/s;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lha/n9;->i:Lz7/s;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string p1, "\u8bfb\u53d6\u914d\u7f6e\u51fa\u9519"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, v0, Lz7/s;->a:Lb8/n;

    .line 36
    .line 37
    const-string v1, "auto_parking"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lha/n9;->i:Lz7/s;

    .line 46
    .line 47
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const v0, 0x7f0b04f1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 60
    .line 61
    iput-object v0, p0, Lha/n9;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 62
    .line 63
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-direct {v2, p1, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lx9/j3;

    .line 74
    .line 75
    invoke-direct {p1}, Lx9/j3;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lha/n9;->h:Lx9/j3;

    .line 79
    .line 80
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 81
    .line 82
    iget-object v2, p0, Lha/n9;->i:Lz7/s;

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const-string v2, "\u81ea\u52a8\u9a7b\u8f66"

    .line 93
    .line 94
    const-string v3, "\u4f4e\u914d\u8f66\u578b\u6ca1\u6709\u81ea\u52a8\u9a7b\u8f66\u529f\u80fd\uff0c\u53ef\u4ee5\u52fe\u9009\u8fd9\u4e2a\u5373\u53ef\u81ea\u52a8\u9a7b\u8f66\n\uff08\u6ce8\uff1a\u548c\u9ad8\u914d\u8f66\u578b\u4e00\u6837\u9700\u6df1\u8e29\u5239\u8f66\u5373\u53ef\u81ea\u52a8\u9a7b\u8f66\uff09\n\n\u8b66\u544a\uff1a\u7531\u4e8e\u7cfb\u7edf\u91cc\u7535\u5b50\u9a7b\u8f66\u529f\u80fd\u4e0d\u80fd\u5e38\u7528\uff0c\u591a\u7528\u7684\u8bdd\u4f1a\u5bfc\u81f4\u4eea\u8868\u63d0\u793a\u771f\u7a7a\u6cf5\u5f02\u5e38\uff0c\u6240\u4ee5\u4e3a\u4e86\u5b89\u5168\u8d77\u89c1\uff0c\u4e0d\u8981\u4f7f\u7528\u6b64\u529f\u80fd\uff01 \u6b64\u529f\u80fd\u62a5\u5e9f"

    .line 95
    .line 96
    invoke-direct {v0, v2, v3, v1}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lha/n9;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 103
    .line 104
    iget-object v0, p0, Lha/n9;->h:Lx9/j3;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lha/n9;->h:Lx9/j3;

    .line 110
    .line 111
    new-instance v0, Lha/p7;

    .line 112
    .line 113
    const/4 v1, 0x2

    .line 114
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 118
    .line 119
    return-void
.end method
